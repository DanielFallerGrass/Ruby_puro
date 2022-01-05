require 'rest-client'
require 'json'
require 'nokogiri'

module Tradutor
  # Classe utilizada para traduzir textos
  class Translator
    attr_accessor :text, :original_lang, :translate_lang

    def initialize
      @key = 'trnsl.1.1.20181007T181925Z.92ee3a3c632fe5db.b7735a06fc9fd43d9d0391bf0b29a94d8ce6e8a7'
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
      #response = RestClient.post 'https://translate.yandex.net/api/v1.5/tr/translate', { key: @key, text: @text, lang: language, format: 'plain'}
      #mock de response 
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.text  { 'Test' }
      end
      puts builder.to_xml
      #puts JSON.parse(builder['text'])

    end
  end
end

def start
  tradutor = Tradutor::Translator.new

  loop do
    #Carregando lista de possíveis traduções
    puts '...Carregando possíveis linguagens para traduções...'
    #tradutor.lenguages_list

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

start
