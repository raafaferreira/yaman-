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
  
  Dado("que eu esteja com o resultado da busca na tela") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("eu clicar no intem que desjo") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao("clico em {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado("que eu esteja na home da shoestock") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando("eu clicar em Sacola") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao("visualizo a minha sacola de produto") do
    pending # Write code here that turns the phrase above into concrete actions
  end