#language: pt
#encoding: utf-8



Funcionalidade: Realizar compra na shoestock
  Eu como usuário 
  Quero acessar o site shoestock
  Para poder realizar uma compra

    @busca
     Cenario: Realizar busca no site
     Dado que eu esteja na home do site
     Quando preencher o campo de busca
     Entao visualizo os resultados 'RESULTADOS DE BUSCA PARA "CARTEIRA"'

    @busca
     Cenario: Adicionando a sacola
     Dado que eu esteja na home do site
     Quando preencher o campo de busca
     E eu clicar no intem que desejo
     E clico em "Comprar"
     Entao visualizo os detalhes da compra 'Carteira Couro Shoestock Recorte Masculina'







