# Crie um programa que tenha uma receita de bolo, esta receita precisa ter informações sobre o "BOLO FEITO" e informações para "TODOS OS BOLOS". Crie uma classe onde vc terá "PROPRIEDADES DE UM BOLO", o "MÉTODO COZINHAR O BOLO INSTANCIADO" e "COZINHAR VÁRIOS BOLOS" passados por um array.
# características da classe: NOME, COR, ESPECIAL(S/N).
# Funções da classe: COZINHAR(para uma única instância), COZINHAR TODOS.

require "byebug"
#debugger
class Bolo
    attr_accessor :nome, :cor, :especial #Já cria os "setters" e "getters".

    def cozinhar
        system 'clear'
        print "Digite o nome do bolo: "
        @nome = gets.to_s.strip
        print "Digite a cor do bolo: "
        @cor = gets.to_s.strip
        self.mostrar_bolo
    end

    def mostrar_bolo
        puts "\n============================="
        puts "Nome do bolo: #{@nome}"
        puts "Cor do bolo: #{@cor}"
        #puts "O bolo é especial? #{@especial}"
        self.especial_ou_nao
        puts "=============================\n"
    end

    def especial_ou_nao
        opcao = nil
        print "O bolo é especial ou não? (S/N)"
        opcao = gets.upcase.strip
        case opcao
        when "S"
            @especial = "Sim"
            puts "Então o bolo é especial! Obaaaa."
        when "N"
            @especial = "Não"
            puts "Então o bolo não é especial,ou seja, é basicão! Afff."
        else
            puts "Opção não válida, entre com (S) ou (N), por favor!"
        end
    end
end

Bolo.new.cozinhar