#Soma
puts "Soma -5 + 10"
p "Result = #{-5 + 10}"

#Subtração
puts "\nSubtração 1 - 2"
p "Result = #{1 - 2}"

#Multiplicação
puts "\nMultiplicação -2 * -2"
p "Result = #{-2 * -2}"

#Divisão
puts "\nDivisão 10 /2"
p "Result = #{10 /2}"

#Módulo
puts "\nMódulo 10 % 3"
p "Result = #{10 % 3}"

#Expoente
puts "\nExpoente 2**3"
p "Result = #{2**3}"

#Operações de mais de dois números
puts"\nOperação com mais de dois números 2**3 + 2 * 3"
p "Result = #{2**3 + 2 * 3}"


#Brincadeira de operações matemáticas
puts "\nInsera um número inteiro:"
n1 = gets.chomp.to_i

puts "\nInsera outro número inteiro:"
n2 = gets.chomp.to_i

print "\n\tOperações matemáticas:\n"
puts "\t\t1) Soma: #{n1 + n2}"
puts "\t\t2) Subtração: #{n1 - n2}"
puts "\t\t3) Multiplicação: #{n1 * n2}"
puts "\t\t4) Divisão: #{n1 / n2}"
puts "\t\t5) Módulo da divisão: #{n1 % n2}"
puts "\t\t6) Exponenciação: #{n1 ** n2}"