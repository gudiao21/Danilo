#Exercício passado pelo Danilo do (06-Loop e Array).
# Danilo é o fundador do "torne-se um programador" e ele precisa calcular a satisfação de seus alunos. Faça um programa que calcule o NPS do seu negócio.

notas = []
#pesquisa_em_andamento = true
data_encerramento = Time.now + 10
puts data_encerramento
puts Time.now
#require 'activesupport'
#require 'byebug'
#debugger
while Time.now < data_encerramento do
  puts "Qual é a nota de (0..10) você daria para a vigente aula?"
  nota = gets.to_f
  puts "============================"
  #break if nota == -1
  unless (1..10).include?(nota)
    puts "A nota atribuída não pode ser processada, pois está fora da margem de possibilidades!"
  end  
  if (1..10).include?(nota) #O número que eu estou querendo está incluso neste "range"?
    notas << nota
  end
  
  puts "Sua nota foi computada com sucesso!"

  if data_encerramento > Time.now
    puts "A pesquisa irá encerrar em: #{Time.at((data_encerramento - Time.now)).strftime("%M:%S")}"
  else
    puts "A pesquisa se encerrou!"  
  end
end  
puts "=========================="
puts "RESULTADO DA AVALIAÇÃO:"
puts "=========================="
puts "A quantidade de avaliações(ão) (foi/foram) de: #{notas.length}"
puts "=========================="
puts "Notas obtidas: #{(notas)}"
puts "=========================="
puts "O seu NPS é de: #{(notas.sum / notas.length)}"