# 5. Заданы три числа,
# день, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года.
# Учесть, что год может быть високосным.
# (Запрещено использовать встроенные в ruby методы для этого вроде Date#yday или Date#leap?)
COMMON_YEAR_DAYS_IN_MONTH = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31].freeze

def days_in_month(month, is_a_leap_year)
  return 29 if month == 2 && is_a_leap_year
  COMMON_YEAR_DAYS_IN_MONTH[month]
end

print "Enter day: "
day = gets.chomp.to_i
print "Enter month: "
month = gets.chomp.to_i
print "Enter year: "
year = gets.chomp.to_i

is_a_leap_year = year % 400 == 0 || year % 4 == 0 && year % 100 != 0

result_index = 0
(month - 1)&.times do |month|
  month_days = days_in_month(month + 1, is_a_leap_year)
  result_index += month_days
end
result_index += day


puts result_index