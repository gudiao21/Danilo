# Roberto é um diretor de uma escola de música. Ele precisa de um programa que tenha as seguintes opçoes:
# 1 - Cadastrar aluno (nome, matrícula e notas);
# 2 - Cadastrar Nota de aluno;
# 3 - Relatório das notas em média dos alunos;
# 4 - Sair.
# Faça o programa em app console utilizando variáveis, loop, condicionais e array.


while escolha.to_i != 4 do
   system 'clear'
   puts "Escolha uma das opções abaixo: "
   puts "==============================================="
   puts "Digite 1 para cadastrar o aluno."
   puts "Digite 2 para cadastrar a matrícula do aluno."
   puts "Digite 3 para cadastrar a nota do aluno."
   puts "Digite 4 para sair."
   puts "==============================================="
   
   aluno = {nome:"", matricula:"", notas:""} #Essa variável tem que ser fora do loop para se guardar o histórico.
   escolha = 0
  
   case
     when 1
       print "Digite o nome do aluno: "
       aluno[:nome] = gets.to_s
       print "Digite a matrícula do aluno: "
       aluno[:matricula] = gets.to_i
       alunos.push(aluno) #Ou: alunos << aluno
       puts "Cadastro feito com sucesso!"
       sleep(2)
     when 2
       print "Digite a matrícula do aluno: "
       alunos[matricula:gets.chomp.to_i]
     when 3
       print "Digite a nota do aluno: "
       alunos[nota:gets.chomp.to_f]
     #when 4
       # break
     else
       puts "Sua entrada é inválida, entre com um número entre 1 e 4, por favor!"
    end

end
  puts "================================================================="
  puts "A média das notas dos alunos é #{[:notas.sum] / [:nome.length]}"
  print "Muito obrigado por se cadastrar."

