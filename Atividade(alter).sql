create database biblioteca;
use biblioteca;

CREATE TABLE cadlivros (
	id int not null primary key,
    titulo varchar(255) not null,
    autor char(255) not null,
    idade int,
    ano_publicacao char(10)
);

desc cadlivros;
rename table cadlivros to livros;
desc livros;
alter table livros modify column ano_publicacao int;
desc livros;
alter table livros add genero varchar(50) not null;
desc livros;
alter table livros add quant_disponivel int;
desc livros;
#obs: tive que alterar a coluna anterior, pois esqueci de definí-la como obrigatória
alter table livros modify column quant_disponivel int not null;
desc livros;
alter table livros modify column titulo varchar(50) not null;
desc livros;
alter table livros drop column idade;
desc livros;
alter table livros change column ano_publicacao anopubli char(10);
desc livros;
alter table livros change column quant_disponivel quantdisp int not null;
desc livros;
alter table livros modify column anopubli char(10) not null;
desc livros;
alter table livros add editora varchar(50) not null;
desc livros;