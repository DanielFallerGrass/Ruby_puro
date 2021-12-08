require_relative 'mercado'
require_relative 'produto'

class App
    produto = Produto.new
    produto.nome = 'Playstation'
    produto.preco = 5000

    mercado = Mercado.new(produto.nome, produto.preco)
    mercado.comprar
end