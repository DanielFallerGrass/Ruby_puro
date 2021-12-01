class Animal
    def pular
        puts 'Toing!'
    end

    def dormir
        puts 'ZzZzzz!'
    end
end

class Cachorro < Animal
    def latir
        puts 'Au Au'
    end
end

cachorro = Cachorro.new
cachorro.latir
cachorro.dormir
cachorro.pular