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

    @busca1
     Cenario: Adicionando a sacola
     Dado que eu esteja com o resultado da busca na tela
     Quando eu clicar no intem que desjo
     Entao clico em "Comprar"

    @busca1
     Cenario: Validar sacola
     Dado que eu esteja na home da shoestock
     Quando eu clicar em Sacola
     Entao visualizo a minha sacola de produto






