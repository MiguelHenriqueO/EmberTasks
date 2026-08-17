# EmberTasks

## 1. Visão geral

O **EmberTasks** será um sistema de gerenciamento de projetos e tarefas, desenvolvido como um projeto de estudo e portfólio.

A ideia central é permitir que usuários organizem projetos, criem e acompanhem tarefas, colaborem com outros usuários e visualizem o progresso de suas atividades.

O projeto terá como inspiração conceitual o **Firelink Shrine**, de Dark Souls: um ponto central e seguro onde diferentes atividades podem ser organizadas e acompanhadas.

O foco principal do projeto será colocar em prática conhecimentos de desenvolvimento **full stack**, banco de dados, APIs, React, Docker e boas práticas de desenvolvimento.

---

## 2. Objetivos

O projeto tem como principais objetivos:

- Praticar desenvolvimento full stack.
- Desenvolver uma aplicação utilizando frontend e backend separados.
- Trabalhar com uma API REST.
- Praticar modelagem e desenvolvimento de banco de dados.
- Utilizar PostgreSQL.
- Utilizar Prisma como ORM.
- Desenvolver uma interface utilizando React.
- Trabalhar com autenticação e autorização.
- Utilizar Docker para containerização.
- Praticar testes automatizados.
- Desenvolver um projeto adequado para portfólio.
- Aplicar Git e GitHub durante todo o desenvolvimento.

---

## 3. Stack planejada

### Frontend

- React
- TypeScript
- Vite

### Backend

- Node.js
- TypeScript

### Banco de dados

- PostgreSQL
- Prisma

### Infraestrutura

- Docker
- Docker Compose

### Versionamento

- Git
- GitHub

### Testes

A ferramenta de testes será definida durante o desenvolvimento, de acordo com as necessidades do projeto.

---

## 4. Arquitetura geral

A aplicação será dividida principalmente em três partes:

```text
Frontend
    |
    | HTTP / REST
    v
Backend
    |
    | Prisma
    v
PostgreSQL
```

Posteriormente, essas partes deverão ser executadas utilizando Docker.

```text
Docker Compose
      |
      +-- Frontend
      |
      +-- Backend
      |
      +-- PostgreSQL
```

---

## 5. Principais conceitos do sistema

O EmberTasks deverá trabalhar inicialmente com conceitos como:

- Usuários
- Projetos
- Membros de projetos
- Tarefas
- Comentários
- Permissões
- Status
- Prioridades

A estrutura definitiva deverá ser definida durante a etapa de levantamento de requisitos e modelagem.

---

## 6. Usuários

Os usuários serão responsáveis por utilizar o sistema e participar dos projetos.

O sistema deverá considerar:

- Cadastro
- Login
- Autenticação
- Perfil
- Participação em projetos
- Permissões
- Associação com tarefas e comentários

As regras exatas de acesso deverão ser definidas durante o levantamento de requisitos.

---

## 7. Projetos

Um projeto será uma unidade de organização dentro do sistema.

Um projeto deverá permitir:

- Identificação do projeto
- Descrição
- Usuário responsável
- Participação de outros usuários
- Organização de tarefas
- Acompanhamento do progresso

As regras sobre criação, edição, exclusão e participação deverão ser definidas posteriormente.

---

## 8. Tarefas

As tarefas representarão as atividades que precisam ser realizadas dentro dos projetos.

Uma tarefa poderá possuir informações como:

- Título
- Descrição
- Status
- Prioridade
- Prazo
- Projeto relacionado
- Usuário responsável
- Data de criação
- Data de atualização

A definição final dos campos e regras deverá surgir durante a modelagem do sistema.

---

## 9. Comentários

As tarefas poderão possuir comentários para permitir comunicação e registro de informações relacionadas à atividade.

Será necessário definir:

- Quem pode comentar
- Quem pode editar comentários
- Quem pode excluir comentários
- Se alterações serão registradas
- Como os comentários serão associados aos usuários e às tarefas

---

## 10. Frontend

O frontend será desenvolvido utilizando React.

Inicialmente, o sistema deverá possuir telas relacionadas a:

```text
Login
Cadastro
Dashboard
Projetos
Detalhes do projeto
Tarefas
Detalhes da tarefa
Perfil
```

A interface deverá evoluir gradualmente.

A prioridade inicial será construir uma aplicação funcional antes de trabalhar em detalhes visuais.

---

## 11. Backend

O backend será responsável por:

- Disponibilizar a API REST
- Receber requisições do frontend
- Validar dados
- Aplicar regras de negócio
- Realizar autenticação
- Controlar permissões
- Interagir com o banco de dados
- Retornar respostas apropriadas
- Tratar erros

Antes da integração com o React, a API deverá ser testada utilizando uma ferramenta como o Insomnia.

---

## 12. Banco de dados

O banco utilizado será PostgreSQL.

O Prisma será utilizado para trabalhar com o banco e controlar as migrations.

A modelagem deverá ser feita antes da implementação definitiva do banco.

O processo esperado será:

```text
Requisitos
    |
    v
Entidades
    |
    v
Relacionamentos
    |
    v
Modelo do banco
    |
    v
Schema Prisma
    |
    v
Migrations
    |
    v
PostgreSQL
```

---

## 13. Docker

A utilização do Docker será introduzida depois que a aplicação estiver funcionando localmente.

