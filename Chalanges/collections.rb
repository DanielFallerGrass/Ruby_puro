#Missão 1
#Utilizando uma collection do tipo Array, escreva um programa que receba 3 números e no final exiba o resultado de cada um deles elevado a segunda potência.

array = []

3.times do
    p 'Digite um número:'
    array.push(gets.chomp.to_i)
end

new_array = array.map do |a|
            a ** 2
        end    

puts "\nvalores na segunda potência"
puts "#{new_array}"