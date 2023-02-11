# Luciano Hang é um empresáio do varejo. O mesmo tem uma empresa chamada Havan e pretende vacinar 25 mil de seus colaboradores. Faça um programa que tenha as características de um colaborador (nome, sobrenome, CPF) e coloque uma opção neste colaborador, marcando se ele já tomou ou não a vacina. Ter um item de consulta para saber se aquele CPF foi vacinado.

# Passos:
# 1- Cadastrar, porém antes do cadastro, verificar se o CPF já foi vacinado. Se o CPF já foi vacinado, mostrar a mensagem: colaborador já tomou a primeira dose. Se não, pedir os outros dados do cadastro do colaborador.

cpfs = []
puts "||||||||||||||||||||||||||||||||||||||||||||||||||"
puts "|| Bem vindo ao programa de vacinação da Havan! ||"
puts "||||||||||||||||||||||||||||||||||||||||||||||||||"
puts "\n\n"
puts "                          Menu:".upcase
puts "------------------------------------------------------------"
puts "(1) Entre com o CPF para checar se já foi cadastrado."
puts "(2) Entre com seu nome."
puts "(3) Entre com o sobrenome."
puts "(4) Sair do programa."
print "Entre com o CPF para checar se já foi cadastrado: "
opcao = 0
case opcao != 4 do
when 1
    print "Digite o CPF: "
    cpf = gets.to_i
if cpfs.include?(cpf)
    print "Colaborador já tomou a primeira dose!"
    sleep(3)
else
    cpfs << cpf
    print "CPF cadastrado com sucesso! Pode ir tomar a sua vacina. "
end