# Luciano Hang é um empresáio do varejo. O mesmo tem uma empresa chamada Havan e pretende vacinar 25 mil de seus colaboradores. Faça um programa que tenha as características de um colaborador (nome, sobrenome, CPF) e coloque uma opção neste colaborador, marcando se ele já tomou ou não a vacina. Ter um item de consulta para saber se aquele CPF foi vacinado.

# Passos:
# 1- Cadastrar, porém antes do cadastro, verificar se o CPF já foi vacinado. Se o CPF já foi vacinado, mostrar a mensagem: colaborador já tomou a primeira dose. Se não, pedir os outros dados do cadastro do colaborador.

require 'byebug'
#debugger

@cpfs = []
puts "\n\n"
puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
puts "||      Bem vindo ao programa de vacinação da Havan!      ||"
puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
puts "\n\n"

opcao = 0
while opcao != 2 do
    puts "                          Menu:".upcase
    puts "------------------------------------------------------------"
    puts "(1) Entre com o CPF para checar se o colaborador já foi vacinado."
    #puts "(2) Entre com o nome do colaborador."
    #puts "(3) Entre com o sobrenome do colaborador."
    puts "(2) Sair do programa.\n\n"

    def verificar_cpf
        print "Digite o CPF: "
            cpf = gets.to_i
            if @cpfs.include?(cpf)
                puts "+-----------------------------------------+"
                puts "|  Colaborador já tomou a primeira dose!  |"
                puts "+-----------------------------------------+"
                puts "===============================================\n\n"
                puts "+---------------------------------------------+"
                puts "|     Voltando para as opções do Menu!        |"
                puts "+---------------------------------------------+"
                sleep(4)
                system "clear"
            else
                @cpfs << cpf
                puts "CPF cadastrado com sucesso!"
                sleep(1)
                print "Entre com o nome do Colaborador: "
                nome = gets.to_s
                puts "Nome cadastrado com sucesso."
                sleep(1)
                print "Entre com o sobrenome do colaborador: "
                sobrenome = gets.to_s
                puts "Sobrenome cadastrado com sucesso."
                puts "===========================================\n\n\n\n"
            end    
    end    
    
    opcao = gets.to_i
    cadastro = {nome:"", sobrenome:"", cpf:[]}
    case opcao
        when 1
            verificar_cpf
        when 2
            puts ""
            puts "      Havan agradece pela colaboração!        "
            puts ""
            break
        else 
            puts "=================================================="
            puts "\n"
            puts "+-----------------------------------------------+"
            puts "|  Escolha, apenas, a opção 1 ou 2, por favor:  |"
            puts "+-----------------------------------------------+"
            puts "\n\n"
        
        
    end
end