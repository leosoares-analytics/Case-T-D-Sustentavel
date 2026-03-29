select count(Plano_Contas),
Ano_Referencia,
Filial_Processada
-- from Dim_PlanoContas
 from Fato_Transacoes
 group by Ano_Referencia, Filial_Processada;
