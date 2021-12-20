# 1 - Pode ser guardada em uma variável para ser chamada futuramente com o método "call".
first_lambda = lambda { puts "my first lambda" }
first_lambda.call
first_lambda.call

# 2 - Você pode abreviar a declaração de uma lambda da seguinte forma "->"
first_lambda = -> { puts "my first lambda" }
first_lambda.call

# 3 - Uma lambda também pode receber parâmetros para sua execução (Perceba que você executou um block dentro de uma lambda)
firt_lambda = -> (nomes) {names.each { |name |puts name} }

nomes = ["joão", "maria", "pedro"]

first_lambda.call(nomes)

# 4 - Em lambdas que ocupam várias linhas, não declare a lambda de forma abreviada e utilize o do.end
my_lambda = lambda do |numbers|
    index = 0
    puts 'Número atual + Próximo número'
    numbers.each do |numbers|
        return if numbers[index] == numbers.last
        puts "(#{numbers[index]}) + (#numbers[index + 1]})"
        puts numbers[index] + numbers [index + 1]
        index += 1
    end
end