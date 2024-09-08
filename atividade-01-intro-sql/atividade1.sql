
--departamento(departamento_id,nome)
CREATE TABLE DEPARTAMENTO (
    DEPARTAMENTO_ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(100)
);

--gerente(gerente_id, nome)
CREATE TABLE GERENTE (
    GERENTE_ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(100)
);

--empregado(empregado_id,nome,departamento_id,salario,data_admissao,gerente_id,cargo)
CREATE TABLE EMPREGADO (
    EMPREGADO_ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(100),
    DEPARTAMENTO_ID INT,
    SALARIO DECIMAL(10, 2),
    DATA_ADMISSAO DATE,
    GERENTE_ID INT,
    CARGO VARCHAR(100),
    CONSTRAINT FOREIGN KEY (DEPARTAMENTO_ID) REFERENCES DEPARTAMENTO(DEPARTAMENTO_ID),
    CONSTRAINT FOREIGN KEY (GERENTE_ID) REFERENCES GERENTE(GERENTE_ID)
);

-- REALIZANDO OS INSERTS

INSERT INTO DEPARTAMENTO (nome)
VALUES
('Recursos Humanos'),
('Tecnologia da Informação'),
('Financeiro'),
('Marketing'),
('Operações'),
('Vendas'),
('Jurídico'),
('Pesquisa e Desenvolvimento'),
('Suporte ao Cliente'),
('Logística');

INSERT INTO GERENTE(nome)
VALUES
('Tatiane Rocha'),
('André Martins'),
('Simone Pires'),
('Carlos Lima'),
('Ana Oliveira'),
('José Carlos'),
('Mariana Santos'),
('Luiz Costa'),
('Luciana Gomes'),
('Paulo Ribeiro');

INSERT INTO EMPREGADO (nome,departamento_id,salario,data_admissao,gerente_id,cargo)
VALUES
('Mateus Silva', 6, 7000.00, '2017-10-01', 1, 'Consultor de Vendas'),
('Larissa Moura', 6, 4800.00, '2020-04-15', 1, 'Analista de Vendas'),
('Paula Souza', 6, 5300.00, '2022-01-25', 1, 'Coordenadora de Vendas'),
('Tiago Carvalho', 7, 4000.00, '2019-08-12', 7, 'Assistente Jurídico'),
('Bruna Costa', 7, 4000.00, '2021-06-30', 7, 'Assistente Jurídico'),
('Felipe Pereira', 8, 8000.00, '2018-11-15', 8, 'Engenheiro de Pesquisa'),
('Lucas Azevedo', 8, 5200.00, '2021-07-22', 8, 'Pesquisador'),
('Patrícia Lima', 9, 4300.00, '2020-11-05', 9, 'Analista de Suporte'),
('Renato Vieira', 9, 6000.00, '2019-09-28', 9, 'Supervisor de Suporte'),
('Gustavo Araújo', 9, 4100.00, '2022-02-14', 9, 'Técnico de Suporte'),
('Carla Dias', 10, 9000.00, '2018-05-19', 5, 'Gerente de Logística'),
('Diego Martins', 10, 5400.00, '2021-10-10', 5, 'Coordenador de Logística'),
('Fernanda Silva', 10, 5000.00, '2023-04-01', 5, 'Analista de Logística'),
('João Pereira', 7, 7500.00, '2024-09-01', 7, 'Advogado'),
('Maria Costa', 2, 5500.00, '2019-03-12', 2, 'Desenvolvedor Sênior'),
('Lucas Martins', 3, 4500.00, '2021-06-18', 3, 'Analista Financeiro'),
('Fernanda Almeida', 4, 3700.00, '2022-08-05', 4, 'Especialista em Marketing'),
('Rafael Santos', 5, 6000.00, '2024-07-01', 5, 'Supervisor de Operações'),
('Cláudia Torres', 6, 4800.00, '2018-10-01', 1, 'Consultora de Vendas'),
('Pedro Almeida', 7, 6500.00, '2020-02-19', 7, 'Advogado'),
('Juliana Souza', 8, 7200.00, '2019-05-22', 8, 'Engenheira de Pesquisa'),
('Rodrigo Mendes', 9, 4100.00, '2021-07-09', 9, 'Analista de Suporte'),
('Camila Oliveira', 10, 5300.00, '2024-08-15', 5, 'Coordenadora de Logística');


