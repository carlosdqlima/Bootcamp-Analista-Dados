CREATE TABLE IF NOT EXISTS DEPARTAMENTO (
    numdepto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS EMPREGADO (
    matricula INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(70) NOT NULL,
    salario DECIMAL(10,2),
    numdepto INT,
    CONSTRAINT EMPREGADO_FK FOREIGN KEY (numdepto) REFERENCES DEPARTAMENTO(numdepto)
);

CREATE TABLE IF NOT EXISTS PROJETO (
    codprojeto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_inicio DATE,
    data_fim DATE
);

CREATE TABLE IF NOT EXISTS TRABALHA_EM (
    matricula INT,
    codprojeto INT,
    data_inicio DATE,
    data_fim DATE,
    PRIMARY KEY (matricula, codprojeto),
    CONSTRAINT TRABALHA_FK FOREIGN KEY (matricula) REFERENCES EMPREGADO(matricula),
    CONSTRAINT TRABALHA_FK1 FOREIGN KEY (codprojeto) REFERENCES PROJETO(codprojeto)
);

CREATE TABLE IF NOT EXISTS HABILIDADE (
    codhabilidade INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS EMPREGADO_HABILIDADE (
    matricula INT,
    codhabilidade INT,
    PRIMARY KEY (matricula, codhabilidade),
    CONSTRAINT EMPREGADO_HAB_FK FOREIGN KEY (matricula) REFERENCES EMPREGADO(matricula),
    CONSTRAINT EMPREGADO_HAB_FK1 FOREIGN KEY (codhabilidade) REFERENCES HABILIDADE(codhabilidade)
);

-- INSERTS PARA DEPARTAMENTO
INSERT INTO DEPARTAMENTO (nome) VALUES ('Recursos Humanos');
INSERT INTO DEPARTAMENTO (nome) VALUES ('Desenvolvimento');
INSERT INTO DEPARTAMENTO (nome) VALUES ('Marketing');
INSERT INTO DEPARTAMENTO (nome) VALUES ('Financeiro');
INSERT INTO DEPARTAMENTO (nome) VALUES ('Suporte Técnico');

-- INSERTS PARA EMPREGADOS
INSERT INTO EMPREGADO (nome, salario, numdepto) VALUES ('Ana Silva', 4500.00, 1);
INSERT INTO EMPREGADO (nome, salario, numdepto) VALUES ('João Santos', 5500.00, 2);
INSERT INTO EMPREGADO (nome, salario, numdepto) VALUES ('Maria Oliveira', 6000.00, 2);
INSERT INTO EMPREGADO (nome, salario, numdepto) VALUES ('Carlos Souza', 4000.00, 3);
INSERT INTO EMPREGADO (nome, salario, numdepto) VALUES ('Fernanda Lima', 4700.00, 4);

-- INSERTS PARA PROJETO
INSERT INTO PROJETO (nome, data_inicio, data_fim) VALUES ('Projeto A', '2024-01-15', '2024-06-30');
INSERT INTO PROJETO (nome, data_inicio, data_fim) VALUES ('Projeto B', '2024-03-01', '2024-09-15');
INSERT INTO PROJETO (nome, data_inicio, data_fim) VALUES ('Projeto C', '2024-02-20', '2024-07-15');
INSERT INTO PROJETO (nome, data_inicio, data_fim) VALUES ('Projeto D', '2024-05-10', '2024-11-30');
INSERT INTO PROJETO (nome, data_inicio, data_fim) VALUES ('Projeto E', '2024-04-05', '2024-12-20');


-- INSERTS PARA TRABALHA_EM
INSERT INTO TRABALHA_EM (matricula, codprojeto, data_inicio, data_fim) VALUES (1, 1, '2024-01-15', '2024-06-30');
INSERT INTO TRABALHA_EM (matricula, codprojeto, data_inicio, data_fim) VALUES (2, 1, '2024-01-15', '2024-06-30');
INSERT INTO TRABALHA_EM (matricula, codprojeto, data_inicio, data_fim) VALUES (3, 2, '2024-03-01', '2024-09-15');
INSERT INTO TRABALHA_EM (matricula, codprojeto, data_inicio, data_fim) VALUES (4, 3, '2024-02-20', '2024-07-15');
INSERT INTO TRABALHA_EM (matricula, codprojeto, data_inicio, data_fim) VALUES (5, 4, '2024-05-10', '2024-11-30');

-- INSERTS PARA HABILIDADES
INSERT INTO HABILIDADE (descricao) VALUES ('Java Programming');
INSERT INTO HABILIDADE (descricao) VALUES ('SQL Database Management');
INSERT INTO HABILIDADE (descricao) VALUES ('Project Management');
INSERT INTO HABILIDADE (descricao) VALUES ('Data Analysis');
INSERT INTO HABILIDADE (descricao) VALUES ('Network Security');

-- INSERTS PARA  EMPREGADO_HABILIDADE
INSERT INTO EMPREGADO_HABILIDADE (matricula, codhabilidade) VALUES (1, 2);
INSERT INTO EMPREGADO_HABILIDADE (matricula, codhabilidade) VALUES (2, 1);
INSERT INTO EMPREGADO_HABILIDADE (matricula, codhabilidade) VALUES (3, 3);
INSERT INTO EMPREGADO_HABILIDADE (matricula, codhabilidade) VALUES (4, 4);
INSERT INTO EMPREGADO_HABILIDADE (matricula, codhabilidade) VALUES (5, 5);