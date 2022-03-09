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

Cenário: Email não informado
    Dado que o acesso a pá1gina de cadastro
    Quando submeto meu cadastro sem o email.
    Então devo ver Oops ! Informe seu Email. 

Cenário: Senha não informada
    Dado que o acesso a página de cadastro
    Quando submeto meu cadastro sem a senha.
    Então devo ver Oops ! Informe sua senha.

Cenário: Senha divergente
    Dado que o acesso a página de cadastro
    Quando submeto meu cadastro com senha divergente.
    Então devo ver Oops ! Senhas não são iguais.

Cenário: Nenhum campo preenchido
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro sem preencher os campos
    Então devo ver Opps! Informe seu email e sua senha
