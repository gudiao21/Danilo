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
product1_value = gets.chomp.to_f.strip

system 'clear'

puts "Olá #{customer_name}, você gostaria de incluir um item a mais no seu pedido? Se fizer isso, você ganhará um desconto no valor total! (S/N)"
vai_adicionar_produto_a_mais = gets.to_s.upcase.strip == "S"

porcentagem_desconto_total = 0
if vai_adicionar_produto_a_mais
  puts "Entendi, (#{customer_name})! Qual o nome do novo produto que você deseja incluir ?"
  product2_name = gets.to_s.strip
  
  puts "Digite o valor do novo produto: (#{product2_name})"
  product2_value = gets.to_f.strip

  puts "Perfeito, (#{customer_name}), por você ter adicionado um produto a mais, terás 1% de desconto!"
  porcentagem_desconto_totals "Olá, (#{customer_name})! Já aplicamos (#{desconto_total}%) de desconto, você desejaria acrescentar mais desconto? Coloque o valor do desconto a mais ou digite zero para sem desconto a mais. "
desconto_total += gets.to_f

valor_total = (product1_value + product2_value)
valor_do_desconto = valor_total * desconto_total / 100
valor_total_descontado = valor_total - valor_do_desconto

system 'clear'

puts "Opa, Seu (#{customer_name}), o pedido deu: "
puts "O valor do desconto foi: "
puts "Itens: "
puts " - #{product1_name}: #{("R$%.2f", product1_value)}"
if vai_adicionar_produto_a_mais
  puts " - #{product2_name}: #{("R$%.2f", product2_value)}"
end

puts "=========================="
puts "A porcentagem de desconto total foi de: #{valor_do_desconto}%"
puts "=========================="
puts "O valor (em Reais) do desconto foi: #{("R$%.2f", valor_do_desconto)}"
puts "=========================="
puts "Valor total do pedido com desconto: #{("R$%.2f", Valor_total_descontado)}"