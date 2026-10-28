-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS empresa_db;
USE empresa_db;

-- Criação da tabela de clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(50),
    idade INT,
    desconto DECIMAL(5,2),
    telefone VARCHAR(20)
);

-- Inserção de dados de teste
INSERT INTO clientes (nome, cidade, idade, desconto, telefone) VALUES
('Ana Silva', 'São Paulo', 28, 15.00, '11999991111'),
('Bruno Santos', 'Rio de Janeiro', 35, 10.00, '21999992222'),
('Carla Souza', 'Belo Horizonte', 22, 0.00, NULL),
('Daniel Oliveira', 'São Paulo', 42, 20.00, '11999993333'),
('Eduardo Lima', 'Curitiba', 19, 5.00, NULL),
('Fernanda Costa', 'Porto Alegre', 31, 12.50, '51999994444'),
('Gabriel Alves', 'São Paulo', 50, 0.00, '11999995555'),
('Helena Rocha', 'Salvador', 25, 8.00, NULL);

 select * from clientes;
 
 #busca cliente com idade entre 20 e 35 anos, ordenado do mais novo para o mais velho
 #between: "entre" - usado muito para inteiros e decimais.
 select nome, idade, cidade
 from clientes
 where idade between 20 and 35
 order by idade; #order by: ordenação. o "desc" quer dizer decrescente (o maior valor estará em cima)
 
 #Busca clientes que moram em São Paulo, Rio de Janeiro ou Curitiba;
 #in: localiza dentro do valor procurado e selecionado.
 select nome, cidade
 from clientes
 where cidade in ('São Paulo', 'Rio de Janeiro', 'Curitiba')
 order by cidade;
 
 #Busca clientes que não possuem número de telefone cadastrado
 #is null: procura um campo que não foi preenchido
 select nome, cidade, telefone
 from clientes
 where telefone is null;
 
 #Busca clientes que não moram em São Paulo
 #not: procura o valor que não se encontra naquele campo
 select nome, cidade
 from clientes
 where not cidade = 'São Paulo'
 order by nome;
 
 #Busca clientes cujo nome começa com a letra 'A' ou contém o sobrenome 'Costa'
 #like: "como" o valor que possui tal termo...
 select nome, cidade
 from clientes
 where nome like 'A%' or nome like '%Costa%'; #%= coringa: indica que pode ter algo antes ou depois, a
 #depender de onde ele é colocado

/*Têm idade entre 30 e 45 anos (BETWEEN)
Moram em São Paulo ou Rio de Janeiro (IN)
Possuem telefone cadastrado (not + is null)
O nome começa com vogal (LIKE)
Ordenados pelo desconto do maior para o menor (Order by)*/

Select nome, cidade, idade, desconto, telefone
from clientes
where idade between 20 and 45
	