#Danilo é um empresário que trabalha na empresa "Didox Business". Ele precisa de um programador que faça um software que tenha alguns recursos:
# 1 - Calcular a taboada do número digitado;
# 2 - Ler um nome e mostrar este nome concatenado com a frase: "Vamos lá guerreiros";
# 3 - Calcular a tabuada e mostrar também a frase acima com o nome.

require 'byebug'
#debugger

puts "Bem vindo ao programa de cálculo da tabuada!".upcase
print "Por favor, digite um 'número inteiro' para que o programa calcule a respectiva tabuada: "
numero = gets.to_i
print "Por favor, antes de te dar o resultado, digite seu nome para que eu saiba para quem eu farei o cálculo: "
nome = gets.to_s
puts "#{nome}"