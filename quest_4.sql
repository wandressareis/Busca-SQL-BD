-- 4) Crie uma função que recebe o código da área de um curso e traga as estatísticas desse curso.
-- Retornando a nota máxima, mínima e média tendo como referencia para esse calculo o CPC
-- (Contínuo)

SELECT 
	MAX(_cpc_continuo) AS "NOTA MÁXIMA",
	MIN(_cpc_continuo) AS "NOTA MÍNIMA",
	AVG(_cpc_continuo) AS "MÉDIA"
FROM cpc
WHERE codigo_da_area = '4301'

-- Resposta:
-- DATA OUTPUT:
    -- Máxima: 4.035	
    -- Mínima: 1.013	
    -- Média:  2.5754838709677419