#Seu joão é um comerciante e ele precisa de um software que faça o cálculo da porcentagem de desconto que ele dará para os seus clientes no valor total da compra, faça um software que solicite o valor total do pedido, solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado.
# Mudar o sitema para que ele pergunte qual o produto que o cliente pegou e o valor total deste produto.
#Solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado.
# Se o valor total descontado der inferior a R$ 10,00 oferecer um item a mais no pedido.
#Perguntar o nome deste item e o valor deste item.
#O desconto de x% será dado no valor total com os itens.

system 'clear'

puts "Fala, seu João! Tudo bem com o senhor ?"
puts "Qual é o valor total do pedido: "
total_value = gets.chomp.to_f
puts "Digitar o nome do produto: "
product_name = gets.chomp
puts "Digitar o valor do produto: "
product_value = gets.chomp
#verificar se o valor é inferior a R$ 10,00, se sim, rodar a regra de acrescentar um novo produto.

#pedir a porcentagem de desconto.
puts "Qual o valor da porcentagem de desconto: "
discount_percentage = gets.to_f

discount_value = total_value * discount_percentage/100
total_value_with_discount = total_value - discount_value
increase_in_value = 0

if total_value_with_discount < 10
  puts"Olá cliente, você gostaria de incluir mais esse novo ítem? (S/N)"
  customer_decision = gets #variáveis não tem acentos nem espaços.
  if customer_decision.to_s.upcase.strip == "S"
    increase_in_value = 15
  end
end

total_value_with_discount += increase_in_value

#Mostrar um resumo detalhado de tudo que aconteceu aqui, com nomes e valores de produtos.

puts "Seu João, o valor total digitado foi: #{sprintf("R$%.2f",total_value)}" #configuração para formato dinheiro, com 2 casas após a vírgula.
puts "O valor do desconto foi R$#{'%.2f' % discount_value}" #Formato dinheiro.
if increase_in_value > 0
  puts "=============================="
  puts "O item a mais incluído tem o valor de #{sprintf("R$%.2f", increase_in_value)}"
end
puts "================================"
puts "A porcentagem de desconto foi de #{sprintf("R$%.2f", discount_percentage)}"
puts "================================"
puts "Valor total a ser cobrado é de: R$#{'%.2f' % total_value_with_discount}"
puts "================================"

