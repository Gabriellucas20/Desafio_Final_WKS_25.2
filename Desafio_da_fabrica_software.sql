--- Criando o banco de dados ---
create database Escola_Idioma;

--- Entrando no banco de dados ---
use Escola_Idioma;

--- Criando as tabelas ---
create table Aluno(
	Matricula_Aluno int primary key,
    Nome varchar(255) not null,
    Data_Nascimento date not null,
    Telefone varchar(14) not null,
    Email varchar(255) not null,
    Nivel_Idioma varchar(100) not null
);

--- Inserido registros na tabela Aluno ---
INSERT INTO Aluno (Matricula_Aluno, Nome, Data_Nascimento, Telefone, Email, Nivel_Idioma)
VALUES
(1, 'Maria Silva', '2005-03-10', '(11) 98765-4321', 'maria.silva@email.com', 'Avançado'),
(2, 'João Pereira', '2004-08-22', '(21) 99876-5432', 'joao.pereira@email.com', 'Intermediário'),
(3, 'Ana Souza', '2006-01-05', '(31) 97654-3210', 'ana.souza@email.com', 'Básico'),
(4, 'Pedro Oliveira', '2005-07-18', '(41) 96543-2109', 'pedro.oliveira@email.com', 'Fluente'),
(5, 'Carla Lima', '2004-11-30', '(51) 95432-1098', 'carla.lima@email.com', 'Avançado'),
(6, 'Fernando Santos', '2006-04-12', '(61) 94321-0987', 'fernando.santos@email.com', 'Intermediário'),
(7, 'Juliana Costa', '2005-09-01', '(71) 93210-9876', 'juliana.costa@email.com', 'Básico'),
(8, 'Rafael Martins', '2004-02-25', '(81) 92109-8765', 'rafael.martins@email.com', 'Fluente'),
(9, 'Bruna Fernandes', '2006-10-14', '(91) 91098-7654', 'bruna.fernandes@email.com', 'Avançado'),
(10, 'Diego Rodrigues', '2005-06-20', '(01) 90987-6543', 'diego.rodrigues@email.com', 'Intermediário');

create table Professor(
	Matricula_Prof int primary key,
    Nome varchar(255) not null,
    Telefone varchar(14) not null,
    Email varchar(255) not null,
    Data_Nascimento date not null,
    Especializacao varchar(50) not null
);

--- Inserido registros na tabela Professor ---
INSERT INTO Professor (Matricula_Prof, Nome, Telefone, Email, Data_Nascimento, Especializacao)
VALUES
(1, 'Roberto Alves', '(11) 98765-1234', 'roberto.alves@professor.com', '1980-05-15', 'Matemática'),
(2, 'Patrícia Gomes', '(21) 99876-2345', 'patricia.gomes@professor.com', '1975-11-20', 'Língua Portuguesa'),
(3, 'Ricardo Pereira', '(31) 97654-3456', 'ricardo.pereira@professor.com', '1988-08-03', 'Física'),
(4, 'Camila Santos', '(41) 96543-4567', 'camila.santos@professor.com', '1979-02-10', 'História'),
(5, 'Eduardo Costa', '(51) 95432-5678', 'eduardo.costa@professor.com', '1992-06-25', 'Ciências da Computação'),
(6, 'Daniela Ribeiro', '(61) 94321-6789', 'daniela.ribeiro@professor.com', '1985-04-18', 'Química'),
(7, 'Felipe Martins', '(71) 93210-7890', 'felipe.martins@professor.com', '1983-09-28', 'Geografia'),
(8, 'Viviane Rocha', '(81) 92109-8901', 'viviane.rocha@professor.com', '1970-12-05', 'Artes'),
(9, 'Gustavo Almeida', '(91) 91098-9012', 'gustavo.almeida@professor.com', '1990-01-22', 'Biologia'),
(10, 'Sandra Dias', '(01) 90987-0123', 'sandra.dias@professor.com', '1987-07-07', 'Educação Física');

