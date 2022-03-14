#language: pt

Funcionalidade: Login
        Sendo um usuário previamente cadastrado
        Quando acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify

    @smoke
    Cenario: Login do Usuários

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "pedro.honorioqa@manilator.com" e "pwd123"
        Então devo ser redirecionado para a área logada


        Esquema do Cenário: Tentativa de login

        Dado que acesso a página login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Oops! Email e/ou senha incorretos."

            Exemplos:
            | email              | senha  | 
            | pepeto@404.com.br  | abc123 |
         