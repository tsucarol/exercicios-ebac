            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a EBAC-SHOP
            E selecione um produto

            Cenário: Quantidade inválida
            Quando eu selecionar a cor "Red"
            E o tamanho "S"
            E a quantidade "11"
            Então deve exibir uma mensagem de erro "Limite de produtos atingido!"

            Cenário: Tamanho inválido
            Quando eu selecionar a cor "Orange"
            E a quantidade "2"
            Então deve exibir uma mensagem de erro "Selecione um tamanho!"

            Esquema do Cenário: Carrinho válido
            Quando eu selecionar <cor>, <tamanho>
            E se <quantidade> de produtos for até 10
            Então deve exibir a confirmação: "Produtos inseridos no carrinho!"

            Exemplos:
            | cor      | tamanho | quantidade |
            | "Blue"   | "XS"    | 2          |
            | "Orange" | "XL"    | 10         |
            | "Red"    | "M"     | 9          |
            | "Blue"   | "S"     | 5          |
            | "Red"    | "L"     | 1          |


            Cenário: Zerar seleções
            Quando eu selecionar as configurações do produto
            E clicar no botão "limpar"
            Então as seleções devem voltar ao estado original
