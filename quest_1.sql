-- 1) Quantas universidades federais existem no estado do Paraná?

SELECT COUNT(nome_da_ies)
FROM cpc
WHERE sigla_da_uf_ = 'PR' 
	AND categoria_administrativa = 'Pública Federal'

-- Data Output: 111
--
-- Resposta: 
	-- Existem 111 universidades federais no estado do Paraná.