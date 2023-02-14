# Luciano Hang é um empresário do ramo do varejo
# O mesmo tem uma empresa chamada Havan
# E ele está querendo vacinar os ses colaboradores (25 mil)
# faça um programa que tenha as caracteristicas de um
# colaborador (nome, sobrenome, cpf)
# e coloque uma opção neste colaborador marcando se ele
# já tomou ou não a vacina
# Ter um item de consulta para saber se aquele CPF foi vacinado
# passos: 
#   cadastra, porem antes do cadastro, verificar se o CPF já foi vacinado
#   Se o cpf já foi vacinado, mostrar a mensagem colaborador já tomou a primeira dose
#   Se não pedir os outros dados do cadastro do colaborador

class Colaborador #Segunda coisa que o professor fez.
        attr_accessor :nome, :sobrenome, :cpf, :vacinado #Quarta coisa feita. ":vacinado" será referido como boleano.

    def self.busca_por_cpf(cpf) #Sexto, é um método de classe, caracterizado pelo "self", não precisando dar um "new" para usar, e sim o "nome_da_classe.nome_do_método".Ex: "Colaborador.busca_por _cpf". É método de classe por se tratar de uma busca por TODOS os colaboradores.
        #ControladorVacina.colaboradores.find{|colaborador| colaborador.cpf == cpf} #Mesma coisa que as 6 linhas abaixo.
        colaborador_encontrado = nil
        ControladorVacina.colaboradores.each do |colaborador|
             if colaborador.cpf == cpf
                 colaborador_encontrado = colaborador
                 break
             end
        end
         colaborador_encontrado #Retorna o Colaborador_encontrado
    end    
        
    
    def mostrar #Terceira coisa que o professor fez.É um método de instância por ser um "mostrar" para cada colaborador.
        puts "Nome: #{@nome}"
        puts "Sobrenome: #{@sobrenome}"
        puts "CPF: #{@cpf}"
        puts "Vacinado(a): #{(@vacinado ? "Sim" : "Não")}" #"Operador Ternário". Seria um "if" com boleano, ou seja, se vacinado true, então "Sim", senão "Não".Tudo em uma linha somente.
    end    
end

class ControladorVacina #Primeira coisa que o professor fez.
    @@colaboradores = [] #Variável global.
    SAIR_DO_SISTEMA = 4

    def self.colaboradores #Quinta. É um método de classe para retornar o colaborador para várias instâncias.
        @@colaboradores
    end

    def self.menu #O "self" transforma o método "menu" em "método de classe" ou "estático".Vai servir para várias instâncias. O chamando por: "ControladorVacina.menu".
        puts "\nO que deseja fazer? \n\n"
        puts "(1) Cadastrar colaborador"
        puts "(2) Localizar colaborador"
        puts "(3) Listar colaboradores"
        puts "(4) Sair"
        print "\nSelecione a opção: "
        ControladorVacina.captura_item_menu #Está logo abaixo.
    end

    def self.captura_item_menu
        opcao = gets.to_i
        case opcao
        when 1
            ControladorVacina.cadastrar_colaborador
        when 2
            ControladorVacina.buscar_colaborador
        when 3
            ControladorVacina.listar_colaboradores
        when SAIR_DO_SISTEMA # "SAIR_DO_SISTEMA" é uma constante,que foi definido como 4 na linha 40.
            return SAIR_DO_SISTEMA
        end
        return 0
    end

    def self.incluir_colaborador(cpf)
        colaborador = Colaborador.new #Criou-se uma instância, nascendo assim um novo objeto chamado "colaborador".
        colaborador.cpf = cpf
        puts "Digite o nome do colaborador. \n\n"
        colaborador.nome = gets.strip #Usa o objeto "colaborador.nome" e não o hash.
        puts "Digite o sobrenome do colaborador. \n\n"
        colaborador.sobrenome = gets.strip #Usa o objeto "colaborador.sobrenome" e não o hash.
        colaborador.vacinado = true #"vacinado" se refere à linha 15: ":vacinado". Usa o objeto "colaborador.vacinado" e não o hash".

        ControladorVacina.colaboradores << colaborador
    end
    
    def self.cadastrar_colaborador
        puts "\nDigite o CPF do colaborador? \n\n"
        cpf = gets.strip
        colaborador = Colaborador.busca_por_cpf(cpf)
        unless colaborador.nil?
            puts "==============================================="
            puts "O colaborador do cpf #{cpf} já foi vacinado."
            puts "==============================================="
            colaborador.mostrar
            ControladorVacina.pausa
        else
            #puts "Colaborador no cpf #{cpf} não encontrado."
            ControladorVacina.incluir_colaborador(cpf)
        end
    end
    
    def self.buscar_colaborador
        puts "\nDigite o CPF do colaorador: \n\n"
        cpf= gets.strip.to_i
        colaborador = Colaborador.busca_por_cpf(cpf)#Retorna um item instanciado da classe "Colaborador"
        
        system "clear"
        unless colaborador.nil? #Se o colaborador(CPF) for != de nulo ...
            colaborador.mostrar #Mostra o CPF ?
            ControladorVacina.pausa
        else
            puts "Colaborador no cpf #{cpf} não encontrado."
            puts "Deseja cadastrar o mesmo? (S/N)"
            opcao = gets.strip.upcase
            if opcao == "S"
                colaborador = ControladorVacina.incluir_colaborador(cpf)
                colaborador.mostrar
            end   
        end    
    end
    
    def self.listar_colaboradores
        system "clear"
        
        if ControladorVacina.colaboradores.length == 0
            puts "Não temos nenhum colaborador vacinado em nossa base."
            ControladorVacina.pausa
            return # Retorna para o menu?
        end

        ControladorVacina.colaboradores.each do |colaborador| #"colaboradores" seria a variável global na linha 39. Nesse comando mostrará toda a minha lista.
            puts "========================================="
            colaborador.mostrar #O que seria isso?
        end
    end   
        
        def self.pausa
            sleep(2)
            system "clear"
        end
        
    
    def self.init #Método de classe para iniciar o programa.
        while(true)
            opcao = ControladorVacina.menu #?
            #ControladorVacina.menu
            break if opcao == SAIR_DO_SISTEMA # "SAIR_DO_SISTEMA" definido na linha 40.
        end    
    end
