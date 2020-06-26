# 3. Заполнить массив числами фибоначчи до 100

arr = []

(1..100).each do |num|
 arr.push(1) && next if num < 3
 fibonacci_num = (num - 1) + (num - 2)
 break if fibonacci_num >= 100
 arr.push(fibonacci_num)
end

puts arr