create database Ecommerce;
use Ecommerce;

#Criação da tabela

CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    categoria VARCHAR(30),
    preco DECIMAL(10, 2),
    estoque INT,
    status VARCHAR(20)
);

#2. Inserção de dados para teste

INSERT INTO produtos (id, nome, categoria, preco, estoque, status) VALUES
(1, 'Smartphone X', 'Eletrônicos', 2500.00, 15, 'Ativo'),
(2, 'Notebook Gamer', 'Informática', 5500.00, 5, 'Ativo'),
(3, 'Mouse Sem Fio', 'Acessórios', 80.00, 50, 'Ativo'),
(4, 'Teclado Mecânico', 'Acessórios', 250.00, 0, 'Inativo'),
(5, 'Monitor 27"', 'Informática', 1200.00, 8, 'Ativo'),
(6, 'Fone Bluetooth Descontinuado', 'Acessórios', 150.00, 0, 'Descontinuado'),
(7, 'Cabo HDMI Antigo', 'Acessórios', 20.00, 0, 'Descontinuado');

SELECT * FROM produtos;

#Questões da Atividade
/*Parte 1: Atualizações de Dados (UPDATE)*/
#Reajuste de preços para Informática
update produtos
set preco = preco * 1.10
where categoria = 'Informatica';

#Novo Lote chamado "Teclado Mecânico": Atvio e 20 unidades em estoque
update produtos
set estoque = 20, status = 'Ativo'
where id=4;

#desconto nos produtos da categoria "Acessórios": R$10.00 de desconto em produtos ab=baixo de R$100.00
update produtos
set preco = preco - 10.00
where categoria = 'Acessórios' and preco <= 100.00;

/*Parte 2: Remoção de Dados (DELETE)
Sintaxe do comando delete

DELETE FROM nome_da_tabela
WHERE condicao;

Exemplo
DELETE FROM clientes
WHERE id = 5;
*/

#Remoção de produtos com status "Descontinuado"
delete from produtos
where status='Descontinuado';

#Exclusão de produtos da categoria "Acessórios" com nenhum produto em estoque
delete from produtos
where categoria = 'Acessórios' and estoque = 0;