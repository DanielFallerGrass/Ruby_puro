require 'net/http'

req = Net::HTTP::Post.new('/api/users')
# para fazer chamadas https
req.set_form_data({ name: 'Daniel', job: 'Developer' })

response = Net::HTTP.start('reqres.in', use_ssl: true) do |http|
  http.request(req)
end

puts response.code
puts response.message
puts response.body

#O que aconteceu?

#Vocẽ inicializou um objeto Net::HTTP::Post.new() passando como argumento o caminho da url
#Depois informou quais são os  parâmetros a serem enviados com o método set_form_data
#Por fim utilizou o método start para criar uma conexão com o servidor e dentro de um bloco fez a requisição POST