end

    ControladorVacina.init #chamará o método ou função "init", que está logo acima.






    # # Luciano Hang é um empresáio do varejo. O mesmo tem uma empresa chamada Havan e pretende vacinar 25 mil de seus colaboradores. Faça um programa que tenha as características de um colaborador (nome, sobrenome, CPF) e coloque uma opção neste colaborador, marcando se ele já tomou ou não a vacina. Ter um item de consulta para saber se aquele CPF foi vacinado.

# # Passos:
# # 1- Cadastrar, porém antes do cadastro, verificar se o CPF já foi vacinado. Se o CPF já foi vacinado, mostrar a mensagem: colaborador já tomou a primeira dose. Se não, pedir os outros dados do cadastro do colaborador.

# require 'byebug'
# #debugger

# #class Vacinacao
#     system 'clear'
#     @cpfs = []
#     puts "\n\n"
#     puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
#     puts "||      Bem vindo ao programa de vacinação da Havan!      ||"
#     puts "||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
#     puts "\n\n"

#     opcao = 0
#     while opcao != 2 do

#         puts "                          Menu:".upcase
#         puts "------------------------------------------------------------"
#         puts "(1) Entre com o CPF para checar se o colaborador já foi vacinado."
#         #puts "(2) Entre com o nome do colaborador."
#         #puts "(3) Entre com o sobrenome do colaborador."
#         puts "(2) Sair do programa.\n\n"

#         def verificar_cpf
#             print "Digite o CPF: "
#             cpf = gets.to_i
#             if @cpfs.include?(cpf)
#                 puts "+--------Você escolheu a opção 1----------+"
#                 puts "|  Colaborador já tomou a primeira dose,  |"
#                 puts "|    voltando para as opções do Menu!     |"
#                 puts "+-----------------------------------------+"
#                 puts "===============================================\n\n"
#                 sleep(5)
#                 system "clear"
#             else
#                 @cpfs << cpf
#                 puts "CPF cadastrado com sucesso!"
#                 sleep(1)
#                 print "Entre com o nome do Colaborador: "
#                 nome = gets.to_s
#                 puts "Nome cadastrado com sucesso."
#                 sleep(1)
#                 print "Entre com o sobrenome do colaborador: "
#                 sobrenome = gets.to_s
#                 puts "Sobrenome cadastrado com sucesso."
#                 puts "===========================================\n\n\n\n"
#                 sleep 2
#                 system 'clear'
#             end    
#         end

#         def sair
#             puts "||||||||||Você escolheu a opção 2|||||||||||||"
#             puts "|||   Havan agradece pela colaboração!     |||"
#             puts "||||||||||||||||||||||||||||||||||||||||||||||"
#             puts Time.now
#             puts "\n\n"
#             #break
#         end

#         def opcoes_impossiveis
#             puts "=================================================="
#             puts "\n"
#             puts "+-------------- Opção Inválida -----------------+"
#             puts "|  Escolha, apenas, a opção 1 ou 2, por favor:  |"
#             puts "+-----------------------------------------------+"
#             puts "\n\n"
#         end    
        
#         opcao = gets.to_i
#         cadastro = {nome:"", sobrenome:"", cpf:[]}
#         case opcao
#             when 1
#                 #if @cpfs.length = 25000
#                 #break
#                 #end
#                 verificar_cpf
#             when 2
#                 sair
#             else 
#                 opcoes_impossiveis        
            
#         end
#     end
# #end