require 'cpf_cnpj'

puts 'informe um CPF ou CNPJ sem pontuação a ser validado:'
@cpf_cnpj = gets.chomp

def validar
    @result = CPF.valid?(@cpf_cnpj)
end

validar

if @result == true
    puts "É um número de CPF válido. (#{@cpf_cnpj})"
else
    puts "É um número de CPF inválido. (#{@cpf_cnpj})"
end