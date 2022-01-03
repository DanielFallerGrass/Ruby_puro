### Métodos Private e Protected
#Por padrão, todos os métodos definidos são públicos. Isso significa que eles podem ser acessados por qualquer um.

#Mas além dos métodos públicos, existem outros dois tipos de métodos chamados private e protected.

#Private
#Método interno de uma classe. Apenas os métodos públicos dessa classe ou de classes descendentes podem chamá-lo.

#O self é o único receptor de um método private

#1- Defina um método abaixo da palavra private, para que ele seja deste tipo

class Foo
  def call_private
    bar
  end

  private

  def bar
    puts "private method"
  end
end

foo = Foo.new

foo.call_private

#Se você tentar chamá-lo a partir da instância foo (foo.bar), receberá uma mensagem de erro informando que este método é privado.