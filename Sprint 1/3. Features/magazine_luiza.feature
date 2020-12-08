# language: pt
Funcionalidade: Carrinho

    Cenário: Adicionar produto buscado ao carrinho
        Dado que esteja na home
        Quando pesquisar por "computador" na barra de pesquisa 
        E adicionar o primeiro produto ao carrinho
        Então o produto deverá ser adicionado ao carrinho