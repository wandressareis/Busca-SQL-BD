-- Banco de Dados II
-- Prof Acauan
-- Aluna: Wandressa Reis
-- Matrícula: 2020014698

-- 1) Quantas universidades federais existem no estado do Paraná?

SELECT COUNT(DISTINCT nome_da_ies)
FROM cpc
WHERE sigla_da_uf_ = 'PR' 
	AND categoria_administrativa = 'Pública Federal'
	AND organizacao_academica = 'Universidade'

-- Data Output: 5
--
-- Resposta: 
	-- Existem 5 universidades federais no estado do Paraná.