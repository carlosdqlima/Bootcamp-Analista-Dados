-- 1. Empregados e seus Departamentos (INNER JOIN)
-- - Liste todos os empregados juntamente com o nome de seus departamentos.

SELECT E.nome, D.nome
FROM EMPREGADO AS E
 INNER JOIN DEPARTAMENTO AS D
ON E.numdepto = D.numdepto;

-- 2. Empregados sem Departamento (LEFT JOIN + IS NULL)
-- - Liste todos os empregados que não estão associados a nenhum departamento.

SELECT E.nome
FROM EMPREGADO AS E
LEFT JOIN DEPARTAMENTO AS D
ON E.numdepto = D.numdepto
WHERE E.numdepto IS NULL;

-- 3. Projetos sem Empregados (LEFT JOIN + IS NULL)
-- - Liste todos os projetos que não têm empregados associados.

SELECT P.nome
FROM PROJETO AS P
LEFT JOIN TRABALHA_EM AS T
ON T.codprojeto = P.codprojeto
WHERE T.matricula IS NULL;

-- 4. Empregados e suas Habilidades (INNER JOIN)
-- - Liste todos os empregados juntamente com suas habilidades.

SELECT E.nome AS empregado_nome, H.descricao AS descricao_habilidade
FROM EMPREGADO AS E
INNER JOIN EMPREGADO_HABILIDADE AS EH
ON E.matricula = EH.matricula
INNER JOIN HABILIDADE AS H
ON H.codhabilidade = EH.codhabilidade;

-- 5. Empregados sem Habilidades (LEFT JOIN + IS NULL)
-- - Liste todos os empregados que não têm habilidades associadas.

SELECT E.nome
FROM EMPREGADO AS E
LEFT JOIN EMPREGADO_HABILIDADE AS EH
ON E.matricula = EH.matricula
WHERE EH.codhabilidade IS NULL;

-- 6. Departamentos e Número de Empregados (LEFT JOIN + COUNT)
-- - Liste todos os departamentos e o número de empregados em cada um.

SELECT DEPARTAMENTO.nome,COUNT(E.nome) AS total_empregado
FROM EMPREGADO AS E
LEFT JOIN DEPARTAMENTO
ON DEPARTAMENTO.numdepto = E.numdepto
GROUP BY DEPARTAMENTO.nome;

-- 7. Empregados e seus Projetos (INNER JOIN)
-- - Liste todos os empregados juntamente com os projetos em que estão trabalhando.

SELECT E.nome, P.nome
FROM TRABALHA_EM AS T
INNER JOIN PROJETO AS P
ON T.codprojeto = P.codprojeto
INNER JOIN EMPREGADO AS E
ON T.matricula = E.matricula;

-- 8. Empregados em Projetos Atuais (INNER JOIN + WHERE)
-- - Liste todos os empregados que estão trabalhando em projetos que ainda não terminaram.

SELECT E.nome
FROM EMPREGADO AS E
INNER JOIN TRABALHA_EM AS T
ON E.matricula = T.matricula
INNER JOIN PROJETO AS P
ON P.codprojeto = T.codprojeto
WHERE T.data_fim > CURRENT_DATE;

-- 9. Projetos e Duração (DATEDIFF)
-- - Liste todos os projetos juntamente com a duração em dias (diferente entre data_fim e data_inicio).


SELECT P.nome, DATEDIFF(P.data_fim, P.data_inicio) AS dias_entre_inicio_fim
FROM PROJETO AS P;

-- 10. Empregados com Mais de uma Habilidade (INNER JOIN + HAVING COUNT)
-- - Liste todos os empregados que têm mais de uma habilidade.

SELECT E.nome, COUNT(H.descricao) AS quantidade_habilidades
FROM EMPREGADO AS E
INNER JOIN EMPREGADO_HABILIDADE AS EH
ON EH.matricula = E.matricula
INNER JOIN HABILIDADE AS H
ON H.codhabilidade = EH.codhabilidade
GROUP BY EH.matricula,E.nome HAVING COUNT(H.descricao) > 1;

-- 11. Departamentos e Salário Médio (LEFT JOIN + AVG)
-- - Liste todos os departamentos juntamente com o salário médio dos empregados em cada departamento.

SELECT D.nome, AVG(E.salario) AS salario_medio
FROM EMPREGADO AS E
LEFT JOIN DEPARTAMENTO AS D
ON D.numdepto = E.numdepto
GROUP BY D.nome;

