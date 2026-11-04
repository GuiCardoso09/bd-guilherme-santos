create database loja_virtual;
use loja_virtual;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT,
    fornecedor VARCHAR(100)
);

INSERT INTO produtos
(nome, categoria, preco, estoque, fornecedor) VALUES
('Notebook', 'Informática', 3500.00, 10, 'TechBrasil'),
('Mouse', 'Informática', 80.00, 50, 'InfoMax'),
('Teclado', 'Informática', 150.00, 30, 'InfoMax'),
('Cadeira', 'Móveis', 650.00, 8, 'Moveis Silva'),
('Mesa', 'Móveis', 900.00, 5, 'Moveis Silva'),
('Monitor', 'Informática', 1200.00, 12, 'TechBrasil'),
('Impressora', 'Periféricos', 750.00, 7, 'PrintMais'),
('Webcam', 'Periféricos', 180.00, 0, 'PrintMais'),
('Headset', 'Periféricos', 250.00, 15, NULL),
('Smartphone', 'Telefonia', 2200.00, 20, 'TechBrasil');

SELECT * FROM produtos
WHERE categoria IN ('Informática', 'Periféricos');

SELECT * FROM produtos
WHERE preco BETWEEN 200 AND 1000;

SELECT * FROM produtos
WHERE nome LIKE 'M%';

SELECT * FROM produtos
WHERE nome LIKE '%e';

SELECT * FROM produtos
WHERE fornecedor IS NULL;

SELECT * FROM produtos
WHERE fornecedor IS NOT NULL;

SELECT * FROM produtos
WHERE categoria = 'Informática' AND preco > 100;

SELECT * FROM produtos
WHERE categoria = 'Móveis' OR categoria = 'Telefonia';

SELECT * FROM produtos
WHERE categoria NOT IN ('Informática', 'Telefonia');

SELECT * FROM produtos
WHERE estoque > 0 AND preco BETWEEN 100 AND 1000;
