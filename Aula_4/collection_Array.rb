# Colletion in the Ruby Pure

#### ACRESCENTANDO ITENS A UMA COLLECTION ARRAY
estados = []
estados.push('Rio Grande do Sul')
estados.push('São Paulo')

    # --- ou
estados.push('Paraná', 'Santa Catarina')

puts "\n###Acrescentado"
puts estados 

    # ---- Informando uma posição
estados.insert(0, 'Acre', 'Amapá')
puts "\n### Informando uma posição"
puts estados 



### ACESSANDO ELEMETOS
puts "\n### Acessando o primeiro elementos"
puts estados[1]

    # Acessando intervalos
puts "\n### Acessando intervalo de elementos"
puts estados [1..3]
puts estados[-2]
puts estados[-3..-1]
puts estados.first
puts estados.last



### OBTENDO INFORMAÇÕES (OBS "to_s" converte para string)
puts "Quantidade de elementos com count = " + estados.count.to_s
puts "Quantidade de elementos com length = " + estados.length.to_s

    # Descobrindo se ele é vazio (OBS "to_s" converte para string)
puts "Descobrindo se estado é vazio = " + estados.empty?.to_s

    # Verificar se um item específico está presente
puts '\nVerificando se tem Rio Grande do Sul = ' + estados.include?('Rio Grande do sul').to_s



### EXCLUINDO ELEMENTOS
    # Removendo através de indice
estados.delete_at(2) #lembrando que o array começa em 'zero' então esse será o 3º a ser excluido

    # Exluindo o ultimo item do array estados
estados.pop

    # Excluindo o primeiro item do array estado
estados.shift
