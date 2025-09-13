--- Criando o banco da Concessionária VelozCar --- 
create database Concessionária_VelozCar;

--- Entrando no banco ---
Use Concessionária_VelozCar;

--- Criando as Tabelas do banco ---
create table Cliente(
	CPF int primary key auto_increment,
    Nome varchar(255)not null,
    endereco varchar(255)not null,
    Data_Nascimento date not null,
    Telefone varchar(14)not null,
    Email varchar(255) unique not null,
    Cadastro_do_Cliente date not null,
    Sexo enum('Feminino','Masculino','Outros') not null
);

--- Inserindo os dados na tabela Cliente ---
INSERT INTO Cliente (cpf, nome, endereco, data_nascimento, sexo, cadastro_do_cliente, email, telefone) VALUES
('543.210.987-65', 'Alice Oliveira', 'Rua das Palmeiras, 75B', '1992-03-21', 'Feminino', '2024-05-10', 'alice.o@email.com', '(83) 98765-1234'),
('987.654.321-09', 'Bruno Castro', 'Avenida Marechal, 123', '1985-08-14', 'Masculino', '2024-05-15', 'bruno_c@email.com', '(83) 99876-5432'),
('123.456.789-01', 'Clara Nunes', 'Travessa da Felicidade, 8', '1998-12-05', 'Feminino', '2024-05-20', 'cnunes@email.com', '(83) 91234-5678'),
('456.789.012-34', 'Daniel Costa', 'Rua da Esperança, 333', '1979-01-28', 'Masculino', '2024-05-25', 'danielcosta@email.com', '(83) 90987-6543'),
('789.012.345-67', 'Fernanda Guedes', 'Rua Principal, 567', '1991-07-09', 'Outros', '2024-06-01', 'f.guedes@email.com', '(83) 97654-3210'),
('234.567.890-12', 'Gabriel Ramos', 'Rua São Judas, 101A', '1988-10-30', 'Masculino', '2024-06-05', 'gabriel_r@email.com', '(83) 96543-2109'),
('567.890.123-45', 'Heloísa Dantas', 'Avenida Sul, 888', '1993-04-19', 'Feminino', '2024-06-10', 'helod@email.com', '(83) 95432-1098'),
('890.123.456-78', 'Ivan Peixoto', 'Rua da Amizade, 22B', '1980-06-02', 'Masculino', '2024-06-15', 'ivan.peixoto@email.com', '(83) 94321-0987'),
('345.678.901-23', 'Juliana Torres', 'Avenida Litoral, 900', '1995-09-29', 'Feminino', '2024-06-20', 'j.torres@email.com', '(83) 93210-9876'),
('678.901.234-56', 'Lucas Rocha', 'Rua Sete de Setembro, 55', '1987-11-17', 'Masculino', '2024-06-25', 'lucasrocha@email.com', '(83) 92109-8765');


create table Funcionario(
	CPF int primary key auto_increment,
    Nome varchar(255)not null,
    Cargo varchar(50)not null,
    Data_Nascimento date not null,
    Data_contratacao date not null,
    Telefone varchar(14)not null,
    Email varchar(255) unique not null,
    Sexo enum('Feminino','Masculino','Outros') not null,
    Salario decimal(10,2) not null
);

--- Inserindo os dados na tabela Funcionario ---
INSERT INTO Funcionario (cpf, nome, cargo, salario, data_contratacao, data_nascimento, sexo, email, telefone) VALUES
('998.877.665-54', 'Roberta Gomes', 'Atendente Sênior', 3100.00, '2023-01-15', '1992-05-18', 'Feminino', 'roberta.g@velozcar.com', '(83) 91111-2222'),
('109.876.543-21', 'Felipe Santos', 'Gerente de Vendas', 5500.00, '2023-03-20', '1980-11-23', 'Masculino', 'felipe.s@velozcar.com', '(83) 93333-4444'),
('218.765.432-10', 'Viviane Costa', 'Atendente', 2800.00, '2023-05-01', '1995-02-09', 'Feminino', 'viviane.c@velozcar.com', '(83) 95555-6666'),
('327.654.321-09', 'Thiago Lima', 'Mecânico Chefe', 4000.00, '2023-07-10', '1975-08-30', 'Masculino', 'thiago.l@velozcar.com', '(83) 97777-8888'),
('436.543.210-98', 'Juliana Mello', 'Atendente', 2800.00, '2023-09-05', '1998-04-12', 'Feminino', 'juliana.m@velozcar.com', '(83) 99999-0000'),
('545.432.109-87', 'Pedro Almeida', 'Gerente Administrativo', 5000.00, '2023-11-22', '1988-01-01', 'Masculino', 'pedro.a@velozcar.com', '(83) 98888-7777'),
('654.321.098-76', 'Carla Mendes', 'Atendente', 2800.00, '2024-01-28', '1990-06-25', 'Feminino', 'carla.m@velozcar.com', '(83) 96666-5555'),
('765.432.109-87', 'Lucas Ferreira', 'Estagiário', 1500.00, '2024-03-15', '2000-03-03', 'Masculino', 'lucas.f@velozcar.com', '(83) 94444-3333');

