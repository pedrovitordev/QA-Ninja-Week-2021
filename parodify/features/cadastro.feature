#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify 
    Quero fazer o meu cadastro 
    Para que eu possa ouvir minhas músicas favoritas

@happy
Cenário: Cadastro
    Dado que acesso a página de cadastro
    Quando submete o meu cadastro com:
        |email              | pedro.paulaqa@manilator.com |
        |senha              | 123456 |
        |senha_confirma     | 123456 |
    Então devo ser redirecionado para a área logada.

Cenario: Email não informado
    Dado que acesso a página de cadastro
    Quando submete o meu cadastro com:
        |email              |        |
        |senha              | 123456 |
        |senha_confirma     | 123456 |
    Então devo ver a mensagem: "Oops! Informe seu email."

Cenario:Senha não informado
    Dado que acesso a página de cadastro
    Quando submete o meu cadastro com:
        |email              | pedro.paulaqa@manilator.com |
        |senha              |                             |
        |senha_confirma     |                             |
    Então devo ver a mensagem: "Oops! Informe sua senha."

Cenario:Senha divergente
    Dado que acesso a página de cadastro
    Quando submete o meu cadastro com:
        |email              | pedro.paulaqa@manilator.com |
        |senha              |    pwd123                   |
        |senha_confirma     |    asd544                   |
    Então devo ver a mensagem: "Oops! Senhas não são iguais."

Cenario:Nenhum campo preenchido
    Dado que acesso a página de cadastro
    Quando submete o meu cadastro com:
        |email              |                             |
        |senha              |                             |
        |senha_confirma     |                             |
    Então devo ver a mensagem: "Oops! Informe seu email e sua senha."
