# Entidades

    - Usuário
    - Tarefas
    - Projetos
    - Comentários

---

    - Usuário
        - Nome
        - Email
        - Senha
    
    - Tarefas
        - Data máxima
        - Usuário Administrador
        - Data de criação 
        - Descrição da tarefa
        - status
        - Area de atuação da tarefa
        - tipo de tarefa
        
    - Projetos
        - Tarefas relacionadas
        - Usuários 
        - Administradores
        - status do projeto
        - Descrição do projeto
        - Data máxima do projeto
        - Data de criação do projeto
        - Cargo do usuário

    - Comentários
        - Usuário criador
        - Tarefa relacionada
        - Conteudo
        - Data de criação 
        - fixado

## Relacionamentos

    - Tarefa 1:n -> 0:n usuario (usuario criador e/ ou Administrador, podem existir diversos administradores, o primeiro será quem cria a tarefa)
    - Projeto 1:n -> 0:n usuario (usuarios inseridos, cargo dos usuários inseridos)
    - Comentários 1:1 -> 0:n usuario (usuário criaor, fixado por administrador)
    - Tarefa 0:1 -> 1:n projeto (projeto pertencente)
    - Projeto 1:n -> 0:n tarefas (tarefas dentro do projeto)
    - comentários  -> projeto -> Tarefa (comentários só podem ser feitos em uma tarefa que está dentro de um projeto, e não em uma tarefa pessoal)

    Tarefa 0:n ↔ 1:1 Comentário
    
    um usuario pode ter varias tarefas
    uma tarefa pode ter varios usuarios
    um projeto pode ter varios usuarios
    um usuario pode estar em varios projetos
    um usuario pode ter varios comentarios
    um comentario pode ter apenas um usuario
    uma tarefa pode estar em um unico projeto
    um projeto pode ter varias tarefas
    uma tarefa pode ter varios comentarios
    um comentario pode ter apenas uma tarefa

## papeis e responsabilidades

    Um usuário pode ter diferentes permissões, administrador, participante e criador

    onde o participante deve fazer as tarefas direcionadas a ele

    o administrador pode adicionar novas tarefas e direciona-las para cargos especificos, e pode definir o cargo de cada usuario

    e o criador atua como adiministrador comum porém tem permissão de apagar o projeto

    os cargos determinam quais tarefas cada usuario recebera

    todos de um certo cargo receberão todas as tarefas daquele cargo

    qualquer administrador pode adicionar ou remover usuarios ou dar permissões