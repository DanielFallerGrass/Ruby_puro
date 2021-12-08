=begin
    Um bloco pode ser entendido como uma função anônima, ou seja, uma função sem nome. 
    É definido entre do..end  ou colchetes e da mesma forma que os métodos que você viu até agora, pode receber parâmetros para sua execução.
=end

# 1- Use colchetes para escrever blocos que ocupam apenas uma linha.
puts " teste - 1: "
5.times {puts 'Exec the block'}

# 2- Utilize barras verticais para passar parâmetros para um bloco.
puts "\n teste - 2: "
sum = 0 
numbers = [5, 10, 5]
numbers.each {|number| sum += number}
puts sum

# 3- Em blocos que ocupam várias linhas, faça uso do do..end
puts "\n teste - 3: "
foo = {2 => 3, 4 => 5}

foo.each do |key, value|
    puts "key = #{key}"
    puts "value = #{value}"
    puts "key * value = #{key * value}"
    puts "---"
end

# 4- Um bloco pode ser passado como  argumento implícito de um método.
# Depois, para chamar dentro do método o bloco que foi passado utilize a palavra yield
puts "\n teste - 4: "
def foo
    #Call the block
    yield
    yield
end

foo {puts "Exec the block of example 4"}

# 5- E se o bloco for opcional?
# O ruby oferece um método chamado block_given? para verificar se o bloco foi passado como argumento
puts "\n teste - 5: "
def teste5
    if block_given?
        #Call the block
        yield
    else
        puts "Sem parâmetro do tipo bloco."
    end 
end 

teste5
teste5 {puts "Com parâmetro do tipo bloco."}

# 6- Outra forma de receber blocos como parâmetro é utilizar o símbolo "&""
puts "\n teste - 6: "
def teste6(name, &block)
    @name = name
    block.call
end

teste6('Daniel') {puts "Hellow #{@name}"}

# 7- Você também pode passar um bloco que ocupa várias linhas como parâmetro (bloco dentro de outro bloco)
puts "\n teste - 7: "

def teste7(numbers, &block)
    if block_given?
        numbers.each do |key, value|
            block.call(key, value)
        end
    end
end

numbers = { 2 => 2, 3 => 3, 4 => 4} #sempre Key => Value

teste7 (numbers) do |key, value|
    puts "#{key} * #{value}: = #{key * value}"
    puts "#{key} + #{value}: = #{key + value}"
    puts "---"
end