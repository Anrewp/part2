# 2. Заполнить массив числами от 10 до 100 с шагом 5

arr = []
start, finish = 10, 100
step = 5

while start <= finish do
  arr.push(start)
  start += step
end

puts arr