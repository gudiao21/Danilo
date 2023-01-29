#Seu joão é um comerciante e ele precisa de um software que faça o cálculo da porcentagem de desconto que ele dará para os seus clientes no valor total da compra, faça um software que solicite o valor total do pedido, solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado.
# Se o valor total descontado der inferior a R$ 10,00 oferecer um ítem a mais no pedido.

system 'clear'
puts "Fala, seu João! Tudo bem com o senhor?"
puts "Qual é o valor total do pedido: "
purchase = gets.chomp.to_f
puts "Qual o valor da porcentagem de desconto: "
perc = gets.to_f
discount_value = purchase * perc/100
result = purchase - discount_value
puts "Seu João, o valor total digitado foi: #{sprintf("R$%.2f",purchase)}" #configuração para formato dinheiro, com 2 casas após a vírgula.
puts "O valor do desconto foi R$#{'%.2f' % discount_value}" #Formato dinheiro.
puts "Valor total a ser cobrado é de: R$#{'%.2f' % result}"
puts "=============================="

if discount_value < 10
  puts"Olá cliente, você gostaria de incluir mais esse novo ítem? (S/N)"
  decisao_do_cliente = gets #variáveis não tem acentos nem espaços.

