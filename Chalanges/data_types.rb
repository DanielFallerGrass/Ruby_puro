#String
puts var_String = 'ABC'
p var_String.class 

#Integer
puts "\n#{var_Integer = 123}"
p var_Integer.class 
    
#Float
puts "\n#{var_Float = 123.45}"
p var_Float.class

#Boolean
puts "\n#{var_Boolean = true}"
p var_Boolean.class

#Array
puts "\n#{var_Array = ["A", 1, "test Array", "B", 2]}"
p var_Array.class
p var_Array[0]

#Hash
puts "\n#{var_Hash = {course: 'ruby', language: 'português', locale: 'onebitcode.com'}}"
p var_Hash.class
p var_Hash[:locale]

#Symbol (Símbolo é um tipo de dado semelhante a String, com a diferença de que ele é um objeto imutável. Duas strings idênticas podem ser objetos diferentes, mas um símbolo é apenas um objeto, ocupando sempre o mesmo espaço na memória.)
puts "\n#{var_Symbol = :ruby_symbol}"
p var_Symbol.object_id

puts "\n#{var_Symbol_2 = :ruby_symbol}"
p var_Symbol_2.object_id