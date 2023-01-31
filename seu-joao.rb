#Seu joão é um comerciante e ele precisa de um software que faça o cálculo da porcentagem de desconto que ele dará para os seus clientes no valor total da compra, faça um software que solicite o valor total do pedido, solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado.
# Mudar o sitema para que ele pergunte qual o produto que o cliente pegou e o valor total deste produto.
#Solicite o valor da porcentagem e logo após mostre o valor com desconto e o valor descontado.
# Se o valor total descontado der inferior a R$ 10,00 oferecer um item a mais no pedido.
#Perguntar o nome deste item e o valor deste item.
#O desconto de x% será dado no valor total com os itens.
#Esse código inclui o conceito de "cross selling".


system 'clear'

puts "Digite o nome do seu cliente: "
customer_name = gets.to_s.strip

puts "Digitar o nome do primeiro produto comprado: "
product1_name = gets.chomp.to_s.strip

puts "Digitar o valor (em Reais) do primeiro produto comprado: "
product_value = gets.chomp.to_f

system 'clear'

puts "Olá #{customer_name}, você gostaria de incluir um item a mais no seu pedido? Se fizer isso, você ganhará um desconto no valor total! (S/N)"
vai_adicionar_produto_a_mais = gets.to_s.upcase.strip == "S"

if vai_adicionar_produto_a_mais
  puts "Entendi, (#{customer_name})! Qual o nome do novo produto que você deseja incluir ?"
  product2_name = gets.to_s.strip
  puts "Digite o valor do produto (#{product2_name})"

end
