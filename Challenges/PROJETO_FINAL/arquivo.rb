module Arquivo
  class Write
    def initialize(frase, traducao, language)
      @phrase = frase
      @translate = traducao
      @language = language
    end

    def record
      File.open("#{Time.now}.txt", 'a') do |line|
        line.puts "#{@phrase} /  #{@translate}"
      end
    end
  end
end
