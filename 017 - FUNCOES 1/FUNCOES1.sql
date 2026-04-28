SELECT COUNT(*) FROM produtos;
SELECT COUNT() FROM produtos;
SELECT COUNT(categoria) FROM produtos;

SELECT * FROM produtos

SELECT SUM (preco * estoque) AS valor_total FROM PRODUTOS 

SELECT ROUND(AVG (preco)) AS media_preco_arredondado FROM produtos;

SELECT MIN(preco) AS preco_minimo FROM produtos;

SELECT MAX(preco) AS preco_maximo FROM produtos;

SELECT MIN(preco) AS preco_minimo, nome FROM produtos;

SELECT MAX(preco) AS preco_minimo, * FROM produtos;