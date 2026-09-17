create database empresaTreinamento;
use empresaTreinamento;

create table cursos (
cod int not null primary key,
nome varchar(50) not null,
preco decimal(7,2) not null,
duracao date not null
);

create table professor (
cod int not null primary key,
nome varchar(50) not null,
endereco varchar(100) not null,
telefone varchar(20) not null,
modulo varchar(30) not null
);
 
create table alunos (
cod int not null primary key,
nome varchar(50) not null,
endereco varchar(50) not null,
telefone varchar(20) not null,
cursos_Aluno varchar(300) not null
);

desc cursos;
desc professor;
desc alunos;

insert into cursos value(1, 'Administração', 800.00, '10 noites');
insert into cursos value(2, 'Desenvolvimento de Sistemas', 900.00,'10 noites');
insert into cursos value(3, 'Gastronomia', 500.00, '5 dias');
insert into cursos value(4, 'Economia', 700.00, '4 sábados');

insert into professor value(5, 'Beatriz', 'Av. Monsenhor A. de Castro, 174', 1194846712, 'História');
insert into professor value(6, 'André', 'R.Tuiuti, 3302', 1197856897, 'Economia');
insert into professor value(7, 'Orlando', 'R.Marcial, 893', 1138493129, 'Desenvolvimento de Sistemas');
insert into professor value(8, 'Maria Eduarda', 'Av. Aricanduva, 936', 1193783298, 'Gastronomia');

insert into alunos values
(9, 'Guilherme C. dos Santos', 'Av. Cipriano Rodrigues, 340', 11933096424, 'Desenvolvimento de Sistemas'),
(10, 'Lorena Alves', 'R. Ploretáriado, 2981', 1198832982, 'Administração'),
(11, 'Enrico Palharini', 'R.Azevedo Soares, 645', 1194879832, 'Economia'),
(12, 'Vitória R. Leme', 'Av.Montserrat, 666', 1193849-2666, 'Gastronomia');
select*from alunos;