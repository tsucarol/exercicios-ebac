            #language: pt

            Funcionalidade: Cadastro e checkout do carrinho
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha alan_comprador

            Contexto:
            Dado que eu acesse a página de checkout com os seguintes dados:

            | nome    | sobrenome | nome da empresa            | país   | endereço                | complemento    | cidade               | CEP       | telefone     | email                      |
            | Antonio | Rodrigues | Rodrigues Modas            | Brasil | Rua do Antônio, 20      | Apartamento 93 | São Paulo-SP         | 00000-000 | 112234-5678  | antonio@ebac.com           |
            | Anabel  | Ferraz    |                            | Brasil | Rua da Anabel, 77       |                | Crato-CE             | 11111-111 | 8866945-6578 | anabel@ebac.com            |
            | Trevor  | Philips   | Trevor Philips Enterprises | Canadá | Trevor Avenue, 20       |                | Montréal, QC         | H2Y1B5    | 555-555-5555 | trevorenterprises@ebac.com |
            | Luna    | Rivera    |                            | México | Avenida de la Luna, 156 | Casa 2         | Álvaro Obregón, CDMX | 01000     | 551234-1234  | luna@ebac.com              |

            Cenário: Compra finalizada
            Quando eu preencher o cadastro com os campos obrigatórios
            E clicar em "Finalizar compra"
            Então deve aparecer a mensagem "Compra efetuada com sucesso!"

            Cenário: Email inválido
            Quando eu preencher o cadastro com os campos obrigatórios
            Mas adicionar "@@" no <email>
            E clicar em "Finalizar compra"
            Então deve aparecer a mensagem de erro "Email inválido. Verifique as informações novamente"

            Cenário: Campo obrigatório vazio
            Quando eu preencher o cadastro com <nome> e <email>
            E clicar em "Finalizar compra"
            Então deve aparecer a mensagem de erro "Preencha todos os campos obrigatórios!"