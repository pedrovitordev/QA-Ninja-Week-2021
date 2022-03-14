#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenário: Cadastro
        Dado que acesso a página de cadastro
        Quando submete o meu cadastro com:
            | email          | pedro.paulaqa@manilator.com |
            | senha          | 123456                      |
            | senha_confirma | 123456                      |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submete o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <confirma_senha> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email                       | senha  | confirma_senha | mensagem_saida                       |
            |                             | pwd123 | pwd123         | Oops! Informe seu email.             |
            | pedro.paulaqa@manilator.com |        |                | Oops! Informe sua senha.             |
            | pedro.paulaqa@manilator.com | pwd123 | abs456         | Oops! Senhas não são iguais.         |
            |                             |        |                | Oops! Informe seu email e sua senha. |

    @temp
    Cenario: Validação do campo email
        Quando acesso a página de cadastro  
        Então deve exibir o seguinte css "input[type=email]"