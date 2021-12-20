=begin
O ruby oferece um método chamado ```capitalize``` para tornar a primeira letra de uma string maiúscula.

Sabendo disso crie uma lambda que recebe um nome como parâmetro e o imprime com a primeira letra maiúscula.
Esta lambda deverá ser salva dentro de uma variável que será passada como argumento de um método chamado capitalize_name.

Dentro deste método você chamará a lambda duas vezes, passando como parâmetro em cada uma delas um nome diferente.


def capitalize_name(texto)
  first_name = "daniel"
  second_name = "raquel"
  texto.call(first_name)
  texto.call(second_name)
end

texto = lambda { |name |puts name.capitalize}

capitalize_name(texto)
=end

def capitalize_name(lambda_capitalize)
  lambda_capitalize.call('daniel')
  lambda_capitalize.call('raquel')
end

lambda_capitalize = ->(name) { puts name.capitalize }

capitalize_name(lambda_capitalize)
