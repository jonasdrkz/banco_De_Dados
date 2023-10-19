use escola2;

create table alunos(
	IDAlunos int auto_increment primary key,
        
	nome varchar(255) not null,
	dataNascimento date,
	genero char,
	endereco varchar(255),
	contato varchar(255)
);
SELECT * FROM alunos;

create table professores(
	IDProfessor int auto_increment primary key,
        
	nome varchar(255) not null,
	dataNascimento date,
	genero char,
	endereco varchar(255),
	contato varchar(255)
);
SELECT * FROM professores;

create table disciplinas (
	IDDisciplina int auto_increment primary key,
	nomeDisciplina varchar(255) not null
);
SELECT * FROM disciplinas;

create table turmas(
	IDTurma int auto_increment primary key,

	nomeTurma varchar(255) not null,
	anoLetivo int,
	professorResponsavel int,
	foreign key (ProfessorResponsavel) references professores (IDProfessor)
);
SELECT * FROM turmas;

create table notas(
	IDNota int auto_increment primary key,

	IDAluno int,
	IDDisciplina int,
	nota decimal(5,2),
	foreign key (IDAluno) references alunos (IDAlunos),
	foreign key (IDDisciplina) references disciplinas (IDDisciplina)
);
SELECT * FROM notas;

create table frequencia(
	IDDrequencia int auto_increment primary key,
    
    IDAluno int,
    IDDisciplina int,
    dia DATE,
    presenca boolean,
    foreign key (IDAluno) references alunos (IDAlunos),
	foreign key (IDDisciplina) references disciplinas (IDDisciplina)
);
SELECT * FROM frequencia;

create table eventosEscolares(
	IDEvento int auto_increment primary key,
    
    nomeEvento varchar(255) not null,
    dataEvento date,
    Descricao text,
    endereco varchar(255)
);
SELECT * FROM eventosescolares;

create table usuarios (
	IDUsuario int auto_increment primary key,
    nomeUsuario varchar(50) not null,
    senha varchar(255) not null
);
SELECT * FROM usuarios;


-- insert para a lista de alunos
INSERT INTO alunos (nome, dataNascimento, genero, endereco, contato)
VALUES
    ('Maria Oliveira', '2002-08-10', 'F', 'Avenida B, 456', '(11) 9876-5432'),
    ('Pedro Santos', '2001-02-25', 'M', 'Rua C, 789', '(11) 2345-6789'),
    ('Ana Souza', '2003-11-30', 'F', 'Rua D, 101', '(11) 5432-1098'),
    ('Luiz Ferreira', '2000-07-14', 'M', 'Avenida E, 222', '(11) 7777-2222'),
    ('Mariana Vieira', '2002-05-18', 'F', 'Rua F, 333', '(11) 8888-3333'),
    ('Rafael Almeida', '2001-09-22', 'M', 'Avenida G, 444', '(11) 9999-4444'),
    ('Isabela Costa', '2003-04-07', 'F', 'Rua H, 555', '(11) 1234-5555'),
    ('Carlos Rodrigues', '2000-01-03', 'M', 'Avenida I, 666', '(11) 6666-6666'),
    ('Larissa Mendes', '2001-06-29', 'F', 'Rua J, 777', '(11) 7777-7777'),
    ('Eduardo Pereira', '2002-10-12', 'M', 'Avenida K, 888', '(11) 8888-8888'),
    ('Patrícia Gomes', '2003-03-05', 'F', 'Rua L, 999', '(11) 9999-9999'),
    ('Gabriel Silva', '2000-12-01', 'M', 'Avenida M, 1010', '(11) 1010-1010'),
    ('Catarina Ribeiro', '2001-04-19', 'F', 'Rua N, 1111', '(11) 1111-1111'),
    ('Alexandre Sousa', '2002-07-24', 'M', 'Avenida O, 1212', '(11) 1212-1212'),
    ('Tatiana Lima', '2003-02-15', 'F', 'Rua P, 1313', '(11) 1313-1313'),
    ('Fernando Carvalho', '2000-11-09', 'M', 'Avenida Q, 1414', '(11) 1414-1414'),
    ('Silvana Santos', '2001-10-28', 'F', 'Rua R, 1515', '(11) 1515-1515'),
    ('Roberto Pereira', '2002-05-17', 'M', 'Avenida S, 1616', '(11) 1616-1616'),
    ('Cecília Rodrigues', '2003-08-21', 'F', 'Rua T, 1717', '(11) 1717-1717'),
    ('Felipe Almeida', '2000-07-30', 'M', 'Avenida U, 1818', '(11) 1818-1818');

