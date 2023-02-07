# Roberto é um diretor de uma escola de música. Ele precisa de um programa que tenha as seguintes opçoes:
# 1 - Cadastrar aluno (nome, matrícula e notas)<< será uma hash;
# 2 - Cadastrar Nota de aluno;
# 3 - Relatório das notas em média dos alunos;
# 4 - Sair.
# Faça o programa em app console utilizando variáveis, loop, condicionais e array.
# Lembrando que para cada "when", se pode criar uma (Função/método),trornando assim o código mais fácil de se entender, corrigir e alterar.

system 'clear'
require 'byebug'
debugger
puts "============================================"
puts "Olá Equipe da Escola de Música do Roberto!"
puts "============================================"

escolha = 0
alunos = [] #Essa "variável global" tem que ser fora do loop para se guardar o histórico, pois dentro do loop, a cada interação ela zerará!

while escolha != 4 do
   puts "Escolha uma das opções abaixo: \n\n"
   puts "==============================================="
   puts "Digite (1) para cadastrar o aluno."
   puts "Digite (2) para cadastrar a nota do aluno."
   puts "Digite (3) para emitir ralatório das notas e médias dos alunos."
   puts "Digite (4) para sair."
   puts "==============================================="
   
   aluno = {nome:"", matricula:"", notas:[]}
   escolha = gets.to_i
    
   case escolha
     when 1
      puts "\n ------Você selecionou a opção 1 ------\n"
      print "Digite o nome do aluno: "
      aluno[:nome] = gets.to_s.strip
      print "Digite a matrícula do aluno: "
      aluno[:matricula] = gets.to_i
      #aluno[:notas] = []
      alunos.push(aluno) #Ou: alunos << aluno
      puts "Cadastro feito com sucesso!"
      puts "==================================="
      puts "Você cadastrou os seguintes dados:"
      puts "==================================="
      puts "Nome completo do aluno: #{aluno[:nome]}"
      puts "Matrícula do aluno: #{aluno[:matricula]}\n"
     when 2
      puts "\n------ Você selecionou a opção 2 ------\n" 
      print "Antes de entrar com a nota, digite a matrícula do aluno: "
      matricula = gets.to_i
      aluno_encontrado = false
      alunos.each do |a|
            if a[:matricula] == matricula
              aluno_encontrado = true
              print "Digite a nota do aluno: "
              nota = gets.to_f
              if nota < 0 or nota > 10
                puts "Nota inválida! Você deve escolher números entre 0 e 10."
                break
              end

              a[:notas] << nota
              #aluno_encontrado = true
              
            end
       end
    
    #puts "==========================\nAluno não encontrado!\n=========================\n"
    when 3
      puts "\n ------ Você selecionou a opção 3 ------"
      puts "RELATÓRIO DE MÉDIAS E NOTAS DOS ALUNOS"
      if alunos.length == 0
        puts "\n\n" #Pula duas linhas.
        puts "||||||||||||||||||||||||||||||||||||||"
        puts "|  Atenção! Nenhum aluno cadastrado! |"
        puts "||||||||||||||||||||||||||||||||||||||"
      else
        alunos.each do |aluno|
          puts "============================================================="
          puts "Nome do aluno: #{aluno[:nome]}"
          puts "Matrícula: #{aluno[:matricula]}"
          if aluno[:notas].length > 0
            puts "Notas: #{aluno[:notas].join(", ")}"
            puts "Média: #{(aluno[:notas].sum.to_f / aluno[:notas].length.to_f)}"
          else
            puts "Aluno sem notas para avaliação"
          end
        end
    
      end
    when 4
      puts "+---------- Você selecionou a opção 4 -------------+"
      puts "|   Essa é a sua decisão de saída do programa      |"
      puts "| A Equipe da Escola de Música do Roberto agradece |"
      puts "+--------------------------------------------------+"
      puts Time.now
      puts "\n"
      sleep (1)
    else
      puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
      puts "|||   Você selecionou uma opção que não está disponível   |||"
      puts "||||||||    Reinicie ou escolha a opção (4) Sair.    ||||||||"
      puts "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
    end #"end" do "case"
    sleep (3)
end #"end" do "while"