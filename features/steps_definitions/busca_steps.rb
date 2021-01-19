Dado("que eu esteja na home do site") do
    home.load
    busca.clickbusca
 end
  
  Quando("preencher o campo de busca") do
    busca.preencherbusca
    busca.clickpesquisar
  end
  
  Entao("visualizo os resultados {string}") do |validation|
   expect(page).to have_content(validation)
  end
  
  Quando("eu clicar no intem que desejo") do
    busca.clickproduto
  end
  
  Entao("clico em {string}") do |string|
    busca.clickcomprar
  end
  
  Entao("visualizo os detalhes da compra {string}") do |resumo|
    expect(page).to have_content(resumo)
  end