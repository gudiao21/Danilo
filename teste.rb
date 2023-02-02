notas = []
pesquisa_em_andamento = true

while pesquisa_em_andamento
  puts "Qual a nota entre (0..10) que você dá para essa aula vigente?"
  nota = gets.to_f
  if (1..10).include?(nota)
    notas << nota
  else
    puts "O valor fornecido não coenside com o padrão possível, digite apenas "  
