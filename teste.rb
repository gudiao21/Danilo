require 'byebug'

class Carro
    def nome = (value) #é um setter
        @nome = value
    end
    
    def nome
        @nome
    end
    
    def mostrar
        puts @nome
    end
  
end
    debugger

    carro = Carro.new
    carro.nome = "Palio"
    carro.mostrar