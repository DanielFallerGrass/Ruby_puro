# Missão aula 5 (Crie um programa que possua um método que resolva a potência dado um número base e seu expoente. Estes dois valores devem ser informados pelo usuário.)

puts 'informe um número que deseja elevar a uma potência:'
@numero = gets.chomp.to_i

puts 'informe a potência desejada:'
@potencia = gets.chomp.to_i

def calculo
    puts "O resultado do número #{@numero} elevado à #{@potencia} é: " + (@numero**@potencia).to_s
end

calculo