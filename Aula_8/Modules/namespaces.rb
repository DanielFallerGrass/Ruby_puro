module ReverseWorld
  def self.puts text
    print "\n" +text.reverse.to_s
  end

  class Imprimir
    def call text
      print "\n" + text
      print "\n---Imprimir"
    end
  end
end

module NormalWorld
  def self.puts text
    print "\n" + text
  end
end

ReverseWorld::puts "O resultado é esse no Reverse"
NormalWorld::puts "O resultado é esse no Normal"

ReverseWorld::Imprimir.new.call "Imprimindo um texto atráves de uma classe de um método dentro de um módulo"