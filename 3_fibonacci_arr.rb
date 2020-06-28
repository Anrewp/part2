# 3. Заполнить массив числами фибоначчи до 100

arr = [1, 1]

loop do
  fibonacci_num = arr[- 1] + arr[- 2]
  break if fibonacci_num >= 100
  arr.push(fibonacci_num)
end

puts arr
