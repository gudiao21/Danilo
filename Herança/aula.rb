#Este vai ser o arquivo executável.

require 'byebug'

require_relative 'carro'
require_relative 'fiesta'
require_relative 'golf'


fiesta = Fiesta.new
carro = Carro.new
golf = Golf.new

debugger

Carro.new.mostrar