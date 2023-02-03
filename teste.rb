notas = []
pesquisa_em_andamento = true

while pesquisa_em_andamento
  puts "Qual a nota entre (0..10) que você dá para essa aula vigente?"
  nota = gets.to_f
  break if nota == -1
  if (1..10).include?(nota)
    notas << nota
  else
    #system 'clear'
    puts "O valor fornecido não coincide com o padrão possível!"
  end
end

puts "O valor do NPS é de: #{(notas.sum / notas.length)}"