create table Veiculo(
	Placa varchar(7) primary key,
    Modelo varchar(100)not null,
    Cor varchar(50)not null,
    Ano_De_Fabricacao int(4) not null,
    valor_Da_Diaria decimal(10,2) not null,
    status	enum('disponível','alugado','em manutenção')not null,
    Quilometragem_atual	int not null,
    Data_Ultima_Revisao date not null
);

--- Alterando a tabela Veiculo no atributo Status ---
alter table veiculo modify column status enum('disponível','alugado','manutenção')not null;

--- Inserindo os dados na tabela Veiculo ---
INSERT INTO Veiculo (placa, modelo, cor, ano_de_fabricacao, valor_da_diaria, status, quilometragem_atual, data_ultima_revisao) VALUES
('ABC1A23', 'Fiat Palio', 'Branco', 2018, 95.50, 'disponível', 65000, '2024-08-01'),
('OPQ4R56', 'Volkswagen Virtus', 'Cinza', 2022, 130.00, 'alugado', 22000, '2024-09-01'),
('RST7V89', 'Chevrolet Tracker', 'Vermelho', 2023, 180.00, 'disponível', 15000, '2024-09-05'),
('UVW1X23', 'Nissan Kicks', 'Azul', 2021, 150.00, 'disponível', 38000, '2024-08-20'),
('XYZ4A56', 'Honda Fit', 'Prata', 2020, 110.00, 'em manutenção', 55000, '2024-09-12'),
('MNO7B89', 'Hyundai Creta', 'Preto', 2023, 175.00, 'disponível', 12000, '2024-09-10'),
('JKL1C23', 'Toyota Yaris', 'Branco', 2022, 140.00, 'alugado', 28000, '2024-08-28'),
('PQR4D56', 'Ford EcoSport', 'Verde', 2021, 160.00, 'disponível', 45000, '2024-07-15'),
('ABC7E89', 'Renault Kwid', 'Vermelho', 2024, 85.00, 'disponível', 5000, '2024-09-11'),
('DEF1G23', 'Jeep Compass', 'Cinza', 2022, 250.00, 'disponível', 30000, '2024-08-05'),
('JJY0H07', 'Civic G10', 'Prata', 2025, 250.00, 'manutenção', 77000, '2025-12-27');

create table Seguro(
	ID_Seguro int primary key auto_increment,
    Nome_Plano varchar(255) not null,
    Cobertura text not null,
    Valor_Mensal decimal(10,2) not null,
    Franquia decimal(10,2) not null,
    Status_Plano enum('Ativo','Inativo')not null
);

--- Inserindo os dados na tabela Seguro ---
INSERT INTO Seguro (nome_plano, cobertura, franquia, valor_mensal, status_plano) VALUES
('Plano Essencial', 'Danos a terceiros e proteção contra roubo', 600.00, 45.00, 'Ativo'),
('Plano Completo', 'Cobertura total, danos a terceiros, roubo e colisão', 250.00, 90.00, 'Ativo'),
('Plano Vip', 'Cobertura completa sem franquia', 0.00, 150.00, 'Ativo'),
('Plano Básico', 'Apenas danos a terceiros', 800.00, 30.00, 'Ativo'),
('Plano Descontinuado', 'Plano antigo, sem novas contratações', 1000.00, 25.00, 'Inativo');

create table Aluguel(
	ID_aluguel int primary key auto_increment,
	CPF_Cliente	int not null,
	CPF_Funcionario	int not null,
	id_veiculo varchar(7) not null,
	id_seguro int not null,
	Data_inicio	date not null,
	Data_fim date not null,
	Valor_total	decimal(10,2) not null,
	Status	enum('ativo','finalizado','atrasado'),
    foreign key(CPF_Cliente) references Cliente(CPF),
    foreign key(CPF_Funcionario) references Funcionario(CPF),
    foreign key(id_veiculo) references Veiculo(Placa),
    foreign key(id_seguro) references Seguro(ID_Seguro)
);

