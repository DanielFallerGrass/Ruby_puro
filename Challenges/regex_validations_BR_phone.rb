p "(99) 7 4321-1234".match(/[(]\d{2}[)]\s\d{1}\s\d{4}-\d{4}/) #O <\s>  Seria equivalente ao space

p "(99) 7 4321-1234".delete(" ").match(/[(]\d{2}[)]\d{1}\d{4}-\d{4}/) #O <.delete(" ") >  Seria serve nesse caso para remover qualquer espaço em branco como se fosse um <trim> ou <strip>


#CORREÇÃO EXERCÍCIO
texto = 'Olá, tudo bem? Meu whats app é (99) 7 4321-1234'
match = /\(\d{2}\) \d \d{4}-\d{4}/.match(texto)
puts match