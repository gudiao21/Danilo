# Crie um programa que tenha uma receita de bolo, esta receita precisa ter informações sobre o "BOLO FEITO" e informações para "TODOS OS BOLOS". Crie uma classe onde vc terá "PROPRIEDADES DE UM BOLO", o "MÉTODO COZINHAR O BOLO INSTANCIADO" e "COZINHAR VÁRIOS BOLOS" passados por um array.
# características da classe: NOME, COR, ESPECIAL(S/N)
# Funções da classe: COZINHAR(para uma única instância), COZINHAR TODOS.

class Bolo
    attr_accessor :nome :cor :especial #Já cria os "setters" e "getters".

    def cozinhar
        print "Digite o nome do bolo: "
        puts "Nome: #{@nome}"
        print "Digite a cor do bolo: "
        puts "Cor: #{cor}"
        puts "Especial"
    end

    def especial_ou_nao
        opcao = nil
        print "O bolo é especial ou não? (S/N)"
        opcao = gets.upcase.strip
        if opcao == "S"
            puts "Então o bolo é especial!"
        else
            puts "Então esse bolo não é especial, ou seja, é um bolo basicão! Afff."
        end
    end