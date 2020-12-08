#language: pt
Funcionalidade: Autenticação

    Contexto:
        Dado que esteja na home

    Esquema do Cenário: Realizar login
        Quando realizar login com "<e-mail>" e "<senha>"
        Então deverá ser exibido o nome do usuário no header

        Exemplos:
        | e-mail          | senha  |
        | teste@teste.com | asd123 |
        | test@gmail.com  | asd321 |
        | test@teste.com  | 1a2s3d |


    Esquema do Cenário: Realizar login exception
        Quando realizar login com "<e-mail>" e "<senha>"
        Então deverá ser exibida a mensagem "E-mail ou senha incorretos"

        Exemplos:
        | e-mail            | senha  |
        | teste@teste.com   | asd555 |
        | testing@gmail.com | asd123 |