-- 12. Empregados e suas Habilidades Ordenadas (INNER JOIN + ORDER BY)
-- - Liste todos os empregados juntamente com suas habilidades, ordenando os resultados pelo nome do empregado e pela descrição da habilidade.

SELECT E.nome, H.descricao
FROM EMPREGADO AS E
INNER JOIN EMPREGADO_HABILIDADE AS EH
ON E.matricula = EH.matricula
INNER JOIN HABILIDADE AS H
ON H.codhabilidade = EH.codhabilidade
ORDER BY E.nome,H.descricao;

-- 13. Projetos e Número de Empregados (INNER JOIN + COUNT)
-- - Liste todos os projetos juntamente com o número de empregados que estão trabalhando em cada projeto.

SELECT P.nome, COUNT(T.matricula) AS funcionarios_no_projeto
FROM TRABALHA_EM AS T
INNER JOIN PROJETO AS P
ON T.codprojeto = P.codprojeto
GROUP BY P.nome;

-- 14. Empregados com Habilidades Específicas (INNER JOIN + WHERE)
-- - Liste todos os empregados que possuem uma habilidade específica (por exemplo, "SQL").

SELECT E.nome, H.descricao
FROM EMPREGADO AS E
INNER JOIN EMPREGADO_HABILIDADE AS EH
ON E.matricula = EH.matricula
INNER JOIN HABILIDADE AS H
ON H.codhabilidade = EH.codhabilidade
WHERE H.descricao = 'Data Analysis';

-- 15. Departamentos sem Empregados (LEFT JOIN + IS NULL)
-- - Liste todos os departamentos que não têm empregados associados.

SELECT D.nome
FROM DEPARTAMENTO AS D
LEFT JOIN EMPREGADO AS E
ON D.numdepto = E.numdepto
WHERE E.numdepto IS NULL;

-- 16. Projetos Ativos e seus Empregados (INNER JOIN + WHERE)
-- - Liste todos os projetos que ainda estão em andamento e os empregados que estão trabalhando neles.

SELECT P.nome
FROM PROJETO AS P
INNER JOIN TRABALHA_EM AS T
ON P.codprojeto = T.codprojeto
INNER JOIN EMPREGADO AS E
ON T.matricula = E.matricula
WHERE T.data_fim > CURRENT_DATE;

-- 17. Empregados e suas Habilidades e Projetos (INNER JOIN + Multiple Tables)
-- - Liste todos os empregados juntamente com suas habilidades e os projetos em que estão trabalhando.

SELECT E.nome, H.descricao, P.nome
FROM EMPREGADO AS E
INNER JOIN TRABALHA_EM AS T
ON E.matricula = T.matricula
INNER JOIN PROJETO AS P
ON P.codprojeto = T.codprojeto
INNER JOIN EMPREGADO_HABILIDADE AS EH
ON E.matricula = EH.matricula
INNER JOIN HABILIDADE AS H
ON H.codhabilidade = EH.codhabilidade;

-- 18. Projetos e Data de Início mais Recente (INNER JOIN + MAX)
-- - Liste todos os projetos juntamente com a data de início mais recente de um empregado que começou a trabalhar nesse projeto.

SELECT P.nome, MAX(T.data_inicio) AS data_inicio_mais_recente
FROM PROJETO AS P
INNER JOIN TRABALHA_EM AS T
ON P.codprojeto = T.codprojeto
GROUP BY P.nome;

-- 19. Empregados que Trabalham em Mais de um Projeto (INNER JOIN + HAVING COUNT)
-- - Liste todos os empregados que estão trabalhando em mais de um projeto.

SELECT E.nome, COUNT(T.codprojeto) AS quantidade_projetos
FROM EMPREGADO AS E
INNER JOIN TRABALHA_EM AS T
ON E.matricula = T.matricula
GROUP BY E.nome
HAVING COUNT(T.codprojeto) > 1;

-- 20. Empregados e Departamento, Habilidade e Projeto (Multiple INNER JOINs)
-- - Liste todos os empregados juntamente com o nome do departamento, a descrição da habilidade e o nome do projeto em que estão trabalhando.

SELECT E.nome, D.nome, H.descricao, P.nome
FROM EMPREGADO AS E
INNER JOIN DEPARTAMENTO AS D
ON E.numdepto = D.numdepto
INNER JOIN EMPREGADO_HABILIDADE AS EH
ON E.matricula = EH.matricula
INNER JOIN HABILIDADE AS H
ON EH.codhabilidade = H.codhabilidade
INNER JOIN TRABALHA_EM AS T
ON E.matricula = T.matricula
INNER JOIN PROJETO AS P
ON T.codprojeto = P.codprojeto;
