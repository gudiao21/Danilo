# Roberto é um diretor de uma escola de música. Ele precisa de um programa que tenha as seguintes opçoes:
# 1 - Cadastrar aluno (nome, matrícula e notas)<< será uma hash;
# 2 - Cadastrar Nota de aluno;
# 3 - Relatório das notas em média dos alunos;
# 4 - Sair.
# Faça o programa em app console utilizando variáveis, loop, condicionais e array.

escolha = 0
alunos = [] #Essa variável tem que ser fora do loop para se guardar o histórico, pois dentro do loop a cada interação ela zera.

while escolha != 4 do
   #system 'clear'
   puts "Escolha uma das opções abaixo: "
   puts "==============================================="
   puts "Digite 1 para cadastrar o aluno."
   puts "Digite 2 para cadastrar a matrícula do aluno."
   puts "Digite 3 para cadastrar a nota do aluno."
   puts "Digite 4 para sair."
   puts "==============================================="
   
   
   escolha = gets.to_i
    
   case escolha
     when 1
       aluno = {nome:"", matricula:"", notas:[]}
       print "Digite o nome do aluno: "
       aluno[:nome] = gets.to_s
       print "Digite a matrícula do aluno: "
       aluno[:matricula] = gets
       alunos.push(aluno) #Ou: alunos << aluno
       puts "Cadastro feito com sucesso!"
       #sleep(2)
     when 2
        print "Antes de entrar com a nota digite a matrícula do aluno: "
        matricula = gets
        alunos.each do |a|
            if a[:matricula] == matricula
              print "Digite a nota do aluno: "
              a[:notas] << gets.to_f
            end  
        #when 4
        # break
        #  else
        #    puts "Sua entrada é inválida, entre com um número entre 1 e 4, por favor!"
    end

  puts alunos
end

#   puts "================================================================="
#   puts "A média das notas dos alunos é #{[:notas.sum] / [:nome.length]}"
#   print "Muito obrigado por se cadastrar."

