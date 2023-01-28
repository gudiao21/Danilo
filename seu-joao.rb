require 'byebug'
puts "Qual é o valor total do pedido: "
purchase = gets.to_f
puts "Qual o valor da porcentagem de desconto: "
perc = gets.to_f
discount = purchase * perc
result = purchase - discount
puts result