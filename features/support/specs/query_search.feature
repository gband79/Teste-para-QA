#language: pt

Funcionalidade:  Busca no Banco de Questões


Contexto:
    Dado que navego para a página de busca do banco de questões
    E digito "Science: Computers" no campo de busca

@question
Cenário: Busca por questão inexistente
    Quando clico no botão de buscar
    Então visualizo uma mensagem de erro com o texto "No questions found."

@category
Cenário: Busca da categoria "Science: Computers"
    E pesquisar por categoria
    Quando clico no botão de buscar
    Então deve retornar a listagem com 25 itens
    E exibir o controle de paginação


    

    
    