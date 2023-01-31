#Seu joão é um comerciante e ele precisa de um software que faça o cálculo da porcentagem de desconto que ele dará para os seus clientes no valor total da compra, faça um software que solicite o valor total do pedido, solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado.
# Mudar o sitema para que ele pergunte qual o produto que o cliente pegou e o valor total deste produto.
#Solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado.
# Se o valor total descontado der inferior a R$ 10,00 oferecer um item a mais no pedido.
#Perguntar o nome deste item e o valor deste item.
#O desconto de x% será dado no valor total com os itens.
#Esse código inclui o conceito de "cross selling".


system 'clear'

puts "Fala, seu João! Tudo bem com o senhor ?"
puts "Digitar o nome do primeiro produto comprado: "
product_name = gets.chomp.to_s.strip
#Digitar o valor do produto:
puts "Digitar o valor (em Reais) do primeiro produto comprado: "
product_value = gets.chomp.to_f
#Pedir a porcentage de desconto:
puts "Digite a porcentagem de desconto de apenas o(s)/a(s) (#{product_name}): "
discount_percentage = gets.to_f
puts "Olá cliente, você gostaria de incluir um item a mais no seu pedido? Se fizer isso, você ganhará um desconto na compra dos dois produtos!"
customer_decision = gets
vai_adicionar_produto_a_mais = customer_decision.to_s.upcase.strip == "S"

=begin discount_value = product_value * (discount_percentage/100)
value_with_discount = (product_value - discount_value)
chosen_product_value = 0 
if chosen_product_value.nil? #Se a variável = nil, então zera a mesma.
  chosen_product_value = 0
end  

#verificar se o valor é inferior a R$ 10,00, se sim, rodar a regra de acrescentar um novo produto:
if value_with_discount < 10
  puts "Olá cliente, você gostaria de incluir um item a mais no seu pedido? (S/N)"
  customer_decision = gets #variáveis não têm acentos nem espaços.
  if customer_decision.to_s.upcase.strip == "S"
    puts "Qual o nome do produto extra sugerido? "
    chosen_product_name = gets.chomp.to_s.strip
    puts "Qual o valor do produto escolhido: "
    chosen_product_value = gets.chomp.to_f
    #total_products_value = value_with_discount + chosen_product_value
    puts "============================="
   
    #total_discount_percentage = gets.chomp.to_f
    #total_discount_value = total_products_value * total_discount_percentage/100
    #total_value_with_discount =  total_products_value - total_discount_value
    #ncrease_in_value = chosen_product_value
  end
end


#pedir a porcentagem de desconto:
#puts "Qual o valor da porcentagem de desconto: "
#discount_percentage = gets.to_f

#discount_value = total_value * discount_percentage/100
#total_value_with_discount = total_value - discount_value
#increase_in_value = 0

#if total_value_with_discount < 10
  #puts"Olá cliente, você gostaria de incluir mais esse novo ítem? (S/N)"
  #customer_decision = gets #variáveis não tem acentos nem espaços.
  #if customer_decision.to_s.upcase.strip == "S"
    #increase_in_value = 15
  #end
#end

value_with_discount += chosen_product_value
puts "==================================="
system 'clear'

#Mostrar um resumo detalhado de tudo que aconteceu aqui, com nomes e valores de produtos:
#puts "Seu João, o valor total digitado foi: #{sprintf("R$%.2f",total_value)}" #configuração para formato dinheiro, com 2 casas após a vírgula.
puts "#{product_name} é o nome do primeiro produto escolhido que foi comprado."
puts "=============================="
puts "O valor da compra do primeiro produto foi de : #{sprintf("R$%.2f", product_value)}"
puts "=================================="
puts "O valor (em Reais) do desconto da compra do 1º produto foi: R$#{'%.2f' % discount_value}" #Formato dinheiro.sud
#puts "A porcentagem de desconto da primeira conmpra foi de #{}"
if chosen_product_value > 0
  puts "=============================="
  puts "#{chosen_product_name} é o nome do produto incluso."
  puts "=============================="
  puts "O item a mais incluído tem o valor de: #{sprintf("R$%.2f", chosen_product_value)}"
end
#puts "A porcentagem de desconto (em Reais) dos 2 produtos adquiridos foi de: #{sprintf("R$%.2f", total_products_value)}"
puts "================================"
puts "O valor total do primeiro produto com desconto, mais a compra integral do segundo foi de: #{value_with_discount}"
puts "============================="
#puts "Valor total a ser cobrado é de: R$#{'%.2f' % total_value_with_discount}"
#puts "================================"