-- insert para a lista de professores
INSERT INTO professores (nome, dataNascimento, genero, endereco, contato)
VALUES
    ('Mariana Silva', '1978-05-12', 'F', 'Avenida X, 123', '(11) 1111-2222'),
    ('Roberto Pereira', '1985-03-18', 'M', 'Rua Y, 456', '(11) 2222-3333'),
    ('Catarina Sousa', '1979-09-25', 'F', 'Avenida Z, 789', '(11) 3333-4444'),
    ('Pedro Alves', '1980-06-25', 'M', 'Avenida A, 101', '(11) 4444-5555'),
    ('Sofia Lima', '1987-11-30', 'F', 'Rua B, 202', '(11) 5555-6666'),
    ('Carlos Fernandes', '1975-04-12', 'M', 'Avenida C, 303', '(11) 6666-7777'),
    ('Isabel Santos', '1970-09-15', 'F', 'Rua D, 404', '(11) 7777-8888'),
    ('Ricardo Vieira', '1982-01-05', 'M', 'Avenida E, 505', '(11) 8888-9999'),
    ('Patrícia Ribeiro', '1988-07-20', 'F', 'Rua F, 606', '(11) 9999-0000'),
    ('Luís Ferreira', '1984-12-03', 'M', 'Avenida G, 707', '(11) 0000-1111'),
    ('Ana Almeida', '1981-06-10', 'F', 'Rua H, 808', '(11) 1111-2222'),
    ('Gustavo Rodrigues', '1976-03-28', 'M', 'Avenida I, 909', '(11) 2222-3333'),
    ('Camila Silva', '1983-08-22', 'F', 'Rua J, 1010', '(11) 3333-4444'),
    ('Paulo Sousa', '1973-05-15', 'M', 'Avenida K, 1111', '(11) 4444-5555'),
    ('Fernanda Costa', '1989-02-08', 'F', 'Rua L, 1212', '(11) 5555-6666'),
    ('Antônio Pereira', '1986-11-19', 'M', 'Avenida M, 1313', '(11) 6666-7777'),
    ('Cecília Oliveira', '1974-07-14', 'F', 'Rua N, 1414', '(11) 7777-8888'),
    ('Eduardo Alves', '1987-10-28', 'M', 'Avenida O, 1515', '(11) 8888-9999'),
    ('Marta Santos', '1981-04-03', 'F', 'Rua P, 1616', '(11) 9999-0000'),
    ('José Silva', '1979-09-30', 'M', 'Avenida Q, 1717', '(11) 0000-1111');
    
-- Inserir exemplos de disciplinas    
INSERT INTO disciplinas (nomeDisciplina)
VALUES
    ('Matemática'),
    ('Português'),
    ('Ciências'),
    ('História'),
    ('Geografia'),
    ('Inglês'),
    ('Física'),
    ('Química'),
    ('Biologia'),
    ('Artes'),
    ('Educação Física'),
    ('Filosofia'),
    ('Sociologia'),
    ('Espanhol'),
    ('Literatura'),
    ('Música'),
    ('Informática'),
    ('Gestão Empresarial'),
    ('Psicologia'),
    ('Economia');

-- Inserir exemplos de turmas
INSERT INTO turmas (nomeTurma, anoLetivo, professorResponsavel)
VALUES
    ('Turma A', 2023, 1),
    ('Turma B', 2023, 2),
    ('Turma C', 2023, 3),
    ('Turma D', 2023, 4),
    ('Turma E', 2023, 5),
    ('Turma F', 2023, 6),
    ('Turma G', 2023, 7),
    ('Turma H', 2023, 8),
    ('Turma I', 2023, 9),
    ('Turma J', 2023, 10),
    ('Turma K', 2023, 11),
    ('Turma L', 2023, 12),
    ('Turma M', 2023, 13),
    ('Turma N', 2023, 14),
    ('Turma O', 2023, 15),
    ('Turma P', 2023, 16),
    ('Turma Q', 2023, 17),
    ('Turma R', 2023, 18),
    ('Turma S', 2023, 19),
    ('Turma T', 2023, 20);

-- Inserir exemplos de notas
INSERT INTO notas (IDAluno, IDDisciplina, nota)
VALUES
    (1, 1, 8.5),
    (1, 2, 9.0), 
    (2, 3, 7.8), 
    (2, 4, 8.9), 
    (3, 5, 7.2),
    (3, 6, 8.0),
    (4, 7, 8.9),
    (4, 8, 9.5),
    (5, 9, 7.5),   
    (5, 10, 8.7), 
    (6, 11, 6.8),    
    (6, 12, 7.2),   
    (7, 13, 9.2),    
    (7, 14, 9.4),    
    (8, 15, 8.0),    
    (8, 16, 8.8),    
    (9, 17, 7.4),   
    (10, 18, 7.6),
    (10, 19, 7.6),
    (11, 20, 7.6);

