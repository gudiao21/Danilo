#Danilo é um empresário que trabalha na empresa "Didox Business". Ele precisa de um programador que faça um software que tenha alguns recursos:
# 1 - Calcular a taboada do número digitado;
# 2 - Ler um nome e mostrar este nome concatenado com a frase: "Vamos lá guerreiros!";
# 3 - Calcular a tabuada e mostrar também a frase acima com o nome.

require 'byebug'
debugger

def calculo(numero)
    multiplicador = 0
    
    while multiplicador <= 10 do
        puts "(#{numero} x #{multiplicador})" = numero * resultado
        multiplicador += 1
        #puts "#{nome}, vamos lá, guerreiros!"
        #puts "Essa é a taboada do número que você, #{nome}"
    end    
end    

puts "Bem vindo ao programa de cálculo da tabuada!".upcase
print "Por favor, digite um 'número inteiro' para que o programa calcule a respectiva tabuada: "
numero = gets.to_i
print "Por favor, antes de te dar o resultado, digite seu nome para que eu saiba para quem eu farei o cálculo: "
nome = gets.to_s
puts "#{nome}, vamos lá, guerreiro:\n\n"

calculo(numero)