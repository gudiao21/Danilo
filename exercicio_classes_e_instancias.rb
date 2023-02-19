# Danilo é um dos professores do "Torne-se um programador". Para fixar o conteúdo de orientação a objeto, solicita uma "classe" onde terá algumas "propriedades e métodos".


# classe Animal
# propriedade e métodos:
# nome, raça, tamanho, velocidade, correr, andar, cor, falar, idade, relacionar, todos_os animais, buscar_animal_por_id, buscar_animal_por_nome.

# Obs:
# Não precisa desenvolver tela, seja simples ... quero só a classe. O que o professor quer é saber se sabemos o que é propriedades, "métodos de classe" e "métodos de instância", não precisando ter nada dentro dos métodos.

animais = []
class Animal
    attr_accessor :nome, :raca, :tamanho, :velocidade, :cor, :idade, :id #"attr_accessor" é um método que cria, via meta programação, o @nome, @raca, @tamanho, ...

    def self.buscar_animal_por_id(id) #"self" caracteriza um método de classe para todas as instâncias(quando se dá um ".new").
    end

    def self.buscar_animais_por_nome(nome)
    end

    def relacionar(id)
    end
end

class todos_os_animais
    #def todos_os_animais
    #end

    def correr
    end
    
    def andar
    end

    def latir
    end
    
end
