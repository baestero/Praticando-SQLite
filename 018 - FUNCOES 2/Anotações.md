# TEXTO

## LENGTH()

- retorna o comprimento de uma string

SELECT LENGTH (nome), nome FROM produtos WHERE LENGTH (nome) > 10;

SELECT LENGTH (nome) AS tamanho, nome FROM produtos WHERE tamanho > 10;

## UPPER()

- Converte uma string para maiúsculas.

## LOWER()

- Converte uma strinf para minúsculas.

SELECT LOWER (nome) AS nome_min, nome FROM produtos;

SELECT LOWER (nome) AS nome_min, nome FROM produtos WHERE nome_min = LOWER ('Fone bluetooth');

## SUBSTR()

- Retorna uma parte de uma string.

SELECT SUBSTR(nome, 1,3) FROM produtos;

## TRIM()

- Remove espaços em branco do início e do fim de uma string.

SELECT TRIM(LOWER (nome)) AS nome_min, nome
FROM produtos
WHERE nome_min = TRIM(LOWER(' Fone bluetooth'));
