CREATE DATABASE EmberTasks;

CREATE TABLE usuario (
	idUsuario int GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,	
	nome varchar(80) NOT NULL,
	email varchar(80) unique NOT NULL,
	senha varchar(255) NOT NULL
);

CREATE TABLE projeto(
	idProjeto int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	nome varchar(80) NOT NULL,
	descricao varchar(250) NOT NULL,
	status varchar(80) NOT NULL,
	dataCriacao date NOT NULL,
	dataMax date NOT NULL,
	criadorID int NOT NULL references usuario(idUsuario)
);

CREATE TABLE usuarioProjeto (
	idUserProj int GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
	idUsuario int NOT NULL REFERENCES usuario(idUsuario),
	idProjeto int NOT NULL REFERENCES projeto(idProjeto),
	cargo varchar(80) NOT NULL,
	administrador boolean NOT NULL default false,

	unique (idUsuario,idProjeto)
);

CREATE TABLE tarefa (
	idTarefa int GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
	descricao varchar(250) NOT NULL,
	status varchar(50) NOT NULL,
	area_atuacao varchar(80) NOT NULL,
	tipo varchar(50) NOT NULL,
	dataCriacao date NOT NULL,
	dataMax date NOT NULL,
	idProjeto int  references projeto(idProjeto),
	idCriador int  references usuario(idUsuario)
);

CREATE TABLE comentario (
	idComentario int GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
	conteudo varchar(250) NOT NULL,
	dataCriacao date NOT NULL,
	fixado boolean NOT NULL default false,
	idUsuario int NOT NULL references usuario(idUsuario),
	idTarefa int NOT NULL references tarefa(idTarefa)
);

CREATE TABLE tarefaADM (
	idAdm int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	idUsuario int NOT NULL references usuario(idUsuario),
	idTarefa int NOT NULL references tarefa(idTarefa),

	unique (idUsuario,idTarefa)
);


INSERT INTO usuario (nome, email, senha)
VALUES
    ('Miguel', 'miguel@email.com', 'senha_hash_1'),
    ('João', 'joao@email.com', 'senha_hash_2'),
    ('Pedro', 'pedro@email.com', 'senha_hash_3'),
    ('Maria', 'maria@email.com', 'senha_hash_4');

select * from usuario

INSERT INTO projeto
    (nome, descricao, status, dataCriacao, dataMax, criadorID)
VALUES
    (
        'Sistema Web',
        'Desenvolvimento de um sistema web para gerenciamento de clientes',
        'EM_ANDAMENTO',
        '2026-08-01',
        '2026-09-30',
        1
    ),
    (
        'Aplicativo Mobile',
        'Desenvolvimento de aplicativo mobile para controle de tarefas',
        'EM_ANDAMENTO',
        '2026-08-05',
        '2026-10-15',
        2
    );

select * from projeto

INSERT INTO usuarioProjeto
    (idUsuario, idProjeto, cargo, administrador)
VALUES
    (1, 1, 'Back-End', TRUE),
    (2, 1, 'Front-End', TRUE),
    (3, 1, 'Back-End', FALSE),
    (4, 1, 'Design', FALSE);

select * from usuarioProjeto

INSERT INTO usuarioProjeto
    (idUsuario, idProjeto, cargo, administrador)
VALUES
    (2, 2, 'Back-End', TRUE),
    (4, 2, 'Design', TRUE),
    (1, 2, 'Front-End', FALSE);



INSERT INTO tarefa
    (descricao, status, area_atuacao, tipo, dataCriacao, dataMax, idProjeto, idCriador)
VALUES
    (
        'Estudar PostgreSQL',
        'EM_ANDAMENTO',
        'Estudos',
        'PESSOAL',
        '2026-08-14',
        '2026-08-20',
        NULL,
        1
    );

select * from tarefa

INSERT INTO tarefa
    (descricao, status, area_atuacao, tipo, dataCriacao, dataMax, idProjeto, idCriador)
VALUES
    (
        'Criar API de usuários',
        'EM_ANDAMENTO',
        'Back-End',
        'PROJETO',
        '2026-08-10',
        '2026-08-25',
        1,
        1
    );


-- Tarefa de Front-End do Projeto 1
INSERT INTO tarefa
    (descricao, status, area_atuacao, tipo, dataCriacao, dataMax, idProjeto, idCriador)
VALUES
    (
        'Criar tela de login',
        'PENDENTE',
        'Front-End',
        'PROJETO',
        '2026-08-12',
        '2026-08-28',
        1,
        2
    );


-- Tarefa de Design do Projeto 1
INSERT INTO tarefa
    (descricao, status, area_atuacao, tipo, dataCriacao, dataMax, idProjeto, idCriador)
VALUES
    (
        'Criar identidade visual',
        'CONCLUIDA',
        'Design',
        'PROJETO',
        '2026-08-08',
        '2026-08-18',
        1,
        4
    );


-- Tarefa de Back-End do Projeto 2
INSERT INTO tarefa
    (descricao, status, area_atuacao, tipo, dataCriacao, dataMax, idProjeto, idCriador)
VALUES
    (
        'Criar banco do aplicativo',
        'PENDENTE',
        'Back-End',
        'PROJETO',
        '2026-08-15',
        '2026-09-05',
        2,
        2
    );


-- ============================================
-- ADMINISTRADORES DAS TAREFAS
-- ============================================

-- Tarefa 2:
-- Miguel e João são administradores

select * from tarefaADM

INSERT INTO tarefaADM
    (idUsuario, idTarefa)
VALUES
    (1, 5),
    (2, 5);


-- Tarefa 3:
-- João é administrador

INSERT INTO tarefaADM
    (idUsuario, idTarefa)
VALUES
    (2, 6);


-- Tarefa 4:
-- Maria é administradora

INSERT INTO tarefaADM
    (idUsuario, idTarefa)
VALUES
    (4, 1);


-- Tarefa 5:
-- João é administrador

INSERT INTO tarefaADM
    (idUsuario, idTarefa)
VALUES
    (2, 8);

INSERT INTO comentario
    (conteudo, dataCriacao, fixado, idUsuario, idTarefa)
VALUES
    (
        'A estrutura inicial da API já foi criada.',
        '2026-08-15',
        TRUE,
        1,
        5
    ),
    (
        'Vou começar os endpoints de usuário.',
        '2026-08-16',
        FALSE,
        3,
        5
    ),
    (
        'A tela de login precisa seguir o novo layout.',
        '2026-08-16',
        TRUE,
        2,
        6
    ),
    (
        'Identidade visual finalizada.',
        '2026-08-17',
        FALSE,
        4,
        7
    ),
    (
        'O banco ainda precisa das tabelas de autenticação.',
        '2026-08-17',
        FALSE,
        2,
        8
    );

select * from comentario