Create table Turma(
	ID_Turma int primary key,
    Nome_Turma varchar(255) not null,
    Sala varchar(50) not null,
    Turno enum('Manhã','Tarde','Noite') not null,
    Ano_Letivo varchar(50) not null
);

--- Inserido registros na tabela Turma ---
INSERT INTO Turma (ID_Turma, Nome_Turma, Sala, Turno, Ano_Letivo)
VALUES
(1, 'Turma A', 'Sala 101', 'Manhã', '2024'),
(2, 'Turma B', 'Sala 102', 'Tarde', '2025'),
(3, 'Turma C', 'Sala 201', 'Noite', '2026'),
(4, 'Turma D', 'Sala 202', 'Manhã', '2024'),
(5, 'Turma E', 'Sala 103', 'Tarde', '2025'),
(6, 'Turma F', 'Sala 301', 'Noite', '2026'),
(7, 'Turma G', 'Sala 302', 'Manhã', '2024'),
(8, 'Turma H', 'Sala 401', 'Tarde', '2025'),
(9, 'Turma I', 'Sala 402', 'Noite', '2026'),
(10, 'Turma J', 'Sala 104', 'Manhã', '2024');

create table Curso(
	ID_Curso int primary key,
    Nome_Curso varchar(255) not null,
    Duracao_Semanas int not null
);

--- Inserido registros na tabela Curso ---
INSERT INTO Curso (ID_Curso, Nome_Curso, Duracao_Semanas)
VALUES
(1, 'Inglês Básico I', 12),
(2, 'Inglês Básico II', 12),
(3, 'Inglês Intermediário I', 16),
(4, 'Inglês Intermediário II', 16),
(5, 'Inglês Avançado I', 20),
(6, 'Inglês Avançado II', 20),
(7, 'Espanhol para Viagem', 8),
(8, 'Francês Básico', 10),
(9, 'Alemão para Negócios', 14),
(10, 'Japonês Nível I', 24);

create table Matricula(
	Matricula_Aluno int not null,
    ID_Turma int not null,
    Statuss enum('Ativo','Inativo','Trancado') not null,
    Data_Matricula date not null,
    foreign key(Matricula_Aluno) references Aluno(Matricula_Aluno),
    foreign key(ID_Turma) references Turma(ID_Turma)
);

--- Inserido registros na tabela Matricula ---
INSERT INTO Matricula (Matricula_Aluno, ID_Turma, Statuss, Data_Matricula)
VALUES
(1, 1, 'Ativo', '2024-03-01'),
(2, 5, 'Ativo', '2025-01-15'),
(3, 9, 'Ativo', '2026-02-20'),
(4, 2, 'Trancado', '2024-03-05'),
(5, 7, 'Ativo', '2024-08-10'),
(6, 4, 'Ativo', '2024-03-15'),
(7, 8, 'Inativo', '2025-05-22'),
(8, 6, 'Ativo', '2026-01-08'),
(9, 3, 'Trancado', '2026-03-01'),
(10, 10, 'Ativo', '2024-09-01');

--- Fazendo o update na tabela professor ---
update professor set nome = 'Carlos' where Matricula_Prof = 1;

--- Puxando a tabela do Professor ---
Select * From professor;

--- 3 funções Agregadas ---
Select max(Matricula_Aluno) from aluno;
Select count(*) from turma;
Select sum(ID_Turma) from Matricula;

--- 2 de Agrupamentos ---
Select Nome_Curso from Curso group by Nome_Curso;
Select Matricula_Aluno from Aluno group by Matricula_Aluno having count(*) > 3;

--- 1 de Join ---
SELECT
    A.Nome AS Nome_Aluno,
    T.Nome_Turma,
    M.Statuss,
    M.Data_Matricula
FROM Matricula M
JOIN Aluno A ON M.Matricula_Aluno = A.Matricula_Aluno
JOIN Turma T ON M.ID_Turma = T.ID_Turma;
