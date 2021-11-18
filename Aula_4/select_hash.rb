#SELECT em HASH

hash = Hash.new
hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'tres', 4 => 'quatro', 5 => 'cinco'}

puts 'selectionando valor  maior que 3 dentro da hash'

selection_key = hash.select do |key, value|
        key > 0
end

puts selection_key