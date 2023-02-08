#Aula: 11 | Funções e Funções recursivas, que se encontra em: https://comunidadefechadatorneseumprog.club.hotmart.com/lesson/k45n1oGNel/11-or-funcoes-e-funcoes-recursivas

#require 'byebug'

#debugger

def mostrar_na_tela(numero)
    a = "#{numero} - passado."
    puts a
    mostrar_na_tela(numero + 1) if numero < 10
end

mostrar_na_tela(1)