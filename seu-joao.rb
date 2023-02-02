#Seu joão é um comerciante e ele precisa de um software que faça o cálculo da porcentagem de desconto que ele dará para os seus clientes no valor total da compra, faça um software que solicite o valor total do pedido, solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado.
# Mudar o sitema para que ele pergunte qual o produto que o cliente pegou e o valor total deste produto.
#Solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado.
# Se o valor total descontado der inferior a R$ 10,00 oferecer um item a mais no pedido.
#Perguntar o nome deste item e o valor deste item.
#O desconto de x% será dado no valor total com os itens.
#Esse código inclui o conceito de "cross selling".
require 'byebug'

system 'clear'

puts "Digite o nome do seu cliente: "
customer_name = gets.to_s.strip

puts "Digitar o nome do primeiro produto comprado: "
product1_name = gets.chomp.to_s.strip

puts "Digitar o valor (em Reais) do primeiro produto comprado: "
product1_value = gets.chomp.to_f

system 'clear'

puts "Olá #{customer_name}, você gostaria de incluir um item a mais no seu pedido? Se fizer isso, você ganhará um desconto no valor total! (S/N)"
vai_adicionar_produto_a_mais = gets.to_s.upcase.strip == "S"

valor_total = product1_value

porcentagem_desconto = 0
if vai_adicionar_produto_a_mais
  puts "Entendi, (#{customer_name})! Qual o nome do novo produto que você deseja incluir ?"
  product2_name = gets.to_s.strip
  
  puts "Digite o valor do (#{product2_name}):"
  product2_value = gets.to_f

  puts "Perfeito, (#{customer_name}), por você ter adicionado um produto a mais,terás 1% de desconto!"
  porcentagem_desconto += 1

  valor_total += product2_value
end

puts "Olá, #{customer_name}! Já temos #{porcentagem_desconto}% de desconto, você deseja acrescentar mais desconto?\nColoque o valor do desconto ou digite zero para não ter mais desconto."
porcentagem_desconto += gets.to_f
debugger

#valor_total = (product1_value + product2_value)
valor_do_desconto = valor_total * porcentagem_desconto / 100
valor_total_descontado = valor_total - valor_do_desconto

system 'clear'

puts "Opa, Seu (#{customer_name}), o pedido deu: "
puts "O valor do desconto foi: "
puts "Itens: "
puts "=========================="
puts " - #{product1_name}: #{sprintf("R$%.2f", product1_value)}"
puts "==========================="
if vai_adicionar_produto_a_mais
  puts " - #{product2_name}: #{sprintf("R$%.2f", product2_value)}"
end

puts "=========================="
puts "A porcentagem de desconto total foi de: #{porcentagem_desconto}%"
puts "=========================="
puts "O valor (em Reais) do desconto foi: #{sprintf("R$%.2f", valor_do_desconto)}"
puts "=========================="
puts "Valor total (em Reais) do pedido com desconto: #{sprintf("R$%.2f", valor_total_descontado)}"