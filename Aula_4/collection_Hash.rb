### NOVO HASH

capitais = Hash.new
    
# Um Hash também pode ser iniciado com vários pares de chave-valor
capitais = {acre: 'Rio Branco', sao_paulo: 'São Paulo'}

# A chave de um Hash pode ser qualquer tipo de dado
hash = {1 => 'Chave do tipo inteiro', true => 'Chave do tipo booleano', [1,2,3] => 'Chave do tipo array'}


# Adicionando itens
capitais[:minas_gerais] = "Belo Horizonte"

# Acessando item
puts capitais[:minas_gerais]

# Retornar as Keys de um hash
capitaos.Keys

# Todos os valores do hash
capitais.values


### EXCLUISÃO
capitais.delete(:acre)


### OBTENDO INFORMAÇÕES

# Tamanho hash
capitais.size

# Verificando se é Vazio
capitais.empty?

