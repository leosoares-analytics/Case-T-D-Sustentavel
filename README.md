# Case-T-D-Sustentavel

## Conteto e Negócio

A Greentech T&D Sustentável é uma empresa focada no combate ao desperdício de água, com meta de economizar 1 bilhão de litros até 2025. Com operações em mais de 30 cidades, a área financeira enfrentava um gargalo operacional: a consolidação de resultados levava até 5 dias por mês devido ao download manual de relatórios de cada filial.

## Escopo

Desenvolvimento de uma infraestrutura de dados end-to-end para:
- Automatizar o pipeline de dados das filiais.
- Monitorar o fluxo de caixa e a saúde financeira.
- Dar suporte à tomada de decisão para novos investimentos e expansão da rede.

## Glossário

- Despesas: Gastos Administrativos
- Custos: Gasto Operacionais
- Receita: Receita de produtos e serviços que a empresa oferece

## Stack Utilizado

- Python (Pandas, SQLAlchemy, OS): Extração e tratamento de dados brutos.
- SQL Server Express: Armazenamento e modelagem relacional.
- Power BI: Visualização avançada, DAX e Analytics.

## Pipeline de dados

<img width="1216" height="1294" alt="Image" src="https://github.com/user-attachments/assets/64eb7b8e-3b9f-4cb6-8aa6-02eba0b463c1" />

## Vizualisação de dados (Power BI)

Dashboard desenvolvido com os principios de simplisidade, clareza e tomadda de decisão.
Este dashboard foi estruturado em 4 camadas de profundidade:

### Visão Executiva

Perspectiva: criada para servir a gestão a empresa para ver a saúde financeira da empresa em uma aba.

<img width="1431" height="800" alt="Image" src="https://github.com/user-attachments/assets/ebebcbad-af16-47d2-a344-1bc12701af20" />

### Análise por Filial

Perspectiva: Permite comparar o desempenho geográfico e alternar métricas de análise (Custos, Lucro, Eficiência) via botões dinâmicos.

<img width="1433" height="797" alt="Image" src="https://github.com/user-attachments/assets/76679099-517f-4986-a775-5ce416374a8b" />

### DRE

Perspectiva: Utiliza um gráfico de cascata (Waterfall) para demonstrar a erosão da receita até o lucro líquido, com suporte a Drill-down para três níveis de detalhamento do plano de contas.

<img width="1427" height="796" alt="Image" src="https://github.com/user-attachments/assets/efb67181-121e-4557-8e8c-3b063da77474" />

### Visão de Análise

Perspectica: Tabela detalhada para analistas realizarem auditoria de transações específicas e conferência de datas e origens.

<img width="1437" height="803" alt="Image" src="https://github.com/user-attachments/assets/6c64d5c9-7b72-426b-a1eb-fdeae9272140" />

## Inconsistências

- Receitas com valore negativos --> Todas receitas dded produtos estão negativos, deve ser vasculhado se é algum bug, dados errados ou se a área está gerando prejuiso
- A coluna "Conta_Nivel 4" tem valores duplicados que foram retirados
- Desapesa não documentada no plano de contas, mas já usada "Comissão" --> Deve ser gerada uma reunião com o responsavel para ientificar em qual centro de custo e em qual melhor froma ddde documentar

## Insights


