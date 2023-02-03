#Exercício passado pelo Danilo do (06-Loop e Array).
# Danilo é o fundador do "torne-se um programador" e ele precisa calcular a satisfação de seus alunos. Faça um programa que calcule o NPS do seu negócio.

notas = []
#pesquisa_em_andamento = true
data_encerramento = Time.now + 60
puts data_encerramento
puts Time.now
#require 'activesupport'
#require 'byebug'
#debugger
while Time.now < data_encerramento do
  puts "Qual é a nota de (0..10) você daria para a vigente aula?"
  nota = gets.to_f
  #break if nota == -1
  if (1..10).include?(nota) #O número que eu estou querendo está incluso neste "range"?
    notas << nota
    puts "Sua nota foi computada."
  else
    puts "A nota atribuída não pode ser processada, pois está fora da margem de possibilidades!"
  end
  puts "A pesquisa irá encerrar às: #{Time.at((data_encerramento - Time.now)).strftime("M%:%S")}"
  end
puts "A quantidade de avaliações(ão) (foi/foram) de: #{notas.length}"
puts "Notas obtidas: #{(notas)}"
puts "O seu NPS é de: #{(notas.sum / notas.length)}"