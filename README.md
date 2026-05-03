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

- Receitas com valore negativos --> Todas receitas de produtos estão negativos, deve ser vasculhado se é algum bug, dados errados ou se a área está gerando prejuiso
- A coluna "Conta_Nivel 4" tem valores duplicados que foram retirados
- Desapesa não documentada no plano de contas, mas já usada "Comissão" --> Deve ser gerada uma reunião com o responsavel para ientificar em qual centro de custo e em qual melhor froma ddde documentar
- A categoria "pessoas" está sendo citada em 3 categorias diferentes dentro de despesas e custos --> deve ser verificadod o motivo e difernças entre cada caso

## Insights

### Faturamento X Lucro

Apesar do faturamento estar subindo em relação ao ano e mês anterior, o Lucro está em queda.

### Margem de Lucro

Pode ser visto que a margem de lucro geral está em queda.
No periodo analisado pode ser visto que a media da margem de lucro já está chegando a 20% nos meses mais recentes, tendo periodos com margens negativos, enquanto pode ser visto que a margem de lucro que gerou mais lucro foi vista na filial de Lagos, sendo 30,91%

### Receitas

As receitas da empresa são 99,34% vindas da venda ed serviços, enquanto somente 0,26% são receitas vindas dda vendas dde produtos.

Relativo as receitas vindas de serviços prestados, esta tem a divisão por serviços pontuais e continuos, sendo:

- Continuos : 68% das receitas de serviços. 
- Pontuais : 32% das receitas de serviçoes.

Pode ser visto que a maior fonte de receitas da T&D Sustentavel vem de serviços (tanto continuos como pontuais)

### Estrutura de custos e despesas

Pode ser visto que os gastos com pessoal aparecem tanto em custos e despesas e na somatória apresenta um dos maiores valores, somente perdendo para fornecedores.
A partir dessa informação deve ser feita uma analise dos métodos de contratação de pessoal, para determinar o motivo dessa distinção e se é possivel diminuir esse custo.

#### Despesas

Pode ser visto que na empresa o valores de despesas é mais enxuto em relação aos custos, representando somente 27,06% dos gastos totais (custos + despesas)

A estruturação das despesas é mais consistente, tendo um valor de Fixo superior e valor variavel baixo, trazendo maior previsibilidade e controle.

Ranking de maior despesa para menor despesa:

1# - Adiministrativo  
2# - Imoveis  
3# - Pessoal  

#### Custos

Pode ser visto que ainda mantem o padrão de valores fixos superiores aos variaveis, mas tendo valores superiores as despesas.

Ranking de maior custo para menor custo::

1# - Fornecedores  
2# - Pessoal  
3# - Impostos  
4# - Transporte e Logistica  

### Analise de Filiais

Pode ser visto que os valores de lucro das filiais de Campos e Lagos são muito superiores ao valor de lucro de Niteroi

- Média dos lucros de Campos + Lagos : 1,73 Milhões  
- Lucro ed Niteroi : 139,76 Mil

Em relação a eficiência pode ser visto o seguinte padrão

1# Campos - Com a maior eficiência e referência para outras filiais tendo eficiencia de 85% e margem de lucro de 45%.  
2# Lagos - Tem custos quase 2x maiores que de Campos, tendo um lucro 16% menor.  
3# Niteroi - Tem amenor margem de lucro (14%), um lucro 10x menor, custos e despesas 6x menor quano comparado com a filial de Campos.  

## Panorama Geral ded Empresa
