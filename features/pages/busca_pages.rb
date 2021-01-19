class BuscaPage < SitePrism::Page


    # Elementos mapeados
    element :busca, "[id='search-input']"
    element :pesquisa, "button[title='Buscar']"



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

    
  

end