/*As funções de agregação no MySQL executam cálculos 
em um conjunto de linhas e retornam um único valor como resultado

As mais utilizadas são:

COUNT(): Conta a quantidade de linhas ou registros.

SUM(): Soma os valores de uma coluna numérica.

AVG(): Calcula a média aritmética de uma coluna numérica.

MAX(): Retorna o maior valor.

MIN(): Retorna o menor valor.

Elas são frequentemente usadas junto com a cláusula GROUP BY para agrupar
resultados por categorias*/

CREATE DATABASE IF NOT EXISTS vendas_db3;
USE vendas_db3;

-- Criar a tabela de vendas
CREATE TABLE vendas_02(
    id INT PRIMARY KEY AUTO_INCREMENT,
    vendedor VARCHAR(50),
    produto VARCHAR(50),
    quantidade INT,
    preco_unitario DECIMAL(10,2)
);

-- Inserindo dados de exemplo
INSERT INTO vendas_02 (vendedor, produto, quantidade, preco_unitario) VALUES 
('Ana', 'Notebook', 2, 3500.00),
('Ana', 'Mouse', 5, 150.00),
('Bruno', 'Teclado', 3, 250.00),
('Bruno', 'Monitor', 1, 1200.00),
('Carlos', 'Mouse', 10, 140.00),
('Carlos', 'Teclado', 2, 260.00);

select
	count(*) AS total_vendas,
    sum(quantidade * preco_unitario) AS faturamento_total,
    avg(preco_unitario) AS preco_medio,
    max(preco_unitario) as maior_preco,
    min(preco_unitario) as menor_preco
FROM vendas_02;

#Usando funçoes de agregação GROUP BY
#agrupamento de informações. Faturamento total por vendedor?
	select vendedor,
    count(*) as qtd_transacoes,
    sum(quantidade * preco_unitario) as total_vendido
from vendas_02
group by vendedor
order by vendedor desc;

#-------------------------------------------------------------------------

/*Funções de agregação com where. Faturamento total do notebook?*/

Select vendedor,
sum(quantidade * preco_unitario) as total_notebook
from vendas_02
where produto="notebook";