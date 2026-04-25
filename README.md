# Case-T-D-Sustentavel

## Conteto

## Escopo

Desenvolvimento de um dashboard para controle financeira

- Controlar caixa da empresa
- Justificar necessidade de novos investimentos

## Necessidades Primárias

### Analises

- Analise do faturamento por periodo e por loja
- Faturamento médio mensal
- Analise de lucro por periodo
- Margem de Lucro Liquida

### Filtros

- Tempo
- Filial

## Glossário

- Despesas: Gastos Administrativos
- Custos: Gasto Operacionais
- Receita: Receita de produtos e serviços que a empresa oferece

## Python

No Python foram utilizadas as seguintes bibliotecas

- OS
- Pandas
- SQLAlchemy

O code "Conector SQL" foi criado para incluir todas bases de dados ao SQL Server

## SQL Server Express

No arquivo "Tabelas", foram criadas as tabelas base no SQL Server

<img width="20" height="20" alt="image" src="https://github.com/user-attachments/assets/bb0cc640-b03b-4443-bbb6-bc5dd9d92ccc" />
Sempre antes de rodar o arquivo Python, resetar as tabelas com o arquivo "Reset de tabelas"

## Pipeline de dados

<img width="1216" height="1294" alt="Image" src="https://github.com/user-attachments/assets/64eb7b8e-3b9f-4cb6-8aa6-02eba0b463c1" />

## Inconsistências encontradas no tratamento de dados

- Receitas com valore negativos --> Todas receitas dded produtos estão negativos, deve ser vasculhado se é algum bug, dados errados ou se a área está gerando prejuiso
- A coluna "Conta_Nivel 4" tem valores duplicados que foram retirados

## Power BI

O dashboard foi dividido em 4 vistas para perspectivas diferentes

### Visão Executiva

Perspectiva: criada para servir a gestão a empresa para ver a saúde financeira da empresa em uma aba.

### Análise por Filial

Perspectiva: para uma visão mais focada em cada filal foi esenvolvida esta aba.

### DRE

Perspectiva: uma aba onde pode ser visto e forma simples e rapida os lucros, despesas e custos em um gráfico de cascata.

### Visão de análise

Perspectica: desenvolvida com a intenção do uso para analistas, para verificar a fundo os dados de periodos e transações financeiras especificas.
