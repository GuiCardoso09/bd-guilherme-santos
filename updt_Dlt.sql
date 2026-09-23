create database empresa2;
use empresa2;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    ativo BOOLEAN NOT NULL 
);
INSERT INTO funcionarios (nome, cargo, salario, departamento, ativo) VALUES
    -- Departamento de TI
    ('Fernando Silva', 'Desenvolvedor', 5500.00, 'TI', TRUE),
    ('Gabriela Rocha', 'Analista', 4800.00, 'TI', TRUE),
    ('Heitor Lima', 'Engenheiro de Software', 8500.00, 'TI', TRUE),
    ('Isabela Souza', 'Assistente', 2800.00, 'TI', FALSE),
    
    -- Departamento de Vendas
    ('João Pedro', 'Consultor de Vendas', 3200.00, 'Vendas', TRUE),
    ('Karen Ribeiro', 'Consultor de Vendas', 3500.00, 'Vendas', TRUE),
    ('Lucas Mendes', 'Gerente', 9500.00, 'Vendas', TRUE),
    ('Mariana Costa', 'Assistente', 2400.00, 'Vendas', FALSE),

    -- Departamento de RH
    ('Natan Alves', 'Coordenador', 7200.00, 'RH', TRUE),
    ('Olivia Martins', 'Assistente', 2600.00, 'RH', TRUE),
    ('Paulo Henrique', 'Analista', 5100.00, 'RH', FALSE),

    -- Departamento de Marketing
    ('Quésia Nunes', 'Especialista', 6200.00, 'Marketing', TRUE),
    ('Rafael Torres', 'Analista', 4300.00, 'Marketing', TRUE),
    ('Sabrina Dias', 'Assistente', 2300.00, 'Marketing', TRUE),
    ('Tiago Ramos', 'Gerente', 8800.00, 'Marketing', FALSE),

    -- Departamento de Financeiro
    ('Uriel Santos', 'Analista', 4900.00, 'Financeiro', TRUE),
    ('Vanessa Cruz', 'Coordenador', 7500.00, 'Financeiro', TRUE),
    ('Wagner Lopes', 'Assistente', 2700.00, 'Financeiro', FALSE),
    ('Xavier Freitas', 'Gerente', 10500.00, 'Financeiro', TRUE),
    ('Yasmin Cardoso', 'Estagiário', 1500.00, 'Financeiro', TRUE);
    
    select * from funcionarios;
    
    /*Sintaxe update:
    UPDATE nome_Tabela
	SET
	coluna1 = valor1,
    coluna2 = valor2.
    coluna3 = valor3
    WHERE condicao;*/

		#aumentar em 10% salario dos funcionários de ti que ganham menos de RS5000,00
        
	update funcionarios
    set salario = salario *1.10
    where departamento = 'TI' and salario < 5000.00;
    
    	#aumentar em 5% salario para quem for assistente ou analista
        
        update funcionarios
        set salario = salario * 1.05
        where cargo = 'Analista' OR cargo = 'Assistente';
    
     #desativa funcionarios que ganham 8000 ou mais e que não são no Deoartamento de RH
     
     update funcionarios
     set ativo = false
     where salario >=8000.00 and not (departamento = 'RH');
     
     #defina um bonus para que, ganha entre 300 e 6000(inclusive, no seto de vendas
     
     update funcionarios
     set salario = salario + 500.00
     where (salario >= 3000.00 and salario <= 6000.00) and departamento = 'Vendas';
        
	#Reativa funcionarios inativos que ganham diferente de 0 ou que pertencem ao setor TI
    update funcionarios
    set ativo = true
    where ativo = false and (salario <> 0.00 or departamento - 'TI');