CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE usuario (
id_usuario int primary key not null,
senha varchar(255) not null,
tipo_usuario varchar(45) not null
);

create table curso (
id_curso int primary key not null,
nome_curso varchar(70) not null,
Mtec varchar(45) binary not null);

create table turma (
id_turma int primary key not null,
id_curso int,
turno varchar(45) not null,
ano_calendario int not null,
periodo_letivo int not null,
foreign key (id_curso) references curso(id_curso) on update cascade on delete set null
);

create table aluno (
ra int primary key not null,
id_usuario int,
id_turma int,
nome_aluno varchar(50) not null,
CPF_aluno varchar(20) not null unique,
dataNascimento date not null,
endereco varchar(200) not null,
telefone_aluno varchar(20) not null,
email_aluno varchar(70) not null,
situacao varchar(45) binary not null,
matricula bigint unique,
foreign key (id_usuario) references usuario(id_usuario) on update cascade on delete restrict,
foreign key (id_turma) references turma(id_turma) on delete set null
);

create table professor (
id_professor int primary key not null,
id_usuario int,
nome_prof varchar(70) not null,
telefone_prof varchar(20) not null,
email_prof varchar(70) not null,
disciplina varchar(50),
foreign key (id_usuario) references usuario(id_usuario) on update cascade on delete restrict
);

create table bibliotecario (
id_bibliotecario int primary key not null,
id_usuario int,
nome_biblio varchar(50) not null,
CPF_biblio varchar(20) not null unique,
email_biblio varchar(70) not null,
telefone_biblio varchar(20) not null,
foreign key (id_usuario) references usuario(id_usuario) on update cascade on delete restrict
);
