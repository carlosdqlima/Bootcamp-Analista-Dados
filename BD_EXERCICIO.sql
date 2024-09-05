
-- CRIAÇÃO DE TABELAS

-- equipamento (cod_equipamento, nm_equipamento, valor, quantidade,tipo)
CREATE TABLE IF NOT EXISTS equipamento (
  cod_equipamento INT NOT NULL AUTO_INCREMENT,
  nm_equipamento VARCHAR(70),
  valor INT,
  quantidade INT,
  tipo VARCHAR(35),
  CONSTRAINT equipamento_PK PRIMARY KEY (cod_equipamento)
);

-- sala (cod_sala, nome_sala)
CREATE TABLE IF NOT EXISTS sala (
  cod_sala INT AUTO_INCREMENT,
  nome_sala VARCHAR(70) NOT NULL,
  CONSTRAINT sala_PK PRIMARY KEY (cod_sala)
);

-- curso (cod_curso, nome_curso)
CREATE TABLE IF NOT EXISTS curso (
  cod_curso INT NOT NULL AUTO_INCREMENT,
  nome_curso VARCHAR(70) NOT NULL,
  CONSTRAINT curso_PK PRIMARY KEY (cod_curso)
);

-- professor (cod_professor, nm_professor, telefone, cod_curso, salario)
CREATE TABLE IF NOT EXISTS professor (
  cod_professor INT NOT NULL AUTO_INCREMENT,
  nm_professor VARCHAR(70) NOT NULL,
  telefone VARCHAR(15) NOT NULL,
  cod_curso INT NOT NULL,
  salario INT NOT NULL,
  CONSTRAINT professor_PK PRIMARY KEY (cod_professor),
  CONSTRAINT professor_FK FOREIGN KEY (cod_curso) REFERENCES curso (cod_curso)
);

-- reserva (cod_equipamento, cod_professor, dt_reserva, horario, cod_sala)
CREATE TABLE IF NOT EXISTS reserva (
  cod_equipamento INT NOT NULL AUTO_INCREMENT,
  cod_professor INT NOT NULL,
  dt_reserva DATE NOT NULL,
  horario TIME NOT NULL,
  cod_sala INT NOT NULL,
  CONSTRAINT reserva_PK PRIMARY KEY (cod_equipamento,cod_professor,cod_sala),
  CONSTRAINT reserva_equipamento_FK FOREIGN KEY (cod_equipamento) REFERENCES equipamento (cod_equipamento),
  CONSTRAINT reserva_professor_FK FOREIGN KEY (cod_professor) REFERENCES professor (cod_professor),
  CONSTRAINT reserva_sala_FK FOREIGN KEY (cod_sala) REFERENCES sala (cod_sala)
);

--------------------------------------------------------------------------------------------------------------

-- FAZER OS INSERTS

INSERT INTO curso (nome_curso)
VALUES ('Introdução à Programação'),
('Banco de Dados Avançado'),
('Desenvolvimento Web com Python'),
('Algoritmos e Estruturas de Dados'),
('Machine Learning e Inteligência Artificial'),
('Redes de Computadores'),
('Segurança da Informação'),
('Gestão de Projetos de TI'),
('Engenharia de Software'),
('Programação Mobile com Android'); 

SELECT * FROM curso;

INSERT INTO sala (nome_sala)
VALUES ('Sala A1'),
('Sala A2'),
('Sala B1'),
('Sala B2'),
('Lab 1'),
('Lab 4'),
('Lab 5'),
('Lab 2'),
('Lab 3'),
('Lab 6');

SELECT * FROM sala;

INSERT INTO equipamento (nm_equipamento, valor, quantidade,tipo)
VALUES ('Projetor Multimídia', 2500,5, 'Áudio/Visual'),
('Computador Desktop', 4000,70,'Informática'),
('Impressora Laser', 1500,10,'Impressão'),
('Switch de Rede', 900,100,'Redes'),
('Notebook', 5000,30,'Informática'),
('Monitor 4k', 2000, 80, 'Informática'),
('Impressora 3D',5000,4,'Impressão'),
('Teclado Mecânico',250,100,'Informática'),
('Cadeira Ergonômica',1100,80,'Mobiliário'),
('Estabilizador de Energia',2000,10,'Infraestrutura');

SELECT * FROM equipamento;

INSERT INTO professor (nm_professor, telefone, cod_curso, salario)
VALUES ('Carlos Lima', '(11) 91234-5678', 1, 4500.00),
('Ana Martins', '(21) 98765-4321', 2, 4800.00),
('João Souza', '(31) 99876-5432', 3, 5200.00),
('Maria Oliveira', '(41) 91111-2222', 4, 4700.00),
('Pedro Lima', '(51) 92345-6789', 5, 4900.00),
('Fernanda Costa', '(61) 93333-4444', 6, 5000.00),
('Marcos Almeida', '(71) 94444-5555', 7, 5100.00),
('Paula Ferreira', '(81) 95555-6666', 8, 5300.00),
('Luiz Ramos', '(91) 96666-7777', 9, 5400.00),
('Bianca Rocha', '(31) 97777-8888', 10, 5500.00);

SELECT * FROM professor;

INSERT INTO reserva (cod_equipamento, cod_professor, dt_reserva, horario, cod_sala)
VALUES (1, 2, '2024-09-06', '09:00:00', 3),
(2, 4, '2024-09-07', '10:30:00', 5),
(3, 6, '2024-09-08', '11:00:00', 1),
(4, 1, '2024-09-09', '14:00:00', 2),
(5, 3, '2024-09-10', '15:30:00', 4),
(6, 5, '2024-09-11', '16:00:00', 6),
(7, 7, '2024-09-12', '13:00:00', 8),
(8, 8, '2024-09-13', '14:30:00', 9),
(9, 9, '2024-09-14', '10:00:00', 7),
(10, 10, '2024-09-15', '12:00:00', 10);

SELECT * FROM reserva;