--- Inserindo os dados na tabela Aluguel ---
INSERT INTO Aluguel (cpf_cliente, cpf_funcionario, id_veiculo, id_seguro, data_inicio, data_fim, valor_total, status) VALUES
('987.654.321-09', '109.876.543-21', 'OPQ4R56', 2, '2024-09-05', '2024-09-15', 1300.00, 'ativo'),
('123.456.789-01', '218.765.432-10', 'JKL1C23', 1, '2024-09-10', '2024-09-20', 1400.00, 'ativo'),
('543.210.987-65', '998.877.665-54', 'ABC1A23', 4, '2024-08-20', '2024-08-25', 477.50, 'finalizado'),
('456.789.012-34', '436.543.210-98', 'UVW1X23', 3, '2024-08-15', '2024-08-22', 1050.00, 'finalizado'),
('789.012.345-67', '654.321.098-76', 'MNO7B89', 2, '2024-09-12', '2024-09-18', 1050.00, 'ativo'),
('234.567.890-12', '218.765.432-10', 'PQR4D56', 1, '2024-09-01', '2024-09-08', 1120.00, 'finalizado'),
('567.890.123-45', '998.877.665-54', 'DEF1G23', 3, '2024-07-25', '2024-08-05', 2750.00, 'finalizado'),
('890.123.456-78', '436.543.210-98', 'ABC7E89', 4, '2024-09-13', '2024-09-18', 425.00, 'ativo'),
('345.678.901-23', '654.321.098-76', 'ABC1A23', 1, '2024-09-08', '2024-09-12', 400.00, 'finalizado'),
('678.901.234-56', '109.876.543-21', 'OPQ4R56', 2, '2024-09-01', '2024-09-03', 260.00, 'finalizado');

create table Pagamento(
	ID_Pagamento int primary key auto_increment,
	id_aluguel	int not null,
	Valor decimal(10,2) not null,
	Data date not null,
	Status enum('Pendente','Concluído','Cancelado')not null,
	Metodo varchar(50)not null,
	Data_Vencimento	date not null,
	Numero_Transacao varchar(255) unique not null,
	Observacoes text null,
    foreign key(id_aluguel) references Aluguel(ID_aluguel)
);

--- Inserindo os dados na tabela Pagamentos ---
INSERT INTO Pagamento (id_aluguel, valor, data, status, metodo, data_vencimento, numero_transacao, observacoes) VALUES
(1, 1300.00, '2024-09-05', 'concluído', 'Cartão de Crédito', '2024-09-05', 'TXN54321987', 'Pagamento da locação do Virtus.'),
(2, 1400.00, '2024-09-10', 'pendente', 'Boleto', '2024-09-10', 'BOL98765432', 'Boleto gerado, aguardando pagamento.'),
(3, 477.50, '2024-08-20', 'concluído', 'PIX', '2024-08-20', 'PIX12345678', 'Pagamento do Palio.'),
(4, 1050.00, '2024-08-15', 'concluído', 'Cartão de Débito', '2024-08-15', 'TXN09876543', 'Pagamento do Nissan Kicks.'),
(5, 1050.00, '2024-09-12', 'pendente', 'Cartão de Crédito', '2024-09-12', 'TXN11223344', 'Pagamento do Creta, aguardando aprovação.'),
(6, 1120.00, '2024-09-01', 'concluído', 'PIX', '2024-09-01', 'PIX99887766', 'Pagamento total.'),
(7, 2750.00, '2024-07-25', 'concluído', 'Cartão de Crédito', '2024-07-25', 'TXN55667788', 'Pagamento do Compass.'),
(8, 425.00, '2024-09-13', 'pendente', 'Boleto', '2024-09-13', 'BOL00112233', 'Boleto gerado, vencimento para 2 dias.'),
(9, 400.00, '2024-09-08', 'concluído', 'PIX', '2024-09-08', 'PIX44556677', 'Pagamento total.'),
(10, 260.00, '2024-09-01', 'concluído', 'Cartão de Crédito', '2024-09-01', 'TXN99887766', 'Pagamento do aluguel de curto prazo.');

