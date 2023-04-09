-- 4) Crie uma função que recebe o código da área de um curso e traga as estatísticas desse curso.
-- Retornando a nota máxima, mínima e média tendo como referencia para esse calculo o CPC
-- (Contínuo)

CREATE OR REPLACE FUNCTION estatisticas_por_area(codigo_da_area INTEGER)
RETURNS TABLE (nota_maxima NUMERIC, nota_minima NUMERIC, media NUMERIC) 
AS $$
BEGIN
  RETURN QUERY 
  SELECT 
      MAX(_cpc_continuo) AS nota_maxima, 
      MIN(_cpc_continuo) AS nota_minima, 
      AVG(_cpc_continuo) AS media
  FROM cpc
  WHERE 
    cpc.codigo_da_area = estatisticas_por_area.codigo_da_area;
END;
$$ LANGUAGE plpgsql;


-- CÓDIGO USADO PARA CHAMAR A FUNÇÃO:

SELECT * FROM estatisticas_por_area(1402);

-- Onde em "1402" pode ser o código de qualquer área que se deseja obter estatística;

-- Resposta:
-- DATA OUTPUT:
    -- Máxima: 4.035	
    -- Mínima: 1.013	
    -- Média:  2.5754838709677419

-- Código usado para remover uma função existente:
  -- DROP FUNCTION IF EXISTS estatisticas_por_area(INTEGER);
-- Código usado para alterar o tipo da variável:
  -- ALTER TABLE nome_tabela
  -- ALTER COLUMN nome_coluna TYPE tipo  Using nome_coluna::tipo;
