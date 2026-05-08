SELECT * FROM produtos;

SELECT AVG(preco) FROM produtos;

SELECT * FROM produtos WHERE preco > (SELECT AVG(preco) FROM produtos);

WITH preco_medio AS (
  SELECT AVG(preco) AS media FROM produtos
)
SELECT * FROM produtos WHERE preco > (SELECT media FROM preco_medio);