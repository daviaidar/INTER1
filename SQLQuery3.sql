create database projeto_bd_salao_de_beleza
go 

use projeto_bd_salao_de_beleza
go

create table pessoa
(
	pessoa_codigo   int         not null primary key identity,
	nome            varchar(50) not null,
	rg              varchar(12) not null,
	cpf             varchar(11) not null, 
	data_nascimento date        not null
)
go

create table cliente
(
	cliente_codigo               int not null primary key,
	estrela                      int not null,
	foreign key (cliente_codigo) references pessoa(pessoa_codigo)
)
go

create table funcionario 
(
	funcionario_codigo int   not null primary key,
	salario            money not null default 1500,
	foreign key (funcionario_codigo) references pessoa(pessoa_codigo)
)
go

create table logradouro 
(
    pessoa_codigo int         not null,      
	nr            varchar(10) not null default 'S/N',
	nome          varchar(50) not null,
	cep           varchar(50) not null,
	complemento   varchar(50) not null

	-- Restrições --
	primary key (pessoa_codigo),              
    foreign key (pessoa_codigo) references pessoa(pessoa_codigo)
)
go

create table agendamento 
(
	agendamento_id      int not null identity primary key,
	valor               money not null default 100,
	data                datetime not null default getdate(),
	horario             varchar(12) not null,
	status              int not null,
	cliente_codigo      int not null,
	funcionario_codigo  int not null,
	check (status in (1,2,3,4)), -- 1=Agendado, 2=Concluído, 3=Cancelado, 4=Pago
	foreign key (cliente_codigo)     references cliente(cliente_codigo),
	foreign key (funcionario_codigo) references funcionario(funcionario_codigo)
)
go

create table servico 
(
	servico_id int         not null identity primary key,
	nome       varchar(30) not null, 
	descricao  varchar(50) not null
)
go

create table parcela 
(
    agendamento_id int   not null,
    qtd_parcela    int   not null,
	valor_parcela  money not null default 50,

	-- Restrições
    primary key (agendamento_id),      
    foreign key (agendamento_id) references agendamento(agendamento_id)
)
go

create table agendamento_servico
(
    agendamento_id int         not null,
    servico_id     int         not null,
    obs            varchar(50) not null,
	
	-- Restrições
    primary key (agendamento_id, servico_id),
    foreign key (agendamento_id) references agendamento(agendamento_id),
    foreign key (servico_id) references servico(servico_id)
)
go



-- INSERTS
-- PESSOA
insert into pessoa (nome, rg, cpf, data_nascimento) values
('João da Silva', '123456789', '11122233344', '1990-03-10'),
('Maria Oliveira', '987654321', '55566677788', '1985-07-22'),
('Carlos Santos', '456789123', '99988877766', '1992-12-15'),
('Ana Souza', '111223344', '12345678900', '1995-05-05'),
('Pedro Lima', '222334455', '23456789011', '1991-09-18'),
('Fernanda Costa', '333445566', '11133355577', '1990-02-14'),
('Ricardo Alves', '444556677', '22244466688', '1988-06-30'),
('Patrícia Melo', '555667788', '33355577799', '1993-10-10'),
('Lucas Ferreira', '666778899', '44466688800', '1996-04-04'),
('Juliana Rocha', '777889900', '55577799911', '1992-11-20')
go

-- CLIENTE
insert into cliente (cliente_codigo, estrela) values
(1, 5),
(2, 4),
(3, 3), 
(4, 5),
(5, 4)
go

-- FUNCIONARIO
insert into funcionario (funcionario_codigo,salario) values (6,'1700.00')
insert into funcionario (funcionario_codigo,salario) values (7,'1500.00')
insert into funcionario (funcionario_codigo,salario) values (8,'1800.00')
insert into funcionario (funcionario_codigo,salario) values (9,'1760.00')
insert into funcionario (funcionario_codigo,salario) values (10,'800.00')
go

-- LOGRADOURO
insert into logradouro (pessoa_codigo, nr, nome, cep, complemento) values
(1, '100', 'Rua das Flores', '01001-000', 'Casa 1'),
(2, '200', 'Avenida Brasil', '02002-000', 'Apto 301'),
(3, 'S/N', 'Praça Central', '03003-000', 'Loja 5'),
(4, '50',  'Rua das Acácias', '04004-000', 'Casa 2'),
(5, '120', 'Rua dos Pinheiros', '05005-000', 'Apto 12')
go

-- AGENDAMENTO
insert into agendamento (valor, data, horario, status, cliente_codigo, funcionario_codigo) values
(150, '2025-11-05', '09:00', 1, 1, 6),
(255, '2025-11-06', '10:30', 2, 2, 7),
(240, '2025-11-07', '13:00', 3, 3, 8),
(180, '2025-11-08', '09:30', 1, 4, 9),
(80,  '2025-11-09', '11:00', 2, 5, 10);
go

-- SERVICO
insert into servico (nome, descricao) values
('Corte de Cabelo', 'Estilo e renovação dos fios.'),
('Manicure', 'Unhas lindas e cuidadas.'),
('Massagem Relaxante', 'Alívio e bem-estar.'),
('Coloração', 'Cores vivas e brilho.'),
('Pintura de Unhas', 'Toque final de beleza.')
go

-- PARCELA
insert into parcela (agendamento_id, qtd_parcela, valor_parcela) values
(1, 2, '75.00'),
(2, 3, '85.00'),
(3, 2, '120.00'),
(4, 4, '45.00'),
(5, 2, '40.00')
go

-- AGENDAMENTO_SERVICO
insert into agendamento_servico (agendamento_id, servico_id, obs) values
(1, 1, 'Cliente preferencial'),
(2, 2, 'Inclui esmaltação'),
(3, 3, 'Massagem completa com óleos'),
(4, 4, 'Cliente novo, primeira visita'),
(5, 5, 'Com esfoliação facial')
go


-- CONSULTA FINAL 
select * from pessoa
select * from cliente
select * from funcionario
select * from logradouro
select * from agendamento
select * from servico
select * from parcela