-- Desafio 1: Listar Empregados de um Departamento Específico
  -- 1. Liste todos os empregados que pertencem ao departamento cujo nome é 'Marketing'.

SELECT e.nome
FROM EMPREGADO AS e
WHERE departamento_id IN (SELECT departamento_id FROM DEPARTAMENTO WHERE nome = 'Marketing');


  -- 2. Crie uma view chamada View_Marketing_Empregados que contenha todos os empregados do departamento 'Marketing'.

CREATE VIEW View_Marketing_Empregados AS
SELECT e.nome
FROM EMPREGADO AS e
WHERE departamento_id IN (SELECT departamento_id FROM DEPARTAMENTO WHERE nome = 'Marketing');

-- Desafio 2: Média de Salário por Departamento
  -- 3. Liste o nome do departamento e a média dos salários de seus empregados.

SELECT DEPARTAMENTO.nome, AVG(e.salario) AS media_salarial
FROM EMPREGADO AS e
JOIN DEPARTAMENTO ON e.departamento_id = DEPARTAMENTO.DEPARTAMENTO_ID
GROUP BY DEPARTAMENTO.nome;

  -- 4. Crie uma view chamada View_Media_Salarios que mostre o nome do departamento e a média dos salários dos empregados.

CREATE VIEW View_Media_Salarios AS
SELECT DEPARTAMENTO.nome, AVG(e.salario) AS media_salarial
FROM EMPREGADO AS e
JOIN DEPARTAMENTO ON e.departamento_id = DEPARTAMENTO.DEPARTAMENTO_ID
GROUP BY DEPARTAMENTO.nome;

-- Desafio 3: Empregados com Salário Acima da Média
  -- 5. Liste todos os empregados que têm um salário acima da média dos salários do seu departamento.

SELECT e.nome, e.salario, e.departamento_id
FROM EMPREGADO AS e
WHERE e.salario > (SELECT AVG(e.salario) FROM EMPREGADO WHERE DEPARTAMENTO_ID = e.departamento_id);

  -- 6. Crie uma view chamada View_Empregados_Acima_Media que contenha os empregados que têm um salário acima da média do seu departamento.

CREATE VIEW View_Empregados_Acima_Media AS
SELECT e.nome, e.salario, e.departamento_id
FROM EMPREGADO AS e
WHERE e.salario > (SELECT AVG(e.salario) FROM EMPREGADO WHERE DEPARTAMENTO_ID = e.departamento_id);

-- Desafio 4: Departamentos com Mais de X Empregados
  -- 7. Liste todos os departamentos que têm mais de 5 empregados.

SELECT *
FROM DEPARTAMENTO AS d
WHERE (SELECT COUNT(*) FROM EMPREGADO WHERE d.departamento_id = EMPREGADO.departamento_id) > 5;

  -- 8. Crie uma view chamada View_Departamentos_Com_Muitos_Empregados que contenha os departamentos com mais de 5 empregados.

CREATE VIEW View_Departamentos_Com_Muitos_Empregados AS
SELECT *
FROM DEPARTAMENTO AS d
WHERE (SELECT COUNT(*) FROM EMPREGADO WHERE d.departamento_id = EMPREGADO.departamento_id) > 5;

-- Desafio 5: Empregados e Seus Gerentes
  -- 9. Liste todos os empregados juntamente com o nome de seus gerentes.

