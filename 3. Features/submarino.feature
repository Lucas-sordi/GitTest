# language: pt
Funcionalidade: Autenticação

    Cenário: Realizar login
        Dado que esteja na home page
        Quando realizar login com dados cadastrados no banco de dados
        Então as opções de cliente deverão estar disponíveis