# Danilo é um empresario que trabalha na empresa Didox Business
# Ele precisa de um software que tenha alguns recursos
# 1 - Calcular a tabuada do número digitado (solicitar o numero da tabuada)
# 2 - Ler um nome e mostrar esse nome concatenado com a frase "vamos lá guerreiros"
# 3 - Calcular a tabuada e mostrar a frase acima com o nome
class Tabuada #Todo nome de classe começa com letra maiúscula.
    def menu
        puts "\nO que deseja fazer? \n\n"
        puts "(1) Informar o número da tabuada que deseja calcular"
        puts "(2) Ler o nome e mostrar 'Vamos lá guerreiros'"
        puts "(3) Calcular a tabuada concatenando a frase"
        puts "(4) Sair"
        print "\nSelecione a opção: "
    end

    def sair_do_programa
        puts "+--------------- Você selecionou a opção 4 ----------------+"
        puts "|        Essa é a sua decisão de saída do programa         |"
        puts "|     A Didox Business agradece e deseja uma boa jornada   |"
        puts "+----------------------------------------------------------+"
        puts Time.now
        puts "\n"
        sleep 1
    end

    def opcao_nao_disponivel
        puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
        puts "|||   Você selecionou uma opção que não está disponível  |||"
        puts "|||||||     Reinicie ou escolha a opção (4) Sair     |||||||" 
        puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
    end

    def informar_numero_tabuada
        @numero_tabuada = 0
        puts "\n-------- Você selecionou a opção 1 -------"
        puts "INFORMAR NÚMERO DE TABUADA A SER CALCULADA"
        print "\nInforme o número da tabuada: "
        @numero_tabuada=gets.to_i
        puts "\n======================================"
        puts "Você informou o número #{@numero_tabuada}"
        puts "======================================"
    end

    def ola_guerreiros
        @nome = ""
        puts "\n------ Você selecionou a opção 2 ------"
        puts "         OLÁ GUERREIROS(AS)!!"
        print "\nInforme o nome: "
        @nome=gets.to_s.strip
        puts "\n==========+============================"
        puts "Você informou o nome #{@nome}"
        puts "======================================="
        puts "V a m o s    l á    G u e r r e i r o(a)!!!"
    end

    def calculo()
        puts "\n------ Você selecionou a opção 3 ------"
        puts "   CÁLCULO DA TABUADA E CONCATENAÇÃO"
        puts "\nNumero da tabuada a calcular: #{@numero_tabuada}"
        puts "Nome informado: #{@nome}"
        10.times do |i|  
            puts "\n#{(i + 1)} x #{@numero_tabuada} = #{(i + 1) * @numero_tabuada}"
        end 
        puts "\nOlá #{@nome} - Guerreiro(a)!!!"
        puts "-------------------------------------------------"
    end
    def executar
        system 'clear'
        require 'byebug'

        puts "=============================================="
        puts "          Olá Equipe da Didox Business"
        puts "=============================================="

        opcao = 0
        #alunos = []

        while opcao != 4 do
            menu()
            opcao = gets.to_i
            case opcao
                when 1
                    informar_numero_tabuada()
                when 2
                    ola_guerreiros()
                when 3
                    calculo()
                when 4
                    sair_do_programa()
                else
                    opcao_nao_disponivel()
            end
        end
    end
end

tab = Tabuada.new #Criando uma nova instância.
tab.executar