# 💧 Case - T&D Sustentável | Pipeline de Dados e Dashboard Financeiro

## 📌 Sobre o projeto

Este projeto foi desenvolvido como um case de Business Intelligence para a empresa **T&D Sustentável**, uma Greentech especializada em soluções para redução do desperdício de água.

O objetivo foi construir uma solução **end-to-end**, desde a extração e transformação dos dados até a criação de dashboards executivos para apoiar a tomada de decisão da diretoria.

---

# 🎯 Problema de Negócio

A empresa possuía operações distribuídas em mais de 30 cidades e enfrentava um processo manual para consolidação dos resultados financeiros de cada filial.

Esse processo demandava até **cinco dias por mês**, comprometendo a agilidade das análises financeiras e dificultando decisões relacionadas a investimentos e expansão.

---

# 🚀 Solução Desenvolvida

Foi construída uma infraestrutura de dados para automatizar todo o fluxo de consolidação das informações financeiras.

A solução contempla:

* Extração automática dos dados das filiais;
* Tratamento e padronização das informações;
* Modelagem relacional em banco de dados;
* Desenvolvimento de indicadores financeiros;
* Construção de dashboards interativos no Power BI.

---

# 📚 Glossário

| Termo    | Definição                                                          |
| -------- | ------------------------------------------------------------------ |
| Receita  | Receitas provenientes da venda de produtos e prestação de serviços |
| Custos   | Gastos diretamente relacionados à operação                         |
| Despesas | Gastos administrativos e de suporte                                |

---

# 🛠️ Tecnologias Utilizadas

* **Python**

  * Pandas
  * SQLAlchemy
  * OS

* **SQL Server Express**

* **Power BI**

  * Modelagem
  * DAX
  * Visualizações interativas

---

# 🏗️ Arquitetura do Pipeline

<img width="1216" height="1294" src="https://github.com/user-attachments/assets/64eb7b8e-3b9f-4cb6-8aa6-02eba0b463c1"/>

---

# 📊 Dashboard

O dashboard foi desenvolvido seguindo princípios de simplicidade, clareza visual e apoio à tomada de decisão.

A navegação foi estruturada em quatro níveis.

## Visão Executiva

Apresenta os principais KPIs financeiros da empresa em uma única tela.

<img width="1431" height="800" src="https://github.com/user-attachments/assets/ebebcbad-af16-47d2-a344-1bc12701af20"/>

---

## Análise por Filial

Permite comparar indicadores financeiros entre as unidades utilizando botões dinâmicos para alternar métricas como:

* Receita
* Custos
* Lucro
* Eficiência

<img width="1433" height="797" src="https://github.com/user-attachments/assets/76679099-517f-4986-a775-5ce416374a8b"/>

---

## Demonstração do Resultado (DRE)

Visualização em Waterfall com Drill Down de três níveis do plano de contas, permitindo analisar a composição do lucro líquido.

<img width="1427" height="796" src="https://github.com/user-attachments/assets/efb67181-121e-4557-8e8c-3b063da77474"/>

---

## Visão Analítica

Tabela detalhada destinada à auditoria de lançamentos financeiros e validação de transações.

<img width="1437" height="803" src="https://github.com/user-attachments/assets/6c64d5c9-7b72-426b-a1eb-fdeae9272140"/>

---

# 🧹 Data Quality

Durante a preparação dos dados foram identificadas algumas inconsistências importantes:

* Receitas de produtos registradas com valores predominantemente negativos, exigindo validação junto à área financeira.
* Registros duplicados na dimensão de contas (Nível 4), posteriormente removidos.
* Utilização da categoria **"Comissão"** sem correspondente no plano de contas oficial.
* Classificações relacionadas à categoria **Pessoas** distribuídas em diferentes grupos contábeis, indicando necessidade de padronização.

---

# 💡 Principais Insights

## Financeiro

* O faturamento apresenta tendência de crescimento, porém o lucro líquido vem diminuindo ao longo do período analisado.
* A margem de lucro demonstra queda consistente, chegando próxima de 20% nos meses mais recentes e apresentando períodos negativos.

## Receitas

* 99,34% da receita é proveniente da prestação de serviços.
* Apenas 0,26% corresponde à venda de produtos.

Entre os serviços:

* **68%** são contratos contínuos;
* **32%** são serviços pontuais.

Esse cenário evidencia uma forte dependência da receita de serviços.

## Custos e Despesas

* Custos representam aproximadamente 73% dos gastos totais.
* Despesas representam cerca de 27%.

Os maiores grupos de custos são:

1. Fornecedores
2. Pessoal
3. Impostos
4. Transporte e Logística

Os maiores grupos de despesas são:

1. Administrativo
2. Imóveis
3. Pessoal

Também foi identificado que gastos com pessoal aparecem classificados tanto como custos quanto como despesas, sugerindo oportunidade para revisão da política de classificação contábil.

## Desempenho das Filiais

As filiais de **Campos** e **Lagos** concentram os maiores lucros da empresa.

Em relação à eficiência operacional:

🥇 Campos

* Margem de lucro de aproximadamente 45%;
* Eficiência de 85%;
* Benchmark para as demais unidades.

🥈 Lagos

* Custos significativamente superiores aos de Campos;
* Lucro cerca de 16% menor.

🥉 Niterói

* Menor margem de lucro (14%);
* Lucro aproximadamente dez vezes inferior ao de Campos.
