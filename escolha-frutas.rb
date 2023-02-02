# Dado que eu tenha algumas opções:
# - Banana
# -Maça
# -Laranja
# e digite algum dos itens listados acima, ao escolher, coloque um valor diferente para fruta, este valor estará no bloco selecionada no final do programa mostre o valor de acordo com a escolha da fruta.

# require 'byebug'
# print "Digite a sua fruta: "
# fruta = gets.chomp.strip.to_s.capitalize

# case(fruta)
#   when "Banana"
#     puts "Valor da Banana é de R$3,00"
#   when "Maçã"
#     puts "O Valor da Maçã é de R$5,00"
#   when "Laranja"
#     puts "O valor da Laranja é de R$10,00"
# end

puts "Digite uma das opções de frutas abaixo:"
puts "=========================="
puts "1-Banana;"
puts "2-Maça;"
puts "3-Laranja."
puts "=========================="

opcao = gets.to_i
case opcao
when 1
  puts "Você escolheu a fruta banana, que custa R$3,00. "
when 2
  puts "Você escolheu a fruta Maçã, que custa R$5,00."
when 3
  puts "Você escolheu a fruta Laranja, que custa R$10,00."
else
  puts "Não existe essa opção!"
end