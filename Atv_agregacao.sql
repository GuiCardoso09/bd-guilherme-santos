CREATE DATABASE lojaEletro;
USE lojaEletro;

CREATE TABLE vendas (
    id_pedido INT PRIMARY KEY,
    cliente VARCHAR(50),
    categoria VARCHAR(30),
    valor DECIMAL(10, 2),
    quantidade INT,
    status VARCHAR(20),
    data_venda DATE
);
INSERT INTO vendas VALUES
(1, 'Ana Silva', 'Smartphones', 2500.00, 1, 'Concluido', '2026-01-10'),
(2, 'Carlos Souza', 'Acessórios', 150.00, 3, 'Concluído', '2026-01-12'),
(3, 'Ana Silva', 'Notebooks', 4800.00, 1, 'Concluído', '2026-01-15'),
(4, 'Beatriz Lima', 'Smartphones', 3200.00, 1, 'Cancelado', '2026-01-18'),
(5, 'João Pedro', 'Acessórios', 80.00, 2, 'Concluído', '2026-02-02'),
(6, 'Carlos Souza', 'Notebooks', 5100.00, 1, 'Concluído', '2026-02-05'),
(7, 'Mariana Costa', 'Smartphones', 2900.00, 2, 'Concluído', '2026-02-10'),
(8, 'João Pedro', 'Monitores', 1200.00, 1, 'Concluído', '2026-02-14'),
(9, 'Beatriz Lima', 'Acessórios', 220.00, 4, 'Concluído', '2026-02-20'),
(10, 'Ana Silva', 'Monitores', 1350.00, 1, 'Cancelado', '2026-02-25');

select
 count(*) as total_pedido
 from vendas;
 
 select * from vendas;
select
 sum(quantidade*valor) as valor_total,
 avg(valor) as valor_medio
 from vendas;
 
 select
  max(valor) as maior_valor,
  min(valor) as menor_valor
  from vendas;
  
select categoria,
    count(*) as qntd_total,
    sum(quantidade * valor) as valor_total
from vendas
group by categoria
order by categoria desc;

select 
cliente
having sum(quantidade * valor) as total_gasto
from vendas;
    