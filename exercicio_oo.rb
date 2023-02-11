# Luciano Hang é um empresáio do varejo. O mesmo tem uma empresa chamada Havan e pretende vacinar 25 mil de seus colaboradores. Faça um programa que tenha as características de um colaborador (nome, sobrenome, CPF) e coloque uma opção neste colaborador, marcando se ele já tomou ou não a vacina. Ter um item de consulta para saber se aquele CPF foi vacinado.

# Passos:
# 1- Cadastrar, porém antes do cadastro, verificar se o CPF já foi vacinado. Se o CPF já foi vacinado, mostrar a mensagem: colaborador já tomou a primeira dose. Se não, pedir os outros dados do cadastro do colaborador.

system 'clear'
@cpfs = []
puts "||||||||||||||||||||||||||||||||||||||||||||||||||"
puts "|| Bem vindo ao programa de vacinação da Havan! ||"
puts "||||||||||||||||||||||||||||||||||||||||||||||||||"
puts "\n\n"

opcao = 0
while opcao != 2 do
    puts "                          Menu:".upcase
    puts "------------------------------------------------------------"
    puts "(1) Entre com o CPF para checar se o colaborador já foi vacinado."
    #puts "(2) Entre com o nome do colaborador."
    #puts "(3) Entre com o sobrenome do colaborador."
    puts "(2) Sair do programa."

    cadastro = {nome:"", sobrenome:"", cpf:[]}
    case opcao
    when 1
        print "Digite o CPF: "
        cpf = gets.to_i
        if @cpfs.include?(cpf)
            print "Colaborador já tomou a primeira dose!"
            sleep(3)
            break
        else
            @cpfs << cpf
            print "CPF cadastrado com sucesso!"
            sleep(3)
            print "Entre com o nome do Colaborador: "
            nome = gets.to_s
            print "Entre com o sobrenome do colaborador: "
            sobrenome = gets.to_s
            sleep(2)

        end
    end
end