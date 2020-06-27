# 1. Сделать хеш, содеращий месяцы и количество дней в месяце.
# В цикле выводить те месяцы, у которых количество дней ровно 30
require 'Date'

month_days_hash = {}
Date::MONTHNAMES.compact.each.with_index(1) do |month, index|
  month_days_hash[month] = Date.new(Time.now.year, index, -1).day
end

month_days_hash.each { |month, days| puts month if days == 30 }
