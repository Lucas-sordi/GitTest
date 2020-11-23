# language: pt
Funcionalidade: Adicionar produto ao carrinho

    Cenário: Buscar produto
        Dado que esteja na home page do site
        Quando pesquisar por computador na barra de pesquisa 
        E clicar no primeiro computador da lista de produtos relacionados à busca
        Então deverá abrir uma página com mais informações sobre o produto selecionado
    Cenário: Adicionar ao carrinho
        Dado que esteja na página onde contém mais informações sobre o produto selecionado
        Quando clicar em "Adicionar à sacola"
        Então o computador deve ser adicionado ao carrinho
        