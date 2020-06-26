# 1. Сделать хеш, содеращий месяцы и количество дней в месяце.
# В цикле выводить те месяцы, у которых количество дней ровно 30
require 'Date'

month_days_hash = {}
(1..12).each do |month_number| 
	month_name = Date::MONTHNAMES[month_number]
	month_days = Date.new(2020, month_number, -1).day
  month_days_hash[month_name] = month_days
end

month_days_hash.each{ |month, days| puts month if days == 30 }
