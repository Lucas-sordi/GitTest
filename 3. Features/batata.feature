# language: pt
Funcionalidade: Imagens

    Cenário: Encontrar imagem
        Dado que esteja na home page do navegador
        Quando pesquisar por batata na barra de pesquisa
        E selecionar "Imagens"
        E clicar na primeira imagem
        Então deverá ser exibida a primeira imagem de batata expandida