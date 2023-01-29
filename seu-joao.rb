#Seu joão é um comerciante e ele precisa de um software que faça o cálculo da porcentagem de desconto que ele dará para os seus clientes no valor total da compra, faça um software que solicite o valor total do pedido, solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado.
# Mudar o sitema para que ele pergunte qual o produto que o cliente pegou e o valor total deste produto.
#Solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado.
# Se o valor total descontado der inferior a R$ 10,00 oferecer um item a mais no pedido.
#Perguntar o nome deste item e o valor deste item.
#O desconto de x% será dado no valor total com os itens.

system 'clear'

puts "Fala, seu João! Tudo bem com o senhor?"
puts "Qual é o valor total do pedido: "
total_value = gets.chomp.to_f
#Digitar o nome do produto e o valor do produto.
#verificar se o valor é inferior a R$ 10,00, se sim rodar a regra de acrescentar um novo produto
#pedir a porcentagem de desconto.

puts "Qual o valor da porcentagem de desconto: "
discount_percentage = gets.to_f

discount_value = total_value * discount_percentage/100
result = total_value - discount_value
puts "Seu João, o valor total digitado foi: #{sprintf("R$%.2f",total_value)}" #configuração para formato dinheiro, com 2 casas após a vírgula.
puts "O valor do desconto foi R$#{'%.2f' % discount_value}" #Formato dinheiro.
puts "Valor total a ser cobrado é de: R$#{'%.2f' % result}"
puts "=============================="

if discount_value < 10
  puts"Olá cliente, você gostaria de incluir mais esse novo ítem? (S/N)"
  decisao_do_cliente = gets #variáveis não tem acentos nem espaços.

  #Mostrar um resumo detalhado de tudo que aconteceu aqui, com nomes e valores de produtos.

