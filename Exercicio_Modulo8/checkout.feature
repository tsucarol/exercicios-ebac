            #language: pt

            Funcionalidade: Cadastro e checkout do carrinho
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout da compra na EBAC-SHOP

            Cenário: Email inválido
            Quando eu preencher o cadastro com os campos obrigatórios
            Mas adicionar "@@" no <email>
            E clicar em "Finalizar compra"
            Então deve aparecer a mensagem de erro "Email inválido. Verifique as informações novamente"

            Cenário: Campo obrigatório vazio
            Quando eu preencher o cadastro com <nome> e <email>
            E clicar em "Finalizar compra"
            Então deve aparecer a mensagem de erro "Preencha todos os campos obrigatórios!"

            Esquema do cenário: Compra finalizada
            Quando eu preencher o dados <nome>, <sobrenome>, <país>, <endereço>, <cidade>, <CEP>, <telefone>, <email>
            E clicar no botão "Finalizar compra"
            Então deve aparecer a <mensagem> de confirmação

            | nome      | sobrenome   | nome da empresa              | país     | endereço                  | complemento      | cidade                 | CEP       | telefone       | email                        | mensagem                                   |
            | "Antonio" | "Rodrigues" | "Rodrigues Modas "           | "Brasil" | "Rua do Antônio, 20"      | "Apartamento 93" | "São Paulo-SP"         | 00000-000 | "112234-5678"  | "antonio@ebac.com "          | "Compra finalizada. Verifique seu e-mail!" |
            | "Anabel"  | "Ferraz"    |                              | "Brasil" | "Rua da Anabel, 77"       |                  | "Crato-CE"             | 11111-111 | "8866945-6578" | "anabel@ebac.com"            | "Compra finalizada. Verifique seu e-mail!" |
            | "Trevor"  | "Philips"   | "Trevor Philips Enterprises" | "Canadá" | "Trevor Avenue, 20"       |                  | "Montréal, QC"         | H2Y1B5    | "555-555-5555" | "trevorenterprises@ebac.com" | "Compra finalizada. Verifique seu e-mail!" |
            | "Luna"    | "Rivera"    |                              | "México" | "Avenida de la Luna, 156" | "Casa 2"         | "Álvaro Obregón, CDMX" | 01000     | "551234-1234"  | "luna@ebac.com "             | "Compra finalizada. Verifique seu e-mail!" |