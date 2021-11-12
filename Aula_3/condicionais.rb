# IF ELSIF ELSE
day = 'Monday'
 
if day == 'Sunday' 
    lunch = 'special'
elsif day == 'Saturday'
    lunch = 'special'
else
    lunch = 'normal'
end
 
puts "Lunch is #{lunch} today"

# UNLESS
product_status = 'closed'
 
unless product_status == 'open'
  check_change = 'can'
else
  check_change = 'can not'
end
 
puts "You #{check_change} change the product"

#CASE
puts "Digite um mês do ano: "

month  = gets.chomp.to_i

case month
when 1..3
    puts "Início do ano"
when 4..6
    puts "Primeira metade do ano"
when 7..9
    puts "Segunda metade do ano"
else
    puts "Final do ano"
end