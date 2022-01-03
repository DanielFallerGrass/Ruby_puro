### Métodos Private e Protected
#Por padrão, todos os métodos definidos são públicos. Isso significa que eles podem ser acessados por qualquer um.

#Mas além dos métodos públicos, existem outros dois tipos de métodos chamados private e protected.

#Protected
#A diferença entre ele e o private, é que o método protected pode ter como receptor qualquer instância de sua classe.

class Foo
  def call_private(instance)
    instance.bar
  end

  protected

  def bar
    puts 'private method'
  end
end

instance1 = Foo.new

instance2 = Foo.new

instance_1.call_private(instance1)

instance_1.call_private(instance2)

#Perceba que você pode utilizar o receptor instance para o método bar que é do tipo protected, por isso, tome cuidado ao utilizar um método protected.