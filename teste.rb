require 'byebug'
class Carro
  def initialize(nome = "Modelo Padrão") 
    @nome = nome
  end

  def nome=(value) #Setter, aqui se altera o valor da variável "@nome".
    @nome = value
  end

  def nome #getter, aqui não se altera o valor da variável "@nome", ficando com o valor definido no Initialize, nome = "Modelo Padrão".
    @nome
  end

  def pneu=(value)
    @pneu = value
  end

  def pneu
    @pneu
  end
  
  def porta=(value)
    @porta = value
  end

  def porta
    @porta
  end

  def painel=(value)
   @painel = value
  end

  def painel
    @painel
  end

  def roda=(value)
    @roda = value
  end

  def roda
    @roda
  end

  def mostrar(marca="Marca Padrão")
    puts "Marca: #{marca} - Modelo: #{self.nome}"
  end
end

carro = Carro.new

debugger

Carro.new.mostrar