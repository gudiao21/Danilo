require 'byebug'

# top = 4
# now = 0
# puts "while #{now += 1} .. #{top}" until now >= top

# index = 0
# loop do
#   debugger
#   index +=1
#   next if index == 5 || index == 8
#   puts index
#   break if index == 10
# end
#===============================================
# 8.times do |i|
#   next if i % 2 == 0 # Se na comparação eu adicionar "!=", vai mostrar os pares.
#   puts i
# end
#==============================================
# for i in 0..7
#   next if i % 2 == 0 #Next se for par.
#   puts i #Imprimirá apenas ímpares.
# end
#==============================================
# (1..7).each do |i|
#   next if i % 2 == 0
#   puts i
# end
#=============================================
# a = [1,2,3,4,5].select{|i| i > 4}
# puts a.to_s
#==============================================
a = [1,2,3,4,5].map{|i| "Oi - #{i}"}
puts a.to_s

puts "======================================="

a = [1,2,3,4,5].map{|i| "Oi - #{i}"}

a.each do |i|
  puts i
end  