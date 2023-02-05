#Aula: 08| Hash do Módulo 24, Lógica de Programação Ruby
#Roberto é dono de uma faculdade, ele irá precisar organizar a grade do curso em alguns meses. Faça um programa que organize os dados do semestre da faculdade do Roberto. O que teremos nesta organização: "nome da matéria", "tema até o mês 6". Colocar nesta estrutura pelo menos 3 matérias.
# Será feito de duas formas.
#Primeira forma, adicionando item a item depois de declarado o array:

# grade = []
# grade << {
#   "Matemática": [
#     "Mês 1 - Título",
#     "Mês 2 - Título",
#     "Mês 3 - Título",
#     "Mês 4 - Título",
#     "Mês 5 - Título",
#     "Mês 6 - Título",
#   ]
# }

# grade << {
#     "Português": [
#        "Mês 1 - Título",
#        "Mês 2 - Título",
#        "Mês 3 - Título",
#        "Mês 4 - Título",
#        "Mês 5 - Título",
#        "Mês 6 - Título",
# ]
# }

# grade << {
#     "Ciências": [
#        "Mês 1 - Título",
#        "Mês 2 - Título",
#        "Mês 3 - Título",
#        "Mês 4 - Título",
#        "Mês 5 - Título",
#        "Mês 6 - Título",
# ]
# }

# puts grade[0][:"Matemática"]

#Segunda forma, adicionando tudo na declaração do array de hashes:

grade = [
  {
    nome: "Matemática",
    meses: [
      "Mês 1 - Título",
      "Mês 2 - Título",
      "Mês 3 - Título",
      "Mês 4 - Título",
      "Mês 5 - Título",
      "Mês 6 - Título",
    ]
  },
  {
    nome: "Português",
    meses: [
      "Mês 1 - Título",
      "Mês 2 - Título",
      "Mês 3 - Título",
      "Mês 4 - Título",
      "Mês 5 - Título",
      "Mês 6 - Título",
    ]
  },
  {
    nome: "Ciências",
    meses:[
      "Mês 1 - Título",
      "Mês 2 - Título",
      "Mês 3 - Título",
      "Mês 4 - Título",
      "Mês 5 - Título",
      "Mês 6 - Título",
    ]
  }
]

grade.each do |g|
  puts "Nome da matéria: #{g[:nome]}"
  puts "Título e meses: #{g[:meses].join(", ")}"
end