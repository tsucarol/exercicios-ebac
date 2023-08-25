            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da loja EBAC-SHOP


            Cenário: Usuário ou senha inválidos
            Quando eu digitar o usuário "ninguem@ebacshop.com"
            Ou a senha "senhaerrada789"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"


            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve direcionar para a tela de checkout
            E exibir a <mensagem> de boas vindas

            Exemplos:
            | usuario                           | senha       | mensagem             |
            | "alan_comprador@ebacshop.com"     | "teste@123" | "Bem vindo, Alan"    |
            | "sabrina_compradora@ebacshop.com" | "teste@123" | "Bem vinda, Sabrina" |
            | "carol_compradora@ebacshop.com"   | "teste@123" | "Bem vinda, Carol"   |