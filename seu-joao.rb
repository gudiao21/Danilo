puts "Qual é o valor total do pedido: "
purchase = gets.to_f
puts "Qual o valor da pecentagem de desconto: "
discount = gets.to_i
purchase -= purchase*discount
puts purchase