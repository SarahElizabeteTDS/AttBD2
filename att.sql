CREATE DATABASE Empresa;
USE Empresa;

create table Departamento
(
	codDep int primary key,
    descricao varchar(100) not null
);

create table Funcionario
(
	codFun int primary key,
    nomeFun varchar(100) not null,
    endereco varchar(150),
    telefone varchar(15),
    codDepartamento int,
    foreign key (codDepartamento) references Departamento(codDep)
);

create table Dependente
(
	codDependente int primary key,
    codFun int,
    nomeDependente varchar(100) not null,
    dataNasci date,
    foreign key (codFun) references Funcionario(codFun)
);

alter table Funcionario add column dataNasci date;

alter table Dependente add column profissao varchar(30);

alter table Departamento modify column descricao char(50);

alter table Dependente add column teste varchar(100);

alter table Dependente drop column teste;

desc Funcionario;
desc Departamento;
desc Dependente;

insert into Departamento values (1, "Recursos Humanos"), (2, "Tecnologia da Informação"), (3, "Financeiro");

insert into Funcionario values (1, "João Silva", "Rua A, 123", "9999-1111", 1, "1985-01-15"), (2, "Maria Oliveira", "Rua B, 456", "9999-2222", 2, "1990-05-22"), (3, "Carlos Souza", "Rua C, 789", "9999-3333", 3, "1978-09-10");

insert into Dependente values (1, 1, "Ana Silva", "2010-02-20", "Estudante"), (2, 2, "Pedro Oliveira", "2012-08-14", "Estudante"), (3, 3, "Lucas Souza", "2015-11-30", "Estudante");