SELECT EMPREGADO.nome, g.nome AS nome_gerente
FROM EMPREGADO
JOIN GERENTE AS g ON g.GERENTE_ID = EMPREGADO.GERENTE_ID;

  -- 10.Crie uma view chamada View_Empregados_Gerentes que mostre todos os empregados e o nome de seus gerentes.

CREATE VIEW View_Empregados_Gerentes AS
SELECT EMPREGADO.nome, g.nome AS nome_gerente
FROM EMPREGADO
JOIN GERENTE AS g ON g.GERENTE_ID = EMPREGADO.GERENTE_ID;

-- Desafio 6: Departamentos Sem Empregados
  -- 11.Liste todos os departamentos que não têm empregados.

SELECT *
FROM DEPARTAMENTO
WHERE NOT EXISTS (SELECT * FROM EMPREGADO WHERE departamento_id = DEPARTAMENTO.departamento_id);

  -- 12.Crie uma view chamada View_Departamentos_Sem_Empregados que contenha os departamentos que não têm empregados.

CREATE VIEW View_Departamentos_Sem_Empregados AS
SELECT *
FROM DEPARTAMENTO
WHERE NOT EXISTS (SELECT * FROM EMPREGADO WHERE departamento_id = DEPARTAMENTO.departamento_id);

-- Desafio 7: Salários Acima de um Valor Específico
  -- 13.Liste todos os empregados que têm um salário acima de R$ 5000.

SELECT nome, salario
FROM EMPREGADO
WHERE salario > 5000;

  -- 14.Crie uma view chamada View_Salarios_Acima_5000 que contenha os empregados com salário acima de R$ 5000.

CREATE VIEW View_Salarios_Acima_5000 AS
SELECT nome, salario
FROM EMPREGADO
WHERE salario > 5000;


-- Desafio 8: Empregados por Data de Admissão
  -- 15.Liste todos os empregados que foram admitidos nos últimos 6 meses.

SELECT nome, data_admissao
FROM EMPREGADO
WHERE data_admissao >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

  -- 16.Crie uma view chamada View_Admitidos_Recentemente que contenha os empregados admitidos nos últimos 6 meses.

CREATE VIEW View_Admitidos_Recentemente AS
SELECT nome, data_admissao
FROM EMPREGADO
WHERE data_admissao >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

-- Desafio 9: Agrupar Empregados por Cargo
  -- 17.Liste o número de empregados em cada cargo.

SELECT cargo, COUNT(cargo) AS qtd_empregado
FROM EMPREGADO
GROUP BY cargo;

  -- 18.Crie uma view chamada View_Empregados_Por_Cargo que mostre o número de empregados em cada cargo.

CREATE VIEW View_Empregados_Por_Cargo AS
SELECT cargo, COUNT(cargo) AS qtd_empregado
FROM EMPREGADO
GROUP BY cargo;

-- Desafio 10: Empregados de um Departamento com Condição de Salário
  -- 19.Liste todos os empregados do departamento 'Finance' que têm um salário acima da média dos salários dos empregados desse departamento.

SELECT nome, salario
FROM EMPREGADO
WHERE departamento_id = (SELECT departamento_id FROM DEPARTAMENTO WHERE nome = 'Financeiro') AND salario > (SELECT AVG(salario) FROM EMPREGADO WHERE departamento_id = (SELECT departamento_id FROM DEPARTAMENTO WHERE nome = 'Financeiro'));

  -- 20.Crie uma view chamada View_Finance_Salarios_Acima_Media que contenha os empregados do departamento 'Finance' com salário acima da média.

CREATE VIEW View_Finance_Salarios_Acima_Media AS
SELECT nome, salario
FROM EMPREGADO
WHERE departamento_id = (SELECT departamento_id FROM DEPARTAMENTO WHERE nome = 'Financeiro') AND salario > (SELECT AVG(salario) FROM EMPREGADO WHERE departamento_id = (SELECT departamento_id FROM DEPARTAMENTO WHERE nome = 'Financeiro'));



