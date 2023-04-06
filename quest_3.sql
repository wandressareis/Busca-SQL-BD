-- 3) O curso de Ciência da Computação ficou em qual “ranking” comparado somente com as
-- universidades federais da região norte?

SELECT area_de_avaliacao, sigla_da_ies,  _cpc_continuo
FROM cpc 
WHERE sigla_da_uf_ IN ('AM', 'PA', 'AC', 'RR', 'RO', 'AP', 'TO')
	AND area_de_avaliacao LIKE 'CIÊNCIA DA COMPUTAÇÃO%'
	AND categoria_administrativa = 'Pública Federal'
	AND _cpc_continuo IS NOT NULL
ORDER BY (_cpc_continuo) DESC 

-- DATA OUTPUT:
    -- "CIÊNCIA DA COMPUTAÇÃO (BACHARELADO)"	"UFAM"	"3.787"
    -- "CIÊNCIA DA COMPUTAÇÃO (BACHARELADO)"	"UFT"	"3.246"
    -- "CIÊNCIA DA COMPUTAÇÃO (BACHARELADO)"	"UFRR"	"3.133"
    -- "CIÊNCIA DA COMPUTAÇÃO (BACHARELADO)"	"UNIFAP""2.587"
    -- "CIÊNCIA DA COMPUTAÇÃO (BACHARELADO)"	"UNIR"	"2.468"
    -- "CIÊNCIA DA COMPUTAÇÃO (BACHARELADO)"	"UFOPA"	"2.248"
    -- "CIÊNCIA DA COMPUTAÇÃO (LICENCIATURA)"	"IFTO"	"2.231"
    -- "CIÊNCIA DA COMPUTAÇÃO (LICENCIATURA)"	"IFTO"	"2"
    -- "CIÊNCIA DA COMPUTAÇÃO (LICENCIATURA)"	"IFTO"	"1.913"
    -- "CIÊNCIA DA COMPUTAÇÃO (LICENCIATURA)"	"IFAP"	"1.823"
    -- "CIÊNCIA DA COMPUTAÇÃO (LICENCIATURA)"	"IFTO"	"1.767"

-- Resposta:
    -- Analisando a tabela, o curso de ciência da computação da UFRR ficou em 3º lugar no ranking.