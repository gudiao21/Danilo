#Exercício passado pelo Danilo do (06-Loop e Array).
# Danilo é o fundador do "torne-se um programador" e ele precisa calcular a satisfação de seus alunos. Faça um programa que calcule o NPS do seu negócio.


notas = []
pesquisa_em_andamento = true

while pesquisa_em_andamento do
  puts "Qual é a nota de (0..10) você daria para a vigente aula?"  
  nota = gets.to_f
  break if nota == -1
  if (1..10).include?(nota) #O número que eu estou querendo está incluso neste "range"?
    notas << nota
  system 'clear'
  else
    puts "A nota atribuída não pode ser processada, pois está fora da margem de possibilidades. Por favor, digite, apenas, uma nota de 0 a 10!"
  end

end

puts "O seu NPS é de: #{(notas.sum / notas.length)}"