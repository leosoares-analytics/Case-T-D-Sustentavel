# 💧 T&D Sustentável | Engenharia e Análise de Dados Financeiros

[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)
[![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)](https://pandas.pydata.org/)
[![SQL Server](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)](https://www.microsoft.com/sql-server)
[![SQLAlchemy](https://img.shields.io/badge/SQLAlchemy-D71F00?style=for-the-badge&logo=sqlalchemy&logoColor=white)](https://www.sqlalchemy.org/)
[![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)

![ETL](https://img.shields.io/badge/ETL-Data_Engineering-2496ED?style=for-the-badge)
![Medallion Architecture](https://img.shields.io/badge/Medallion_Architecture-RAW_%7C_STAGING_%7C_CURATED-8A2BE2?style=for-the-badge)
![DAX](https://img.shields.io/badge/DAX-Analytics-F2C811?style=for-the-badge)
![Data Quality](https://img.shields.io/badge/Data_Quality-Validation-2E8B57?style=for-the-badge)
![RLS](https://img.shields.io/badge/RLS-Access_Control-555555?style=for-the-badge)

**Pipeline de dados financeiros, modelagem analítica e dashboards para análise de desempenho e suporte à tomada de decisão.**

## 📌 Sobre o Projeto

Este projeto consiste no desenvolvimento de um case de Engenharia e Análise de Dados com foco na consolidação, transformação e análise de informações financeiras da **T&D Sustentável**, uma empresa fictícia do segmento de soluções sustentáveis para redução do desperdício de água.

O objetivo é estruturar um fluxo de dados capaz de transformar arquivos financeiros descentralizados em informações organizadas e disponíveis para análise, apoiando o acompanhamento do desempenho financeiro e a tomada de decisão.

O projeto contempla desde a ingestão dos arquivos de origem até a modelagem dos dados, aplicação de regras de negócio, desenvolvimento de indicadores e construção de dashboards interativos no Power BI.

**Período analisado:** Janeiro de 2022 a Março de 2023.

---

## 🎯 Problema de Negócio

A empresa possui operações distribuídas em três unidades: Campos, Niterói e Lagos.

A consolidação das informações financeiras das unidades representa um desafio para a análise gerencial, exigindo organização, padronização e validação dos dados antes da geração de relatórios.

Nesse contexto, o projeto busca estruturar um processo de consolidação e análise que permita:

- Centralizar as informações financeiras das unidades;
- Padronizar os dados provenientes de diferentes arquivos;
- Identificar inconsistências e problemas de qualidade;
- Organizar as informações em uma estrutura adequada para análise;
- Acompanhar indicadores financeiros e operacionais;
- Identificar oportunidades de melhoria na rentabilidade;
- Disponibilizar informações de maneira visual e acessível;
- Estabelecer uma estrutura de acesso aos dados conforme o perfil de cada usuário.

---

## 🏗️ Arquitetura da Solução

A solução foi organizada em camadas, separando a ingestão, a preparação, o tratamento e a disponibilização dos dados para consumo analítico.

### Fluxo de Dados

```text
             ARQUIVOS DE ORIGEM
                 Excel / CSV
                     |
                     v
              PYTHON + PANDAS
          Leitura e preparação inicial
                     |
                     v
                 SQLALCHEMY
              Conexão e ingestão
                     |
                     v
              SQL SERVER EXPRESS
                     |
                     v
                   RAW
             Dados provenientes
                das fontes
                     |
                     v
                 STAGING
           Padronização de formatos
                e estruturas
                     |
                     v
             CONSUMO / CURATED
          Tratamento de qualidade,
          regras de negócio e dados
              para análise
                     |
                     v
                  POWER BI
          Modelagem, medidas DAX
             e dashboards
                     |
                     v
             ANÁLISE FINANCEIRA
          Indicadores e suporte
             à decisão gerencial
```

### Etapas do Pipeline

**1. Ingestão de Dados — Python**

Utilização de Python e Pandas para leitura e preparação inicial dos arquivos financeiros disponibilizados em Excel e CSV.

O SQLAlchemy foi utilizado para realizar a conexão e o envio dos dados ao SQL Server Express.

<img width="1920" height="1080" alt="SQL Server" src="https://github.com/user-attachments/assets/03f1b69b-ca79-4637-89bb-3f900cc8f813" />

**2. RAW — Camada de Dados Brutos**

Armazenamento dos dados provenientes das fontes originais, preservando os registros carregados para possibilitar rastreabilidade e consultas posteriores.

**3. STAGING — Padronização**

Etapa destinada à adequação dos formatos e estruturas dos dados, preparando as informações para as etapas seguintes.

Foram utilizadas consultas SQL e CTEs para organizar os dados e facilitar as transformações.

**4. CONSUMO / CURATED — Tratamento e Organização**

Camada destinada ao tratamento das inconsistências identificadas, aplicação das regras de negócio e organização das informações para consumo analítico.

**5. Power BI — Análise e Visualização**

Conexão com os dados tratados, construção do modelo analítico, desenvolvimento de medidas DAX e criação de dashboards financeiros interativos.

---

## 🛠️ Tecnologias Utilizadas

| Tecnologia | Aplicação |
|---|---|
| Python | Ingestão e preparação dos dados |
| Pandas | Leitura e manipulação de arquivos |
| SQLAlchemy | Conexão e carregamento no banco |
| SQL Server Express | Armazenamento e transformação dos dados |
| SQL / CTEs | Consultas, padronização e tratamento |
| Power BI | Modelagem e visualização analítica |
| DAX | Desenvolvimento de indicadores financeiros |

---

## 📊 Dashboard Financeiro

O dashboard foi desenvolvido no Power BI com foco em clareza visual, análise financeira e navegação intuitiva.

A estrutura contempla três abas, organizadas para atender diferentes níveis de análise.

### 1. Visão Executiva

Apresenta uma visão consolidada do desempenho financeiro da empresa por meio dos principais indicadores:

- **Receita:** total de receitas provenientes das operações;
- **Lucro:** resultado financeiro após a dedução de custos e despesas;
- **Margem de Lucro:** relação entre lucro e receita;
- **Ponto de Equilíbrio:** receita necessária para cobrir os gastos fixos, considerando a margem de contribuição;
- **Distância do Ponto de Equilíbrio:** diferença entre a receita realizada e o ponto de equilíbrio.

O objetivo é permitir uma leitura rápida da situação financeira da empresa e da sustentabilidade dos resultados.

<img width="1441" height="809" alt="Aba1 - Executiva" src="https://github.com/user-attachments/assets/ba1b3b30-cef1-4d67-bc66-b457595bdf1f" />

### 2. DRE, Custos e Despesas

A segunda aba aprofunda a composição do resultado financeiro, permitindo analisar:

- Receita;
- Lucro;
- Margem de lucro;
- Custos operacionais;
- Despesas administrativas e operacionais.

A análise utiliza a estrutura do plano de contas para organizar os valores e permitir a exploração dos diferentes níveis de classificação contábil.

Entre os recursos analíticos estão:

- Análise da composição do resultado;
- Visualização da Demonstração do Resultado do Exercício (DRE);
- Detalhamento de custos e despesas por categoria;
- Análise da participação dos gastos em relação à receita;
- Exploração hierárquica das contas contábeis.

<img width="1438" height="807" alt="Aba2- DRE" src="https://github.com/user-attachments/assets/017c4aff-c2c1-4e45-a729-40998848a0ca" />

### 3. Análise por Unidade e Franquia

A terceira aba é destinada ao aprofundamento das análises por unidade e franquia, permitindo observar diferenças de desempenho entre as operações.

O objetivo é complementar a visão consolidada das abas anteriores, oferecendo uma perspectiva mais detalhada sobre os resultados individuais.

Essa análise permite investigar questões como:

- Quais unidades apresentam melhor desempenho financeiro?
- Como os resultados se distribuem entre as operações?
- Existem diferenças relevantes na composição das receitas e dos gastos?
- Quais unidades apresentam oportunidades de melhoria?
- Como a concentração de receita e custos afeta cada operação?

A proposta é permitir que a gestão identifique diferenças de desempenho e investigue oportunidades de melhoria nas unidades.

<img width="1438" height="808" alt="Aba3 - franquias" src="https://github.com/user-attachments/assets/699a3b6f-e70a-4954-80c8-a278c5dbce6b" />

---

## 💡 Principais Insights e Análises Financeiras

A análise financeira foi realizada considerando os dados sem os repasses entre unidades, evitando que movimentações internas distorçam a interpretação da receita e do resultado consolidado.

### Resumo Financeiro Consolidado

| Indicador | Resultado |
|---|---:|
| Receita | R$ 8,21 milhões |
| Custos | R$ 10,92 milhões |
| Despesas | R$ 1,53 milhão |
| Resultado registrado | **-R$ 4,24 milhões** |
| Resultado sem os dois lançamentos de PLR | **+R$ 753 mil** |
| Margem ajustada sem PLR | **9,2%** |

O resultado negativo registrado é fortemente influenciado por dois lançamentos extraordinários de PLR realizados em maio de 2022. Sem esses registros, o resultado acumulado passa a ser positivo.

Essa diferença evidencia a importância de investigar lançamentos atípicos antes de interpretar os indicadores financeiros.

### 1. Dois Lançamentos de PLR Distorcem o Resultado

Em 03/05/2022, a unidade de Lagos registrou dois lançamentos na conta **PLR – Participação nos lucros e dividendos**:

| Código | Valor |
|---|---:|
| 2217 | R$ 3.997.821 |
| 2216 | R$ 1.000.000 |
| **Total** | **R$ 4.997.821** |

Os dois lançamentos somam aproximadamente R$ 5 milhões, representando quase metade de todo o custo registrado no período.

O impacto fica evidente ao observar maio de 2022:

- Custo total em maio/2022: R$ 5,35 milhões;
- Média de custos nos demais meses: aproximadamente R$ 380 mil;
- Os lançamentos de PLR representam a principal distorção do período.

**Impacto no resultado:**

- Resultado registrado: -R$ 4,24 milhões;
- Resultado sem os dois lançamentos: +R$ 753 mil;
- Margem ajustada: aproximadamente 9,2%.

Na unidade de Lagos, o resultado passa de aproximadamente -R$ 4,61 milhões para +R$ 389 mil, com margem próxima de 8,9%, quando os dois lançamentos são desconsiderados.

**Ponto de atenção:** é necessário confirmar a natureza desses lançamentos na origem. Deve-se verificar se representam efetivamente uma distribuição de participação nos lucros ou se existe algum erro de digitação, como valores com zeros adicionais.

Caso sejam distribuições reais de lucro, também é necessário revisar sua classificação contábil, pois não devem ser automaticamente interpretadas como custos operacionais.

A exclusão desses valores nesta análise é um ajuste gerencial para avaliar a operação, não uma correção contábil definitiva.

### 2. Resultado Financeiro por Filial

A análise por unidade evidencia diferenças relevantes de rentabilidade.

Valores considerando os dados sem repasses entre unidades:

| Filial | Receita | Custo | Despesa | Resultado | Margem |
|---|---:|---:|---:|---:|---:|
| Campos | R$ 2,66 mi | R$ 1,62 mi | R$ 0,69 mi | +R$ 345 mil | 13% |
| Niterói | R$ 1,19 mi | R$ 0,94 mi | R$ 0,22 mi | +R$ 20 mil | 2% |
| Lagos | R$ 4,36 mi | R$ 8,36 mi | R$ 0,61 mi | -R$ 4,61 mi | -106% |

**Análise:**

- **Campos:** apresenta a melhor rentabilidade proporcional, com margem próxima de 13%, sendo uma referência positiva entre as unidades;
- **Niterói:** apresenta resultado próximo do ponto de equilíbrio, com margem de aproximadamente 2%, indicando baixa folga financeira;
- **Lagos:** concentra aproximadamente 53% da receita total, mas apresenta resultado fortemente negativo devido aos lançamentos extraordinários de PLR.

Desconsiderando os dois lançamentos de PLR, Lagos apresenta resultado positivo de aproximadamente R$ 389 mil e margem próxima de 8,9%.

**Principal conclusão:** a análise por filial permite identificar que o resultado consolidado não representa necessariamente a realidade operacional de cada unidade. A investigação de lançamentos extraordinários é fundamental para avaliar corretamente a rentabilidade.

### 3. Crescimento das Despesas a Partir de Novembro de 2022

A partir de novembro de 2022, as despesas mensais apresentam uma mudança significativa de patamar.

Antes desse período, os valores mensais ficavam aproximadamente entre R$ 11 mil e R$ 54 mil.

A partir de novembro, passam a variar entre aproximadamente R$ 195 mil e R$ 285 mil.

O principal fator identificado é a conta **Consultorias**:

- Total acumulado: aproximadamente R$ 814 mil;
- Representa cerca de 53% de todas as despesas;
- Os lançamentos começam em novembro de 2022;
- Os valores registrados em Campos e Lagos são bastante semelhantes;
- Niterói passa a apresentar essa conta em janeiro de 2023.

**Impacto no resultado:**

- A margem mensal fica negativa em dezembro/2022, janeiro/2023 e fevereiro/2023;
- Março/2023 volta a apresentar resultado positivo de aproximadamente R$ 159 mil;
- A recuperação em março é impulsionada pela maior receita mensal do período, de aproximadamente R$ 772 mil.

**Ponto de atenção:** investigar a origem dos valores de consultoria, a natureza dos serviços contratados e a recorrência dos lançamentos. Também é importante verificar se os valores semelhantes entre unidades representam contratos independentes ou algum tipo de rateio.

### 4. Receita Recorrente, mas Concentrada

A composição da receita demonstra forte dependência de serviços contínuos.

| Origem da Receita | Participação |
|---|---:|
| Serviços contínuos | 96% |
| Serviços pontuais | 3,6% |
| Venda de produtos | 0,8% |

A concentração também aparece na análise por contas de receita.

Cinco contas representam aproximadamente 91% de toda a receita:

1. GFRH;
2. GERH + TD-RR;
3. GFRH + TD-RR;
4. TD-RR / Monitoramento remoto;
5. GERH.

Essa composição demonstra uma operação fortemente baseada em contratos e serviços recorrentes.

**Comportamento mensal da receita:**

- Março/2022;
- Agosto/2022;
- Novembro/2022;
- Março/2023.

Esses meses apresentam faturamento superior a R$ 700 mil. Nos demais meses, a receita fica aproximadamente entre R$ 330 mil e R$ 560 mil.

**Ponto de atenção:** a recorrência dos serviços representa uma característica positiva para a previsibilidade do faturamento, mas a concentração em poucas contas e modalidades de serviço pode aumentar a exposição da empresa à perda de contratos relevantes.

### 5. Estrutura de Custos

Considerando a receita consolidada de R$ 8,21 milhões, alguns itens possuem participação relevante na estrutura de custos.

| Conta | Valor | % da Receita |
|---|---:|---:|
| Mensalidade TD-RR | R$ 926 mil | 11,3% |
| Royalties da franqueadora | R$ 689 mil | 8,4% |
| Simples Nacional (DAS) | R$ 622 mil | 7,6% |
| **Total** | **R$ 2,24 milhões** | **27,3%** |

Os três itens representam aproximadamente 27% da receita total.

**Análise dos principais itens:**

- **Mensalidade TD-RR:** representa um repasse a fornecedor relacionado ao mesmo produto que gera receita para a empresa;
- **Royalties:** representam uma parcela relevante dos custos relacionados ao modelo de franquia;
- **Simples Nacional:** possui participação expressiva na estrutura de custos e merece acompanhamento conforme a evolução do faturamento.

Desconsiderando os dois lançamentos extraordinários de PLR, os custos representam aproximadamente 72% da receita.

**Ponto de atenção:** a análise da mensalidade TD-RR deve considerar sua relação com a receita gerada pelo produto, permitindo avaliar a contribuição econômica dessa operação.

### 6. Inadimplência Concentrada em Lagos e Niterói

A análise dos registros classificados como "Atrasado" identifica aproximadamente 11% da receita em situação de atraso.

| Indicador | Resultado |
|---|---:|
| Receita em atraso | R$ 911 mil |
| Participação na receita | 11% |

A distribuição por filial demonstra diferenças relevantes:

| Filial | Receita em Atraso |
|---|---:|
| Niterói | 16% |
| Lagos | 14% |
| Campos | 4% |

**Análise:**

- Niterói apresenta a maior proporção de receita em atraso;
- Lagos também possui um percentual elevado de inadimplência;
- Campos apresenta uma situação relativamente mais controlada.

**Ponto de atenção:** Niterói e Lagos merecem atenção prioritária no acompanhamento de recebíveis e na investigação das causas dos atrasos.

É importante diferenciar valores efetivamente vencidos e não recebidos de valores apenas classificados como atrasados no sistema, validando a regra utilizada no campo de situação.

---

## 🧹 Data Quality

Durante a análise e preparação dos dados, foram identificadas inconsistências que poderiam comprometer a confiabilidade dos indicadores financeiros.

Entre os principais pontos observados:

- Registros duplicados na dimensão do plano de contas, especialmente no nível 4;
- Receitas de produtos registradas com valores predominantemente negativos, exigindo validação da regra de sinal;
- Utilização da categoria "Comissão" sem correspondência no plano de contas oficial;
- Classificações relacionadas a gastos com pessoal distribuídas em diferentes grupos contábeis;
- Lançamentos extraordinários de PLR com impacto significativo no resultado;
- Necessidade de validação da natureza e classificação dos lançamentos financeiros;
- Necessidade de padronização das classificações contábeis.

Esses pontos reforçam a importância da etapa de qualidade dos dados antes da construção das análises e indicadores.

---

## 🔐 Segurança e Controle de Acesso — Row-Level Security (RLS)

O projeto contempla o planejamento de uma estrutura de segurança utilizando **Row-Level Security (RLS)** estático, com o objetivo de restringir o acesso às informações financeiras conforme o perfil e a responsabilidade de cada usuário.

A proposta considera diferentes níveis hierárquicos de acesso:

| Perfil | Acesso previsto |
|---|---|
| CFO / Diretor Financeiro | Gerencial |
| Controller | Gerencial |
| Analista | Local |
| Gerente de Unidade | Local |
| Franqueado | Local |
| Assistente | Local |

### Implementação Técnica

A implementação está prevista no modelo semântico do Power BI, utilizando RLS estático para controlar quais registros cada usuário pode visualizar.

A estrutura pode utilizar uma tabela de permissões contendo informações como:

<img width="1060" height="622" alt="RLS" src="https://github.com/user-attachments/assets/f71f558d-98d2-4033-b608-9cd6a466bd26" />

A identificação do usuário pode ser realizada por meio da função DAX `USERPRINCIPALNAME()`, permitindo aplicar filtros de forma dinâmica conforme o usuário autenticado.

Exemplo conceitual de uma regra de segurança:

```dax
VAR UsuarioAtual = USERPRINCIPALNAME()

RETURN
    dPermissoes[Email] = UsuarioAtual
```

A regra deverá ser relacionada à dimensão de unidades e propagada até a tabela financeira, garantindo que os filtros sejam aplicados aos registros correspondentes.


### Objetivo da Segurança

Garantir que cada usuário tenha acesso somente às informações necessárias para sua função, preservando a confidencialidade dos dados financeiros e permitindo diferentes níveis de acompanhamento gerencial.

---

## 📚 Conceitos Financeiros Aplicados

| Indicador | Conceito |
|---|---|
| Receita | Valores provenientes da venda de produtos e prestação de serviços |
| Custos | Gastos diretamente relacionados à operação |
| Despesas | Gastos administrativos e de suporte |
| Resultado | Receita menos custos e despesas |
| Margem de Lucro | Resultado dividido pela receita |
| Margem de Contribuição | Receita menos gastos variáveis |
| Ponto de Equilíbrio | Receita necessária para cobrir os gastos fixos |
| Inadimplência | Valores classificados como atrasados em relação à receita |

---

## 🎯 Objetivos Técnicos e Aprendizados

O desenvolvimento deste projeto permitiu aplicar conceitos de Engenharia e Análise de Dados em um cenário financeiro, incluindo:

- Construção de pipeline de dados utilizando Python e SQL;
- Integração de arquivos Excel e CSV com banco de dados relacional;
- Organização de dados em camadas RAW, STAGING e CONSUMO;
- Utilização de SQL e CTEs para transformação dos dados;
- Identificação e tratamento de problemas de qualidade;
- Modelagem de dados para análise financeira;
- Desenvolvimento de indicadores utilizando DAX;
- Construção de dashboards voltados à análise e tomada de decisão;
- Análise de rentabilidade por unidade;
- Identificação de lançamentos extraordinários e concentração de receitas e despesas;
- Planejamento de controle de acesso por usuário utilizando RLS.

---

## 📁 Estrutura do Repositório

| Arquivo | Descrição |
|---|---|
| `Conector SQL.ipynb` | Notebook de conexão e ingestão dos dados |
| `Tabelas.sql` | Scripts SQL de criação e estruturação das tabelas |
| `Reset de Tabelas.sql` | Script de reinicialização das tabelas |
| `T&D.pbix` | Arquivo do dashboard desenvolvido no Power BI |

---

## ⚠️ Observações e Premissas

Este repositório documenta um projeto de portfólio desenvolvido a partir de um conjunto de dados financeiros para fins de estudo e demonstração técnica.

- Os resultados refletem exclusivamente o período e os dados disponíveis para o case.
- As análises financeiras consolidadas consideram os dados sem os repasses entre unidades.
- Os dois lançamentos de PLR foram desconsiderados apenas para a análise gerencial ajustada, não representando uma correção contábil definitiva.
- A classificação contábil dos lançamentos de PLR precisa ser validada na origem.
- Os indicadores de inadimplência utilizam a classificação de situação disponível nos dados.
- A estrutura de RLS descrita representa o desenho proposto para o controle de acesso e não deve ser considerada implementada até que as regras sejam efetivamente configuradas, testadas e publicadas.

Os resultados e indicadores apresentados não devem ser interpretados como demonstrações financeiras oficiais ou resultados de uma implantação em ambiente produtivo.
