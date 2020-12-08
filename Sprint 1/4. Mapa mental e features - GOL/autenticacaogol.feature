#language: pt
Funcionalidade: Autenticação

    Contexto:
        Dado que esteja na home

    Esquema do Cenário: Realizar login
        Quando clicar em "Login"
        E realizar login com "<e-mail>" e "<senha>"
        Então deverá ser exibido o nome do usuário no header

        Exemplos:
        | e-mail          | senha  |
        | teste@teste.com | asd123 |
        | test@gmail.com  | asd321 |
        | test@teste.com  | 1a2s3d |


    Esquema do Cenário: Realizar login exception
        Quando clicar em "Login"
        E realizar login com "<e-mail>" e "<senha>"
        Então deverá ser exibida a mensagem "<mensagem>"

        Exemplos:
        |          e-mail            | senha  |             mensagem              |
        | teste@teste.com            | asd555 | A senha está incorreta.           |
        | emailinexistente@gmail.com | asd123 | Seu login de acesso não é válido. |


    Esquema do Cenário: Realizar cadastro
        Quando clicar em "Cadastrar"
        E realizar cadastro com "<nome>", "<CPF>", "<identidade>", "<e-mail>" e "<senha>"
        Então deverá ser exibido o nome do usuário no header

        Exemplos:
        |    nome      |      CPF       | identidade |       e-mail       | senha  |
        | José Silva   | 123.321.555-01 | 1234567890 | cadastro@teste.com | asd123 |
        | Carlos Souza | 444.222.000-99 | 2020303040 | cadastro@gmail.com | asd321 |


    Esquema do Cenário: Realizar cadastro exception
        Quando clicar em "Cadastrar"
        E realizar cadastro com "<nome>", "<CPF>", "<identidade>", "<e-mail>" e "<senha>"
        Então deverá aparecer a mensagem "Dados inválidos. Revise os campos destacados!"

        Exemplos:
        |    nome      |      CPF       | identidade |       e-mail       | senha  |
        | José Silva   | 123.321.555-01 | AAAAAAAAAA | cadastro@teste.com | asd123 |
        | Carlos Souza | AAA.AAA.AAA-AA |            | cadastro@gmail.com | asd321 |