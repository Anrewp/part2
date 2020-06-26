# 6. Сумма покупок.
 # Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара (может быть нецелым числом).
 # Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп"
 # в качестве названия товара. 

 # На основе введенных данных требуетеся:
#   Заполнить и вывести на экран хеш, ключами которого являются названия товаров,
#   а значением - вложенный хеш, содержащий цену за единицу товара и кол-во купленного товара.
#   Также вывести итоговую сумму за каждый товар.
#   Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".

products_hash = {}
loop do
  print "Enter product name or stop: "
  product_name = gets.chomp
  break if product_name['stop']
  print "Enter price per unit: "
  product_price = gets.chomp.to_f
  print "Enter product amount: "
  product_amount = gets.chomp.to_i

  products_hash[product_name] = { price: product_price, amount: product_amount }
end

sum_for_all_products = 0
puts products_hash
products_hash.each do |p_name, p_info|
  product_sum = (p_info[:price] * p_info[:amount]).round(2)
  puts "Sum for all #{p_name} products is: #{ product_sum }"
  sum_for_all_products += product_sum
end
puts "Sum for all proucts is: #{sum_for_all_products.round(2)}"
