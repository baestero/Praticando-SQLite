SELECT * FROM produtos;

SELECT LENGTH (nome), nome FROM produtos WHERE LENGTH (nome) > 10;

SELECT LENGTH (nome) AS tamanho, nome FROM produtos WHERE tamanho > 10;

SELECT LOWER (nome) AS nome_min, nome FROM produtos;

SELECT LOWER (nome) AS nome_min, nome FROM produtos WHERE nome_min = LOWER ('Fone bluetooth');

SELECT TRIM(LOWER (nome)) AS nome_min, nome 
  FROM produtos 
  WHERE nome_min = TRIM(LOWER('   Fone bluetooth'));


SELECT SUBSTR(nome, 1,3) FROM produtos;
