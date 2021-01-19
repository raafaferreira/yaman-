class BuscaPage < SitePrism::Page


    # Elementos mapeados
    element :busca, "#search-input"
    element :pesquisa, "button[title='Buscar']"
    element :produto, :xpath, "//*[@id='item-list']/div[1]/div[1]/div[1]/a/img"
    element :comprar, "#buy-button-now"

    # element :validacao, ".tcnews icon-tcnews"
    # Metodos com as acoes

    def clickbusca
        busca.click
    end

    def preencherbusca
        busca.set "Carteira"
    end

    def clickpesquisar
        pesquisa.click
    end

    def clickproduto
        produto.click
    end
    
    def clickcomprar
        comprar.click        
    end

end