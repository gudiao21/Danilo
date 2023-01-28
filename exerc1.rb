puts "Digite um número para a operação matemática de soma com o número 44"
a = gets.to_i
b = 44
sum = a + b

puts "O resultado da operação é: " + sum.to_s
#The other way to do the same thing:
puts "O resultado da operação é: #{sum}" # Interpolation