require 'byebug'

puts "Digite um número: "
x = gets.to_i

debugger
# if (1..5).include?(x)
#     puts "It's between 1 and 5"
# elsif x == 6
#     puts "It's 6"
# elsif [10,30].include?(x)
#     puts "It's either 10 or 30"
# elsif x == 50
#     puts "It's 50"
# else
#     puts "You gave me #{x} -- I have no idea what to do with that."              
# end


case x
when 1..5
   puts "It's between 1 and 5"
when 6
   puts "It's 6"
when 10, 30
   puts "It's either 10 or 30"
when 50
   puts "It's 50"
else
   puts "You gave me #{x} -- I have no idea what to do with that."
end                   