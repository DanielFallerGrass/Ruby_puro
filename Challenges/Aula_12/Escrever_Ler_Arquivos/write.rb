File.open('shopping-list.txt', 'a') do |line| #Opção <a> é o append informando que não é para sobrescrever mas sim adicionar no final de cada linha
  line.puts('arroz')
  line.puts('feijão')
  line.print('azeite')
  line.print(' de ')
  line.print('oliva')
end

# Perceba que o método puts e print tem o mesmo significado do que em outros exemplos deste curso.
# Os dois inserem valores ao arquivo, com a diferença de que apenas o puts insere uma nova linha após a string.
