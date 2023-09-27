            #Language:pt

            Funcionalidade: Tela de cadastro Checkout
            Como cliente da EBAC-Shop
            Quero conluir o meu cadastro
            Para finalizar a minha compra

            Contexto:
            Dado que eu acesse a pagina de Checkout do portal EBAC-Shop

            Cenário: Concluir cadastro
            Quando eu preencher todos os campos obrigatórios marcados com "asterisco"
            E e-mail com formato válido "evandro@ebac.com.br"
            Então deve exibir uma mensagem "cadastro efetuado com sucesso"

            Cenário: Concluir cadastro campos obrigatórios não preenchidos
            Quando eu deixar de preencher algum campo obrigatório marcado com "asterisco"
            E e-mail com formato válido "evandro@ebac.com.br"
            Então deve exibir uma mensagem de erro "Campo obrigatório não preenchido"

            Cenário: Concluir cadastro e-mail com formato inválido
            Quando eu preencher todos os campos obrigatórios marcados com "asterisco"
            E e-mail com formato inválido "evandroebac.com.br"
            Então deve exibir uma mensagem de erro "e-mail inválido"

            Cenário: Concluir cadastro campos vazios
            Quando eu preencher apenas os campos obrigatórios marcados com "asterisco"
            E e-mail com formato válido "evandro@ebac.com.br"
            Então deve exibir uma mensagem de alerta "Campos em branco"

            Esquema do Cenário: Concluir cadastro inválido
            Quando não preencher os <campos obrigatórios>
            E e-mail com formato correto
            Então deve exibir <mensagem> de erro

            Exemplo:
            | Campos obrigatórios | e-mail          | Mensagem                         |
            | Não preenchido      | evn@ebac.com.br | Campo obrigatório não preenchido |
            | preenchido          | evnebac.com.br  | "e-mail inválido"                |
