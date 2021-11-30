require 'cpf_cnpj'

def validar
    if CPF.valid?(@cpf_cnpj)
        puts "É um número de CPF válido. (#{@cpf_cnpj})"
    else
        puts "É um número de CPF inválido. (#{@cpf_cnpj})"
    end        
end

puts 'informe um CPF ou CNPJ sem pontuação a ser validado:'
@cpf_cnpj = gets.chomp

resultado = validar

puts resultado