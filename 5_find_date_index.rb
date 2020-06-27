# 5. Заданы три числа,
# день, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года.
# Учесть, что год может быть високосным.
# (Запрещено использовать встроенные в ruby методы для этого вроде Date#yday или Date#leap?)

print "Enter day: "
day = gets.chomp.to_i
print "Enter month: "
month = gets.chomp.to_i
print "Enter year: "
year = gets.chomp.to_i

is_a_leap_year = year % 400 == 0 || year % 4 == 0 && year % 100 != 0
leap_day = is_a_leap_year ? 29 : 28

days_in_month = [nil, 31, leap_day, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

puts days_in_month[1..month - 1].sum + day

