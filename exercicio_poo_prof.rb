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

require 'byebug'

class Colaborador
  attr_accessor :nome, :sobrenome, :cpf, :vacinado

  def self.busca_por_cpf(cpf)
    ControladorVacina.colaboradores.find{ |colaborador| colaborador.cpf == cpf }

    # colaborador_encontrado = nil
    # ControladorVacina.colaboradores.each do |colaborador|
    #   if colaborador.cpf == cpf
    #     colaborador_encontrado = colaborador
    #     break
    #   end
    # end

    # colaborador_encontrado
  end

  def mostrar
    puts "Nome: #{@nome}"
    puts "Sobrenome: #{@sobrenome}"
    puts "CPF: #{@cpf}"
    puts "Vacinado(a): #{(@vacinado ? "Sim" : "Não")}"
  end
end

class ControladorVacina
  @@colaboradores = []
  SAIR_DO_SISTEMA = 4
  
  def self.colaboradores
    @@colaboradores
  end

  def self.menu
    puts "\nO que deseja fazer? \n\n"
    puts "(1) Cadastrar colaborador"
    puts "(2) Localizar colaborador"
    puts "(3) Listar colaboradores"
    puts "(4) Sair"
    print "\nSelecione a opção: "
    ControladorVacina.captura_item_menu
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
    when SAIR_DO_SISTEMA
      return SAIR_DO_SISTEMA
    end

    return 0
  end

  def self.incluir_colaborador(cpf)
    colaborador = Colaborador.new
    colaborador.cpf = cpf
    puts "\nDigite o nome do colaborador? \n\n"
    colaborador.nome = gets.strip
    puts "\nDigite o sobrenome do colaborador? \n\n"
    colaborador.sobrenome = gets.strip
    colaborador.vacinado = true

    ControladorVacina.colaboradores << colaborador
    return colaborador
  end

  def self.cadastrar_colaborador
    puts "\nDigite o CPF do colaborador? \n\n"
    cpf = gets.strip
    colaborador = Colaborador.busca_por_cpf(cpf)
    if colaborador.nil?
      colaborador = ControladorVacina.incluir_colaborador(cpf)
      puts "======================================="
      colaborador.mostrar
      ControladorVacina.pausa
    else
      puts "======================================="
      puts "O colaborador no cpf #{cpf} já foi vacinado"
      puts "======================================="
      colaborador.mostrar
      ControladorVacina.pausa
    end
  end

  def self.buscar_colaborador
    puts "\nDigite o CPF do colaborador? \n\n"
    cpf = gets.strip
    colaborador = Colaborador.busca_por_cpf(cpf)

    system "clear"
    unless colaborador.nil?
      colaborador.mostrar
      ControladorVacina.pausa
    else
      puts "Colaborador no cpf #{cpf} não encontrado"
      puts "Deseja cadastrar o mesmo ? (S/N)"
      opcao = gets.strip.upcase
      if opcao == "S"
        colaborador = ControladorVacina.incluir_colaborador(cpf)
        puts "======================================="
        colaborador.mostrar
        ControladorVacina.pausa
      end
    end
  end

  def self.listar_colaboradores
    system "clear"
    
    if ControladorVacina.colaboradores.length == 0
      puts "Não temos nenhum colaborador vacinado em nossa base"
      ControladorVacina.pausa
      return
    end

    ControladorVacina.colaboradores.each do |colaborador|
      puts "======================================="
      colaborador.mostrar
    end
    ControladorVacina.pausa
  end

  def self.pausa
    sleep(3)
    system "clear"
  end

  def self.init
    while(true)
      opcao = ControladorVacina.menu
      break if opcao == SAIR_DO_SISTEMA
    end
  end
end

ControladorVacina.init