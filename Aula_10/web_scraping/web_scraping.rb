require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('onebitcode.com', 443)

#para fazer chamadas https
https.use_ssl = true

response = https.get('/')

doc = Nokogiri::HTML(response.body)

#Ex 1: extraindo Header 1
h1 = doc.at('h1')
puts h1.content

#Ex 2: extraindo ultimo post
last_post = doc.at('h3 a')
puts last_post.content
puts last_post['href']

#Ex 3: extraindo todos os postos
doc.search('h3 a').each do |a|
  puts a.content
  puts a['href']
  puts ''
end
