#language: pt

Funcionalidade:  Criar novo cadastro no site


@user
Cenário: Cadastrar usuário já existente
    Dado que acesso a sessão de login
    E inicio um novo registro
    Quando efetivar o registro
    Então exibir a mensagem de alerta "ERROR! Username already exists!"