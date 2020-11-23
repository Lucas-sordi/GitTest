# language: pt
Funcionalidade: Imagens

    Cenário: Encontrar imagem
        Dado que haja conexão com a internet
        E o navegador esteja aberto
        Quando pesquisar por batata na barra de pesquisa
        E clicar em "Imagens"
        E clicar na primeira imagem
        Então deverá aparecer a primeira imagem de batata expandida