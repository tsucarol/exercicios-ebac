            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Contexto:
            Dado que eu acesse a calculadora

            Cenário: Soma de 2 números
            Quando eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: Soma de 2 números
            Quando eu somar <num1> mais <num2>
            Então deve exibir o <total>

            Exemplos:
            | num1 | num2 | total |
            | 22   | 7    | 29    |
            | 16   | 8    | 24    |
            | 21   | 23   | 44    |
            | 29   | 14   | 43    |
            | 14   | 18   | 32    |
            | 29   | 22   | 51    |
            | 30   | 2    | 32    |
            | 20   | 5    | 25    |
            | 10   | 25   | 35    |
            | 2    | 6    | 8     |
            | 4    | 24   | 28    |
            | 12   | 23   | 35    |
            | 6    | 6    | 12    |
            | 6    | 28   | 34    |
            | 24   | 15   | 39    |
            | 19   | 8    | 27    |
            | 19   | 16   | 35    |
            | 9    | 27   | 36    |
            | 26   | 30   | 56    |
            | 11   | 9    | 20    |
