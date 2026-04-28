# Matemática

- As funções matemáticas mais comuns no SQLITE são:

## COUNT()

- Conta o número de linhas.
  SELECT COUNT(\*) FROM produtos;

## SUM()

- Soma os valores de uma coluna numérica. Também pode ser multiplicado ou outras operações matematicas
  SELECT SUM (preco \* estoque) FROM PRODUTOS

## AVG()

- Calcula a média dos valores de uma coluna numérica.
  SELECT AVG (preco) AS media_preco FROM produtos;
- Podemos utilizar ROUND() para arredondar os preçocos.
  SELECT ROUND(AVG (preco)) AS media_preco FROM produtos;

## MIN() & MAX()

- Rretorna o menor valor de uma coluna.
  SELECT MIN(preco) AS preco_minimo FROM produtos;
  SELECT MAX(preco) AS preco_maximo FROM produtos;

- Podemos trazer não so o numero mas o numero ou o todas as colunas restantes do produto filtrado
  SELECT MIN(preco) AS preco_minimo, nome FROM produtos;

  SELECT MAX(preco) AS preco_minimo, \* FROM produtos;
