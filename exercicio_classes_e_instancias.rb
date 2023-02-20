# Danilo é um dos professores do "Torne-se um programador". Para fixar o conteúdo de orientação a objeto, solicita uma "classe" onde terá algumas "propriedades e métodos".


# classe Animal
# propriedade e métodos:
# nome, raça, tamanho, velocidade, correr, andar, cor, falar, idade, relacionar, todos_os animais, buscar_animal_por_id, buscar_animal_por_nome.

# Obs:
# Não precisa desenvolver tela, seja simples ... quero só a classe. O que o professor quer é saber se sabemos o que é propriedades, "métodos de classe" e "métodos de instância", não precisando ter nada dentro dos métodos.
# =============================================================================================
# Exercício relacionado ao vídeo: 17|POO - FIXAÇÃO DOS CONCEITOS SOBRE MÉTODOS DE CLASSE:

animais = []

class ControladorAnimal
    attr_accessor :nome, :raca, :tamanho, :velocidade, :cor, :idade, :id #"attr_accessor" é um método que cria, via meta programação, o @nome, @raca, @tamanho, ...

    def self.buscar_animal_por_id(id) #"self" caracteriza um método de classe para todas as instâncias(quando se dá um ".new")."animal" no singular, por se tratar de apenas um "id"(chave-primária) por animal.
    end

    def self.buscar_animais_por_nome(nome) #"animais" no plural por se tratar da possibilidade de ser mais de um animal com o mesmo nome.
    end

    def self.relacionar
    end
end

class TodosAnimais   
    
    def correr
    end
    
    def andar
    end

    def latir
    end

    def mostrar
    end    
end

# OBS: Às vezes será melhor, para evitar o problema de "merge" e consequentemente de código, será melhor um desacoplamento de funções para melhor integridade do códido, segregando o mesmo.
# OBS2: Ver sobre"ACOPLAMENTO FORTE" dentro da comunidade, no assunto: "DESAFIO DE ORIENTAÇÃO OBJETO AVANÇADO DO C#".