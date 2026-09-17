CREATE DATABASE teste2;
USE teste2;

CREATE TABLE cad (
  CODFUN  INT NOT NULL PRIMARY KEY,
  NOME    VARCHAR(40) NOT NULL,
  DEPTO   CHAR( 2),
  FUNCAO  CHAR(20),
  SALARIO DECIMAL(10, 2));
  #comando ddl: ALterar tabelas
  #alter table <nometabela><clausulas(vc não precisa colocar "colun" se a clausula for "add"><camposnovos>
  alter table cad add filhos int;
  alter table cad add admissao varchar(10) not null;
  desc cad; 
  #para alterar o tipo de dados em propriedades, usa-se "modify column"
  alter table cad modify column admissao date not null;
  desc cad;
  alter table cad modify column depto char(4);
  desc cad;
  alter table cad modify column funcao char(20) not null;
  desc cad;
  alter table cad drop column admissao;
  desc cad;
 alter table cad change column depto departamento char(4);
 desc cad;
 alter table cad modify column departamento char(4);
 rename table cad to cadfun;
#rename table <tabela origem> to <tabela destino>
 desc cadfun;
 #drop table cad;//apaga a tabela 