-- Inserir exemplos de frequencia
INSERT INTO frequencia (IDAluno, IDDisciplina, dia, presenca)
VALUES
    (1, 20, '2023-10-01', 1),   
    (2, 19, '2023-10-01', 1), 
    (3, 18, '2023-10-01', 1), 
    (4, 17, '2023-10-01', 0),   
    (5, 16, '2023-10-01', 1),  
    (6, 15, '2023-10-01', 1),  
    (7, 14, '2023-10-01', 1),  
    (8, 13, '2023-10-01', 1),
    (9, 12, '2023-10-01', 0),
    (10, 11, '2023-10-01', 1),
    (11, 10, '2023-10-02', 1),
    (12, 9, '2023-10-02', 0),
    (13, 8, '2023-10-02', 1),  
    (14, 7, '2023-10-02', 1),  
    (15, 6, '2023-10-02', 0),  
    (16, 5, '2023-10-02', 1),
    (17, 4, '2023-10-02', 1),
    (18, 3, '2023-10-02', 1),
    (19, 2, '2023-10-02', 1),
    (20, 1, '2023-10-02', 1);

-- Inserir exemplos de eventos escolares
INSERT INTO eventosEscolares (nomeEvento, dataEvento, Descricao, endereco)
VALUES
    ('Feira de Ciências', '2023-11-15', 'Apresentação de projetos de ciências', 'Auditório da Escola'),
    ('Festa Junina', '2023-06-20', 'Comemoração com barracas de comida típica', 'Pátio da Escola'),
    ('Excursão ao Museu', '2023-09-05', 'Visita ao museu de história natural', 'Local: Museu da Cidade'),
    ('Semana da Leitura', '2023-03-10', 'Atividades de leitura e contação de histórias', 'Biblioteca da Escola'),
    ('Campeonato de Esportes', '2023-05-25', 'Competição esportiva entre turmas', 'Quadra Esportiva'),
    ('Feira de Carreiras', '2023-04-18', 'Apresentação de carreiras profissionais', 'Salão de Eventos'),
    ('Dia do Estudante', '2023-08-11', 'Atividades e jogos para os estudantes', 'Pátio da Escola'),
    ('Mostra Cultural', '2023-10-30', 'Exibição de arte, música e dança', 'Auditório da Escola'),
    ('Palestra de Conscientização', '2023-02-28', 'Palestra sobre meio ambiente e sustentabilidade', 'Sala de Aula 101'),
    ('Concerto de Música', '2023-07-15', 'Apresentação de uma orquestra local', 'Auditório da Escola'),
    ('Feira de Empreendedorismo', '2023-06-05', 'Exibição de negócios criados pelos estudantes', 'Salão de Eventos'),
    ('Semana da Saúde', '2023-04-10', 'Atividades relacionadas à saúde e bem-estar', 'Quadra Esportiva'),
    ('Competição de Matemática', '2023-03-20', 'Desafios matemáticos para estudantes', 'Sala de Aula 202'),
    ('Semana da Diversidade', '2023-09-15', 'Celebrando a diversidade cultural', 'Pátio da Escola'),
    ('Dia da Família na Escola', '2023-05-30', 'Atividades envolvendo a família dos estudantes', 'Pátio da Escola'),
    ('Visita de Autores', '2023-11-03', 'Autores locais visitam a escola', 'Biblioteca da Escola'),
    ('Exibição de Filmes', '2023-07-20', 'Exibição de filmes educativos', 'Auditório da Escola'),
    ('Feira de Tecnologia', '2023-08-05', 'Demonstração de tecnologia e inovação', 'Sala de Aula 303'),
    ('Dia das Artes', '2023-12-10', 'Oficinas de arte e exposições', 'Salão de Eventos'),
    ('Torneio de Debates', '2023-10-10', 'Estudantes debatem tópicos atuais', 'Auditório da Escola');
    
-- Inserir exemplos de usuários
INSERT INTO usuarios (nomeUsuario, senha)
VALUES
    ('usuario1', 'senha1'),
    ('usuario2', 'senha2'),
    ('usuario3', 'senha3'),
    ('usuario4', 'senha4'),
    ('usuario5', 'senha5'),
    ('usuario6', 'senha6'),
    ('usuario7', 'senha7'),
    ('usuario8', 'senha8'),
    ('usuario9', 'senha9'),
    ('usuario10', 'senha10'),
    ('usuario11', 'senha11'),
    ('usuario12', 'senha12'),
    ('usuario13', 'senha13'),
    ('usuario14', 'senha14'),
    ('usuario15', 'senha15'),
    ('usuario16', 'senha16'),
    ('usuario17', 'senha17'),
    ('usuario18', 'senha18'),
    ('usuario19', 'senha19'),
    ('usuario20', 'senha20');

-- Bota a ordem de exebição do mais velho ao mais novo
select * from alunos
order by dataNascimento;

-- Apresenta o nome do professor responsavel pela turma A
select professores.nome as NomeProfessorResponsavel
from turmas
inner join professores on turmas.professorResponsavel = IDProfessor
where turmas.nomeTurma = 'Turma A';