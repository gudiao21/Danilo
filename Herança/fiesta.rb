class Fiesta < Carro #Uma forma de chamar método privado é fazendo herança para depois chamá-lo logo abaixo.
    attr_accessor :cor

    def mostrar_privado
        algo_mais #Método criado em "carro.rb" com restrição "private".
        #Carro.new.algo_mais #Dessa forma não funcionará porque no arquivo "carro.rb", esse método "algo_mais" está como PRIVADO, sendo possível chamá-lo apenas pelo o forma acima, que é citando apenas o nome do método: "algo_mais", que está no arquivo "carro.rb". Sem esquecer que aqui no arquivo "fiesta.rb" tem que herdar a classe Carro, em: "Fiesta < Carro", senão não funcionará!
    end

    def mostrar_protegido
        #algo_mais_protected # Essa chamada funcionará quando for PROTEGIDO.
        Carro.new.algo_mais_protected #Essa chamada funcionará também quando for PROTEGIDO.
    end

end

OBS: Se eu for chamar 