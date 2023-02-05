# Roberto é um diretor de uma escola de música. Ele precisa de um programa que tenha as seguintes opçoes:
# 1 - Cadastrar aluno (nome, matrícula e notas);
# 2 - Cadastrar Nota de aluno;
# 3 - Relatório das notas em média dos alunos;
# 4 - Sair.
# Faça o programa em app console utilizando variáveis, loop, condicionais e array.


escolha = 0
cadastro = {}

puts "Escolha uma das opções abaixo: "
puts "==============================================="
puts "Digite 1 para cadastrar o aluno."
puts "Digite 2 para cadastrar a matrícula do aluno."
puts "Digite 3 para cadastrar a nota do aluno."
puts "Digite 4 para sair."

case escolha
  when 1
    print "Digite o nome do aluno: "
    cadastro[:nome] = gets.chomp.to_s.strip
  when 2
    print "Digite a matrícula do aluno: "
    cadastro[:matricula] = gets.chomp.to_i.strip
  when 3
    print "Digite a nota do aluno: "
    cadastro[:nota] = gets.chomp.to_f.strip
  when 4
    break if escolha == 4
  else
    puts "Sua entrada é inválida, entre com um número entre 1 e 4, por favor!"
  end

  puts "================================================================="
  puts "A média das notas dos alunos é #{[:notas.sum] / [:nome.length]}"
  print "Muito obrigado por se cadastrar."

