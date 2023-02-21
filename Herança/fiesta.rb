class Fiesta < Carro #Uma forma de chamar método privado é fazendo herança para depois chamá-lo logo abaixo.
    attr_accessor :cor

    def mostrar_privado
        algo_mais
    end
end