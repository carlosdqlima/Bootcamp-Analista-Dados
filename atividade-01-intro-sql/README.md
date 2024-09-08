# ATIVIDADE 01 – SQL

``` sql
--- empregado(empregado_id,nome,departamento_id,salario,data_admissao,gerente_id,cargo)
CREATE TABLE EMPREGADO (
  EMPREGADO_ID INT PRIMARY KEY,
  NOME VARCHAR(100),
  DEPARTAMENTO_ID INT,
  SALARIO DECIMAL(10, 2),
  DATA_ADMISSAO DATE,
  GERENTE_ID INT,
  CARGO VARCHAR(100),
  FOREIGN KEY (DEPARTAMENTO_ID) REFERENCES
DEPARTAMENTO(DEPARTAMENTO_ID),
  FOREIGN KEY (GERENTE_ID) REFERENCES GERENTE(GERENTE_ID)
);
--- departamento(departamento_id,nome)
CREATE TABLE DEPARTAMENTO (
  DEPARTAMENTO_ID INT PRIMARY KEY,
  NOME VARCHAR(100)
);
-- gerente(gerente_id, nome)
CREATE TABLE GERENTE (
  GERENTE_ID INT PRIMARY KEY,
  NOME VARCHAR(100)
);
```

# REALIZAR OS DESAFIOS ABAIXO:

## Desafio 1: Listar Empregados de um Departamento Específico
1. Liste todos os empregados que pertencem ao departamento cujo nome é 'Marketing'.
2. Crie uma view chamada `View_Marketing_Empregados` que contenha todos os empregados do departamento 'Marketing'.

## Desafio 2: Média de Salário por Departamento
3. Liste o nome do departamento e a média dos salários de seus empregados.
4. Crie uma view chamada `View_Media_Salarios` que mostre o nome do departamento e a média dos salários dos empregados.

## Desafio 3: Empregados com Salário Acima da Média
5. Liste todos os empregados que têm um salário acima da média dos salários do seu departamento.
6. Crie uma view chamada `View_Empregados_Acima_Media` que contenha os empregados que têm um salário acima da média do seu departamento.

## Desafio 4: Departamentos com Mais de X Empregados
7. Liste todos os departamentos que têm mais de 5 empregados.
8. Crie uma view chamada `View_Departamentos_Com_Muitos_Empregados` que contenha os departamentos com mais de 5 empregados.

## Desafio 5: Empregados e Seus Gerentes
9. Liste todos os empregados juntamente com o nome de seus gerentes.
10. Crie uma view chamada `View_Empregados_Gerentes` que mostre todos os empregados e o nome de seus gerentes.

## Desafio 6: Departamentos Sem Empregados
11. Liste todos os departamentos que não têm empregados.
12. Crie uma view chamada `View_Departamentos_Sem_Empregados` que contenha os departamentos que não têm empregados.

## Desafio 7: Salários Acima de um Valor Específico
13. Liste todos os empregados que têm um salário acima de R$ 5000.

14. Crie uma view chamada `View_Salarios_Acima_5000` que contenha os empregados com salário acima de R$ 5000.

## Desafio 8: Empregados por Data de Admissão
15. Liste todos os empregados que foram admitidos nos últimos 6 meses.
16. Crie uma view chamada `View_Admitidos_Recentemente` que contenha os empregados admitidos nos últimos 6 meses.

## Desafio 9: Agrupar Empregados por Cargo
17. Liste o número de empregados em cada cargo.
18. Crie uma view chamada `View_Empregados_Por_Cargo` que mostre o número de empregados em cada cargo.

## Desafio 10: Empregados de um Departamento com Condição de Salário
19. Liste todos os empregados do departamento 'Finance' que têm um salário acima da média dos salários dos empregados desse departamento.
20. Crie uma view chamada `View_Finance_Salarios_Acima_Media` que contenha os empregados do departamento 'Finance' com salário acima da média.
