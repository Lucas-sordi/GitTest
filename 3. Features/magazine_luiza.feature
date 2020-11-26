# language: pt
Funcionalidade: Carrinho

    Cenário: Adicionar produto buscado ao carrinho
        Dado que esteja na home page
        Quando pesquisar por computador na barra de pesquisa 
        E selecionar o primeiro computador da lista de produtos
        E clicar em "Adicionar à sacola"
        Então o computador deverá ser adicionado ao carrinho