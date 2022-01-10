require 'rest-client'
require 'json'
require 'nokogiri'

require_relative 'arquivo'

module Tradutor
  # Classe utilizada para traduzir textos
  class Translator
    attr_accessor :text, :original_lang, :translate_lang

    def initialize
      @key = 'trnsl.1.1.20180923T180453Z.61805f17a0ea5944.82bd699c1f732790a3029b2cea41fa74d7753b37'
      @ui = 'pt'
    end

    def lenguages_list
      response = RestClient.post 'https://translate.yandex.net/api/v1.5/tr.json/getLangs', { key: @key, ui: @ui }

      iso_countries = JSON.parse(response)['dirs']
      puts 'Padrões ISO de nomes de países'
      puts iso_countries

      iso_plus_extends_countries = JSON.parse(response)['langs']
      puts "\nEquivalência ISO e nomes de países"
      iso_plus_extends_countries.each do |key, value|
        puts "#{key} = #{value}"
      end
    end

    def traduction
      language = "#{self.original_lang}-#{self.translate_lang}"
      response = RestClient.post 'https://translate.yandex.net/api/v1.5/tr/translate', { key: @key, text: @text, lang: language, format: 'plain'}
      #mock de response 
      #builder = Nokogiri::XML::Builder.new do |xml|
      #  xml.Translation("code= 200" "lang=pt-en") {
      #    xml.text = "Texxxt"
      #  }
      #end

      #doc = Nokogiri::HTML(builder.to_xml)
      h1 = response.at('text')
      puts h1.content

      arquivo = Arquivo::Write.new(@text, h1.content, language)
      arquivo.record

    end
  end
end

def start
  tradutor = Tradutor::Translator.new

  loop do
    #Carregando lista de possíveis traduções
    puts '...Carregando possíveis linguagens para traduções...'
    tradutor.lenguages_list

    puts "\nInforme o texto que deseja traduzir:"
    tradutor.text = gets.chomp

    puts "\nInforme o código ISO de 2 letras da linguagem em que o texto está:"
    tradutor.original_lang = gets.chomp

    puts "\nInforme o código ISO de 2 letras da linguagem que deseja traduzir:"
    tradutor.translate_lang = gets.chomp

    #Traduzindo
    tradutor.traduction

    puts "\nGostaria de continuar traduzindo?[S/n]"
    continuar = gets.chomp.upcase

    if continuar != 'S'
      break
    end
  end
end
