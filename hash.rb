#Roberto é dono de uma faculdade, ele irá precisar organizar a grade do curso em alguns meses. Faça um programa que organize os dados do semestre da faculdade do Roberto. O que teremos nesta organização: "nome da matéria", "tema até o mês 6". Colocar nesta estrutura pelo menos 3 matérias.

materia = {}
materia["matemática"] = ["mês 1", "mês 2", "mês 3", "mês 4", "mês 5", "mês 6"]
materia["matemática"] = ["mês 1"] << ["tema 1"]
materia["matemática"] = ["mês 2"] << ["tema 2"]
materia["matemática"] = ["mês 3"] << ["tema 3"]
materia["matemática"] = ["mês 4"] << ["tema 4"]
materia["matemática"] = ["mês 5"] << ["tema 5"]
materia["matemática"] = ["mês 6"] << ["tema 6"]

p materia["matemática"]