create table Manutencao(
	ID_Manutencao int primary key auto_increment,
	id_Veiculo varchar(7) not null,
	Descricao_do_Servico text not null,
	Quilometragem_Veiculo int not null,
	Custo decimal(10,2) not null,
	Data date not null,
	Tipo_Manutencao	Varchar(50) not null,
	Responsavel	varchar(255) not null,
	Observacoes	text null,
    foreign key(id_veiculo)  references Veiculo(Placa)
);

--- Inserindo os dados na tabela Manutencao ---
INSERT INTO Manutencao (id_veiculo, descricao_do_servico, quilometragem_veiculo, custo, data, tipo_manutencao, responsavel, observacoes) VALUES
('XYZ4A56', 'Troca de óleo e filtros', 55000, 450.00, '2024-09-12', 'Preventiva', 'Thiago Lima', 'Troca de fluidos e filtros para revisão.'),
('ABC1A23', 'Revisão dos freios', 65000, 320.00, '2024-08-25', 'Corretiva', 'Thiago Lima', 'Substituição das pastilhas de freio.'),
('UVW1X23', 'Troca de pneus e alinhamento', 38000, 950.00, '2024-08-20', 'Preventiva', 'Thiago Lima', 'Pneus novos instalados.'),
('DEF1G23', 'Revisão geral', 30000, 700.00, '2024-08-05', 'Preventiva', 'Thiago Lima', 'Revisão completa de 30.000km.'),
('OPQ4R56', 'Substituição do limpador de para-brisa', 22000, 80.00, '2024-09-03', 'Corretiva', 'Thiago Lima', 'Limpador danificado, foi substituído.'),
('JKL1C23', 'Verificação do sistema elétrico', 28000, 250.00, '2024-09-10', 'Corretiva', 'Thiago Lima', 'Farol traseiro queimado.'),
('MNO7B89', 'Revisão de rotina', 12000, 350.00, '2024-09-10', 'Preventiva', 'Thiago Lima', 'Sem problemas encontrados.');

--- 2 atualizações (UPDATE) ---
update veiculo set status = 'Ativo' where Placa = 'XYZ4A56';

update aluguel set valor_total = 1350.00 where id_aluguel = 5;

--- Consulta de agregação/agrupamento em cada tabela ---
Select cadastro_do_cliente, count(cpf) as total_cliente_cadastrados from cliente group by cadastro_do_cliente; --- Tabela Cliente ---
Select cargo, avg(salario) as salario_medio_por_cargo from funcionario group by cargo; --- Tabela Funcionario ---
Select status, count(placa) as quantidade_de_veiculo from veiculo group by status; --- Tabela Veiculo ---
Select status_plano, avg(franquia) as Media_franquia from seguro group by Status_Plano; --- Tabela Seguro ---
Select ID_aluguel, sum(valor_total) as receita_total_por_status from Aluguel group by Status; --- Tabela Aluguel ---
Select metodo, count(id_pagamento) as total_pagamentos_por_metodo from pagamento group by Metodo; --- Tabela Pagamento ---
Select tipo_manutencao, sum(custo) as custo_total_manutencao from manutencao group by Tipo_Manutencao; --- Tabela Manutencao ---

--- Duas operações de JOIN entre tabelas ---
SELECT
    C.nome AS nome_cliente,
    A.data_inicio,
    A.data_fim,
    V.modelo AS modelo_veiculo,
    V.placa AS placa_veiculo
FROM
    ALUGUEL AS A
INNER JOIN
    CLIENTE AS C ON A.cpf_cliente = C.cpf
INNER JOIN
    VEICULO AS V ON A.id_veiculo = V.placa; --- Tabela ALUGUEL/CLIENTE/VEICULO ---
    
    SELECT
    P.id_pagamento,
    P.valor AS valor_pago,
    P.data AS data_pagamento,
    F.nome AS nome_funcionario,
    V.modelo AS modelo_veiculo,
    A.valor_total AS valor_total_aluguel
FROM
    PAGAMENTO AS P
INNER JOIN
    ALUGUEL AS A ON P.id_aluguel = A.id_aluguel
INNER JOIN
    FUNCIONARIO AS F ON A.cpf_funcionario = F.cpf
INNER JOIN
    VEICULO AS V ON A.id_veiculo = V.placa; --- Tabela PAGAMENTO/ALUGUEL/FUNCIONARIO/VEICULO ---