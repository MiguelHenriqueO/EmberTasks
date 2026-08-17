# Objetivo

    O objetivo do EmberTasks, além de testar meus conhecimentos e por em prática, criar uma ferramenta em que você possa anotar suas tarefas e objetivos colocar um prazo máximo, onde de tempo em tempo te lembraremos de concluir suas tarefas antes do prazo máximo

    também queremos que suas tarefas possam ser vistas de qualquer lugar e que todas as plataformas sejam sincronizadas por usuário, planejo colocar a funcionalidade de tarefa em grupo, onde será definido um administrador da tarefa que pode convidar outros usuários para aquela tarefa, onde eles podem comentar sobre novas atualizações, problemas durante a tarefa e planejamentos

# Publico Alvo

    Meu público alvo são todos aqueles que tem dificuldade em manter suas tarefas organizadas na escola, trabalho, faculdade e vida pessoal

# Tipos de usuários

    pessoas com dificuldades em organizar suas tarefas,
    pessoas que gostam de planejar sua rotina

# Funcionalidades

    - Adicionar tarefas
    - Remover Tarefas
    - Definir prazo de conclusão
    - Alterar informações da tarefa
    - Notificação para lembrar o usuário sobre a tarefa
    - Marcar tarefa como concluida
    - Sincronização entre dispositivos
    - Login do usuário
    - criar conta
    - apagar conta
    - Calendário com tarefas prazo máximo de todas as tarefas

---
    
    - Criar projeto
    - Adicionar Tarefa a um projeto
    - Editar projeto
    - Remover tarefa do projeto
    - marcar projeto como finalizado
    - Apagar projeto
    - Prazo máximo de projeto 
    - Cargo de usuário
    - Apenas certos usuários receberão certas tarefas
    - Convidar Usuarios para projeto
    - Remover Usuario do projeto
    - Administrado do projeto
    - comentários dos usuários e administradores
    - Nomear usuário como administrador
    - Apagar comentários
    - Fixar comentários

# Projetos

    Projetos serão um aglomerado de tarefas que um grupo deve realizar em conjunto

    onde haverá o administrador que definirá cada cargo dos usuários que receberão as tarefas desse projeto de acordo com seu cargo

    Ex: um usuário com cargo de Back-End só vizualisará tarefas de back-end

    tarefas de um projeto são exclusivas do projeto

# Tarefas

    Serão uma única tarefa/objetivo a serem cumpridos em um prazo definido pelo criador da tarefa

    podem ter data máxima alterada, podem ser marcadas como finalizadas

    tarefas pessoais podem existir independente de projetos 

    tarefas existentes podem ser adicionadas a projetos já existentes

# Comentários

    Pequenas mensagens que podem ser deixadas por todos os usuários para manter os demais atualizados sobre uma situação ou dificuldade

    podem ser feitos por todos os usuários de um projeto, podem ser fixados ou removidos por um administrador

# Permissões

    Qualquer um pode criar uma tarefa independente, mas dentro de um projeto somente os administradoes podem criar tarefas

    Todo usuário que cria uma tarefa é definido como administrador para aquela tarefa em especifico

    Quando criado um projeto o criador será o administrador inicial podendo nomear outros como administradores

    Usuários comums poderão:
        - vizualizar a tarefa
        - deixar comentário sobre a tarefa 
        - marcar a tarefa como finalizada (sendo necessário justificativa)


    Administradores poderão além de tudo que usuário comum podem:

        -Criar novas tarefas
        -apagar tarefas
        - remover usuários
        - adicionar usuários
        - definir usuários como administradores
        - apagar comentarios
        - fixar comentários
        - definir cargos para usuários
        - mudar cargos de usuários
        - definir cargos para tarefas
    
# Regras de Negócio

    - para que a tarefa seja dada como concluida é necessário que um administrador veja a justificativa do usuário e confirme
    - somente o administrador pode fixar/remover mensagems
    - somente administradores podem convidar ou remover usuários
    - todos precisam fazer login ao entrar na ferramenta
    - tarefas ao passarem do prazo máximo e não serem concluidas devem passar pelo administrador para verificação

# Fluxos Principais

    Login
    Criação de tarefa
    definir objetivo da tarefa
    definir prazo máximo da tarefa
    alteração da tarefa
    salva alterações

    ou

    login
    acessa projeto
    vizualisa somente tarefas do seu cargo
    trabalha na tarefa
    marca como finalizada ao finalizar
    salva
    informa a administrador
    tarefa finalizada
    

