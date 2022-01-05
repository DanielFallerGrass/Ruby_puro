require 'rest-client'

module Tradutor
  # Classe utilizada para traduzir textos
  class Translator
    def initialize(text, lenguage)
      @key = 'trnsl.1.1.20180922T041958Z.83d0d38d79524d55.a0cf61ce51777dea5cc3cf89a28d4a554588331d'
      @format = 'plain'
    end

    def lenguages_list
      @list = RestClient.get 'https://translate.yandex.net/api/v1.5/tr.json/getLangs', { key: @key }
    end

    def traduction
      response = RestClient.post 'https://translate.yandex.net/api/v1.5/tr/translate', { key: @key, text: @text, lang: @lang, format: @format }

      puts response.code
      puts response.headers
      puts response.body
    end
  end
end

def start
  loop do    
    puts 'Informe o texto que deseja traduzir:'
    @texto = gets.chomp

    puts 'Informe para qual das linguagens abaixo deseja traduzir:'

    trandutor = Tradutor::Translator
  end
