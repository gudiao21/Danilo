#Danilo é um empresário que trabalha na empresa "Didox Business". Ele precisa de um programador que faça um software que tenha alguns recursos:
# 1 - Calcular a taboada do número digitado;
# 2 - Ler um nome e mostrar este nome concatenado com a frase: "Vamos lá guerreiros!";
# 3 - Calcular a tabuada e mostrar também a frase acima com o nome.

require 'byebug'
#debugger

def calculo(numero)
    multiplicador = 1
    puts "A tabuada de #{numero}, é:"
    
        while multiplicador <= 10 do
            puts "#{numero} x #{multiplicador} = #{numero * multiplicador}"
            multiplicador += 1 #or:
            #========================================================
            #looping com "times": 
            10.times do |i|
            #     puts "#{(i + 1)} x #{numero} = #{(i + 1) * numero}"
            # end
            #========================================================
            #looping com "rage":
            # (1..10).each do |i|
            #     puts "#{i} x #{numero} = #{i * numero}"
            # end    
        end    
end    

def chama_guerreiro
    print "Por favor, antes de te dar o resultado, digite seu nome para que eu saiba para quem farei o cálculo: "
    @nome = gets.to_s.delete("\n") #"@nome" é uma variável de instância ou de escopo, pois é reconhecida entre objetos, funções e no escopo do código também.
    puts "#{@nome}, vamos lá, guerreiro!"
end    
puts "Bem vindo ao programa de cálculo da tabuada!".upcase
print "Por favor, digite um 'número inteiro' para que o programa calcule a respectiva tabuada: "
numero = gets.to_i
chama_guerreiro
#print "Por favor, antes de te dar o resultado, digite seu nome para que eu saiba para quem eu farei o cálculo: "
#nome = gets.to_s.delete("\n")
#puts "#{nome}, vamos lá, guerreiro!"

calculo(numero)

puts "#{@nome}, é isso aí! Espero ter te ajudado."
