# Crie um programa que tenha uma receita de bolo, esta receita precisa ter informações sobre o "BOLO FEITO" e informações para "TODOS OS BOLOS". Crie uma classe onde vc terá "PROPRIEDADES DE UM BOLO", o "MÉTODO COZINHAR O BOLO INSTANCIADO" e "COZINHAR VÁRIOS BOLOS" passados por um array.
# características da classe: NOME, COR, ESPECIAL(S/N).
# Funções da classe: cozinhar(para uma única instância), cozinhar_todos.

require "byebug"
#debugger

bolos = []
class Bolo
    attr_accessor :nome, :cor, :especial

    def cozinhar
        puts "Nome: #{@nome}"
        puts "Cor: #{@cor}"
        puts "Especial: #{@especial}"
    end

#Criando um método para todas as instâncias, ou seja, para todo mundo, sendo assim um "MÉTODO DE CLASSE", tendo que estar dentro da CLASSE:

    def self.cozinhar_todos(bolos) #Método para não só 1 bolo e sim para todos os bolos. Por isso "MÉTODO DE CLASSE".
        bolos.each do |bolo|
            puts "======== PELO MÉTODO DE CLASSE: =========="
            bolo.cozinhar
            puts "=========================================="
            #OBS: "MÉTODO DE CLASSE" tem que ter o "self", se não tiver não conseguirei chamá-lo!
        end    
    end    
end

system 'clear'
#Abaixo é um método de Instância:
bolo_de_laranja = Bolo.new #Cria uma instância apenas para o bolo de laranja, sendo assim, uma instância pra um tipo.
puts "======= PELO MÉTODO DE INSTÂNCIA ========"
bolo_de_laranja.nome = "Bolo de Laranja"
bolo_de_laranja.cor = "Laranja"
bolo_de_laranja.especial = "SIM"
bolo_de_laranja.cozinhar

#Abaixo é um método de Instância:
bolo_de_chocolate = Bolo.new #Cria uma instância apenas pro bolo de chocolate, sendo assim, uma instância pra um tipo.
puts "========================================="
bolo_de_chocolate.nome = "Bolo de chocolate"
bolo_de_chocolate.cor = "Marrom"
bolo_de_chocolate.especial = "NÃO"
bolo_de_chocolate.cozinhar
puts "==========================================\n\n"

#Abaixo é um "método de Classe":
Bolo.cozinhar_todos([bolo_de_laranja, bolo_de_chocolate])#Não é uma instância, pois é um método que serve para todos os bolos, sendo assim "cozinhar_todos" um "MÉTODO DE CLASSE", também conhecido como "MÉTODO ESTÁTICO".


#========================================================================================================================================================================================
# class Bolo
#     attr_accessor :nome, :cor, :especial #Já cria os "setters" e "getters".

#     def cozinhar
#         system 'clear'
#         print "Digite o nome do bolo: "
#         @nome = gets.to_s.strip
#         print "Digite a cor do bolo: "
#         @cor = gets.to_s.strip
#         self.mostrar_bolo
#     end

#     def mostrar_bolo
#         puts "\n=================================="
#         puts "Nome do bolo: #{@nome}"
#         puts "Cor do bolo: #{@cor}"
#         #puts "O bolo é especial? #{@especial}"
#         self.especial_ou_nao
#         puts "===================================="
#         sleep(3)
#         system 'clear'
#     end

#     def especial_ou_nao
#         opcao = nil
#         print "O bolo é especial ou não? (S/N)"
#         opcao = gets.upcase.strip
#         case opcao
#         when "S"
#             @especial = "Sim"
#             puts "Então o bolo é especial! Obaaaa."
#         when "N"
#             @especial = "Não"
#             puts "Então o bolo não é especial,ou seja, é basicão! Afff."
#         else
#             puts "Opção não válida, entre com (S) ou (N), por favor!"
#         end
#     end
# end

# Bolo.new.cozinhar