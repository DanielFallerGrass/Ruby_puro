# MAP (Cria um array baseando-se em valores de outro array existente.)

array = [1,2,3,4]
puts "\nExecutando .map multiplicando cada item por 2"

# .map não altera o conteudo do array original mas sim da cópia
new_array = array.map do |a|
            a * 2
        end

puts "array original #{array}"
puts "novo array multiplicado por 2 #{new_array}"


# .map! força que o conteudo do array original seja alterado
array.map! do |a|
            a * 2
        end

puts "\nArray Original"
puts "#{array}"