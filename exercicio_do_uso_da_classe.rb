#Exercicio do uso da classe:
# Para usar esta classe crie algumas instancias (tipodoanimal = Animal.new), com nomes: LEAO, CACHORRO, GATO, PATO.
# Utilize os métodos de instância criado neste exemplo.
# Utilize as funções de classe para buscar os animais. Obs: Não precisa ter o código que busca em memória. Quero somente validar o uso da classe.
# =============================================================================================


class Animal
    attr_accessor :id, :nome, :raca, :tamanho, :velocidade, :cor, :idade

    def busca_por_id(1)
        
    end

    def busca_por_nome(pato.nome)
    
    end
    
    def buscar_todos
    
    end

    def salvar_lista

    end

end

#Criação de algumas instâncias - tipodoanimal = Animal.new:
leao = Animal.new
leao.id = 1
leao.nome = "Leão"
leao.cor = "Amarelo"
leao.idade = 3
leao.tamanho = 2
leao.velocidade = 10

cachorro = Animal.new
cachorro.id = 2
cachorro.nome = "Rex"
cachorro.cor = "marrom"
cachorro.idade = 2
cachorro.tamanho = 1
cachorro.velocidade = 8

gato = Animal.new
gato.id = 3
gato.nome = "Alfredo"
gato.cor = "branco"
gato.idade = 5
gato.tamanho = 1
gato.velocidade = 7

pato = Animal.new
pato.id = 3
pato.nome = "Alexia"
pato.cor = "preto"
pato.idade = 4
pato.tamanho = 2
pato.velocidade = 8


animal = Animal.buscar_por_id(1)
animais = Animal.buscar_por_nome(pato.nome)
Animal.buscar_todos
