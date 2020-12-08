# language: pt
Funcionalidade: Status de Voo
    Contexto:
        Dado que esteja na home
        E esteja logado

    Cenário: Consultar status por origem e destino
        Quando clicar em "Status de Voo"
        E selecionar a opção "Origem e destino"
        E digitar dia, origem e destino válidos
        Então deverá exibir o status de todos os voos filtrados

    Cenário: Consultar status por origem e destino exception
        Quando clicar em "Status de Voo"
        E selecionar a opção "Origem e destino"
        E digitar dia, origem ou destino inválido
        Então deverá exibir a mensagem "Nenhum voo encontrado."


    Cenário: Consultar status por número
        Quando clicar em "Status de Voo"
        E selecionar a opção "Número do voo"
        E digitar um número de voo válido
        Então deverá exibir a mensagem o status do voo informado

    Cenário: Consultar status por número exception
        Quando clicar em "Status de Voo"
        E selecionar a opção "Número do voo"
        E digitar um número de voo inválido
        Então deverá exibir a mensagem "Nenhum voo encontrado."