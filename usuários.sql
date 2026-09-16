CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE usuario (
RA int primary key not null,
nome varchar(50) not null,
CPF varchar(11) not null,
dataNascimento date not null,
endereco varchar(130) not null,
telefone varchar(20) not null,
email varchar(70) not null
);  