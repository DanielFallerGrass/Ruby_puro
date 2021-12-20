# frozen_string_literal: true

module Person
  # Serviço para receber pessoal jurídica
  class Juridic
    def initialize(nome, cnpj)
      @nome = nome
      @cnpj = cnpj
    end

    def add
      puts "\nPessoa Jurídica Adicionada"
      puts "Nome: #{@nome}"
      puts "CNPJ: #{@cnpj}"
    end
  end

  # Serviço para receber pessoa física
  class Physical
    def initialize(nome, cpf)
      @nome = nome
      @cpf = cpf
    end

    def add
      puts "\nPessoa Física Adicionada"
      puts "Nome: #{@nome}"
      puts "CNPJ: #{@cpf}"
    end
  end
end

Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
Person::Physical.new('John Doe', '425.123.123-13').add
