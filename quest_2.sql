-- 2) Liste os cursos de Ciência da Computação, Sistemas de Informação e Tecnólogo em Des. de
-- Sistemas que existem em RR

SELECT area_de_avaliacao, sigla_da_ies
FROM cpc
WHERE sigla_da_uf_ = 'RR' 
	AND area_de_avaliacao LIKE 'CIÊNCIA DA COMPUTAÇÃO%'
UNION ALL
SELECT area_de_avaliacao, sigla_da_ies
FROM cpc
WHERE sigla_da_uf_ = 'RR' 
	AND area_de_avaliacao LIKE 'SISTEMAS DE INFORMAÇÃO%'
UNION ALL
SELECT area_de_avaliacao, sigla_da_ies
FROM cpc
WHERE sigla_da_uf_ = 'RR' 
	AND area_de_avaliacao LIKE 'TECNOLOGIA EM ANÁLISE%'


-- Resposta:
-- DATA OUTPUT:                                        
    -- (1) "CIÊNCIA DA COMPUTAÇÃO (BACHARELADO)"                        
    -- (2) "CIÊNCIA DA COMPUTAÇÃO (LICENCIATURA)"
    -- (3) "CIÊNCIA DA COMPUTAÇÃO (BACHARELADO)"
    -- (4) "SISTEMAS DE INFORMAÇÃO"
    -- (5) "TECNOLOGIA EM ANÁLISE E DESENVOLVIMENTO DE SISTEMAS" 