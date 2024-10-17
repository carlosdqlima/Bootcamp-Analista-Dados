# Dashboards Criados com Looker Studio

Utilizando o **Looker Studio** e a base de dados `base_rh_dash`, foram elaborados os seguintes Dashboards:

## 1 - Gráfico de Barras Empilhadas: Análise de Demissão por Departamento e Satisfação
- **Campos**: Demissão, Departamento, Nível de Satisfação com o ambiente de trabalho.
- **Novo Campo Calculado Sugerido**: % de Satisfação Média por Departamento  
  `SUM(Nível de Satisfação com o ambiente de trabalho) / COUNT(Nível de Satisfação com o ambiente de trabalho)`

## 2 - Gráfico de Linhas: Análise de Tendências de Idade e Anos na Empresa
- **Campos**: Idade, Anos na empresa.
- **Novo Campo Calculado Sugerido**: Média de Anos na Empresa por Faixa Etária  
  `AVG(Anos na empresa)`

## 3 - Gráfico de Barras Horizontais: Análise da Frequência de Viagem de Negócios e Demissão
- **Campos**: Viagem de negócios, Demissão.
- **Novo Campo Calculado Sugerido**: Taxa de Demissão por Frequência de Viagem  
  `COUNTIF(Demissão = 'Sim') / COUNT(Viagem de negócios)`

## 4 - Gráfico de Pizza: Distribuição de Estado Civil dos Funcionários
- **Campos**: Estado civil.
- **Novo Campo Calculado Sugerido**: Percentual de Funcionários por Estado Civil  
  `COUNT(Estado civil) / COUNT(Estado civil) OVER()`

## 5 - Gráfico de Barras: Análise de Escolaridade por Área de Formação
- **Campos**: Escolaridade, Área de Formação.
- **Novo Campo Calculado Sugerido**: Percentual de Funcionários com Pós-Graduação em Cada Área de Formação  
  `COUNTIF(Escolaridade >= 4) / COUNT(Área de Formação)`

## Próximos Gráficos
Elabore mais cinco gráficos de sua escolha que possam ajudar o leitor do relatório a entender os motivos que levaram os funcionários a pedir demissão.
