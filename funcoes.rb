# require 'byebug'

# debugger

# def calcula_soma(numero = 1)
    
#     a = 1 + numero

#     return 1 if a > 10

#     a += 2

#    return a
# end

# puts "O retorno é: #{calcula_soma(20)}"
# puts "O retorno é: #{calcula_soma()}"
# puts "O retorno é: #{calcula_soma(2)}"

#========================================================================================

# def mostrar_na_tela(param) #É uma função "VOID", pois só retorna algo(mostando na tela).
#     puts "#{param} - Na aula do torne-se um programador."
# end

# mostrar_na_tela('Danilo')

#=======================================================================================

def mostrar_na_tela(param) 
    "#{param} - Na aula do torne-se um programador"
end

puts mostrar_na_tela('Danilo')#É uma função "VOID", mesmo tendo o mesmo resultado, entretanto o "puts" ocorre fora da função "def mostrar_na_tela", fazendo com que a mesma RETORNE o "param" para o comando "puts", que é esse que está fora da função.

#========================================================================================

