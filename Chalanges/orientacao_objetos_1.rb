=begin
Esportista
Métodos
competir -> Imprime a mensagem “Participando de uma competição”

JogadorDeFutebol
Métodos
correr -> Imprime a mensagem “Correndo atrás da bola”

Maratonista
Métodos
correr-> Imprime a mensagem “Percorrendo o circuito”
=end

class Esportista
    def competir
        puts 'Participando de uma competição'
    end
end

class JogadorDeFutebol < Esportista
    def correr
        puts 'Correndo atrás da bola'
    end
end

class Maratonista < Esportista
    def correr
        puts 'Percorrendo o circuito'
    end
end

esportistas = [JogadorDeFutebol.new, Maratonista.new]
esportistas.each do |esportista|
    esportista.correr
end