O objetivo será containerizar os principais componentes do sistema:

```text
Frontend
Backend
PostgreSQL
```

O Docker Compose será utilizado para facilitar a execução conjunta dos serviços.

Também deverão ser considerados durante essa etapa:

- Variáveis de ambiente
- Volumes
- Redes
- Persistência do banco
- Comunicação entre containers

---

## 14. Testes

Após a implementação das funcionalidades principais, serão adicionados testes.

O projeto deverá considerar testes para:

- Regras de negócio
- API
- Integração com banco
- Componentes do frontend
- Fluxos importantes da aplicação

A estratégia de testes será definida conforme o projeto evoluir.

---

## 15. Segurança

Depois que a aplicação principal estiver funcionando, deverão ser consideradas questões como:

- Hash de senhas
- Autenticação
- Autorização
- Proteção de rotas
- Validação de entrada
- CORS
- Variáveis de ambiente
- Tratamento de erros
- Controle de acesso aos recursos

---

## 16. CI/CD e deploy

Como etapa final, o projeto poderá incorporar:

```text
GitHub
    |
    v
GitHub Actions
    |
    +-- Testes
    |
    +-- Build
    |
    +-- Verificações
    |
    v
Deploy
```

Essa etapa não será prioridade inicialmente.

O objetivo é primeiro construir uma aplicação funcional e depois automatizar seu ciclo de desenvolvimento.

---

# 17. Roadmap

O desenvolvimento seguirá aproximadamente esta ordem:

```text
1. Levantamento de requisitos
        |
        v
2. Modelagem do sistema
        |
        v
3. Modelagem do banco
        |
        v
4. Prisma + PostgreSQL
        |
        v
5. Backend / API
        |
        v
6. Autenticação e autorização
        |
        v
7. Testes da API
        |
        v
8. Frontend / React
        |
        v
9. Integração frontend + backend
        |
        v
10. Docker
        |
        v
11. Testes automatizados
        |
        v
12. Segurança e melhorias
        |
        v
13. CI/CD
        |
        v
14. Deploy
```

---

# 18. Primeira etapa

O primeiro objetivo do projeto será criar a especificação do sistema.

Antes de escrever código, deverão ser definidos:

- Objetivo
- Público-alvo
- Tipos de usuários
- Funcionalidades
- Projetos
- Tarefas
- Comentários
- Permissões
- Regras de negócio
- Fluxos principais

Nesta etapa não é necessário definir:

- React
- Prisma
- Docker
- Endpoints
- Estrutura de pastas
- Código

A prioridade será entender **o que o EmberTasks precisa fazer** antes de decidir **como ele será implementado**.

---

# 19. Filosofia do projeto

O EmberTasks será desenvolvido como um projeto de aprendizado, portanto as decisões técnicas deverão ser tomadas de forma consciente.

O objetivo não é simplesmente fazer a aplicação funcionar.

O objetivo é entender:

> Por que essa tecnologia foi utilizada?

> Por que essa estrutura foi escolhida?

> Como as partes do sistema se relacionam?

> Quais problemas essa decisão resolve?

> Quais problemas ela pode causar?Seu primeiro desafio

Não comece pelo React.

Também não comece pelo Docker.

Seu primeiro objetivo será responder:

"O que exatamente o TaskFlow precisa fazer?"

Abra um README no projeto e comece a documentar.

Tente definir sozinho:

1. Objetivo

Em uma ou duas frases:

Qual problema o TaskFlow resolve?

2. Usuários

Pergunte:

Quem pode utilizar o sistema?
Precisa existir administrador?
Existem diferentes níveis de permissão?
O que um usuário comum pode fazer?
3. Projetos

Pense:

Quem pode criar um projeto?
Quem pode editar?
Como alguém entra em um projeto?
Pode existir mais de um responsável?
4. Tarefas

Defina:

Quem pode criar?
Quem pode editar?
Quem pode excluir?
Uma tarefa pode ter apenas um responsável?
Quais estados ela pode ter?
Pode ter prazo?
Pode ter prioridade?
5. Comentários

Pense:

Quem pode comentar?
Quem pode apagar um comentário?
Comentários podem ser editados?

Dessa forma, o projeto servirá não apenas como aplicação de portfólio, mas também como exercício prático de engenharia de software e desenvolvimento full stack.

---

Seu primeiro desafio

Não comece pelo React.

Também não comece pelo Docker.

Seu primeiro objetivo será responder:

"O que exatamente o TaskFlow precisa fazer?"

Abra um README no projeto e comece a documentar.

Tente definir sozinho:

1. Objetivo

Em uma ou duas frases:

Qual problema o TaskFlow resolve?

2. Usuários

Pergunte:

Quem pode utilizar o sistema?
Precisa existir administrador?
Existem diferentes níveis de permissão?
O que um usuário comum pode fazer?
3. Projetos

Pense:

Quem pode criar um projeto?
Quem pode editar?
Como alguém entra em um projeto?
Pode existir mais de um responsável?
4. Tarefas

Defina:

Quem pode criar?
Quem pode editar?
Quem pode excluir?
Uma tarefa pode ter apenas um responsável?
Quais estados ela pode ter?
Pode ter prazo?
Pode ter prioridade?
5. Comentários

Pense:

Quem pode comentar?
Quem pode apagar um comentário?
Comentários podem ser editados?