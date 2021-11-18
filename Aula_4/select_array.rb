#SELECT em ARRAYS
array = [1,2,3,4,5,6,7,8,9,10]

selection = array.select do |a|
    a > 4
end

puts selection