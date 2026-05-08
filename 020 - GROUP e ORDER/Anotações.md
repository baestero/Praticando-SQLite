# GROUP e ORDER

## ORDER BY

- Ordena os resultados de uma consulta. Por padrão ele usa ASC mas pode se definido como DESC também

- Também pode ordenar por data e ordem alfabética

- Porém caracteres especiais ele coloca por ultimo como "ç"

- Podemos ordenar mais de uma coluna como nome, preco etc.

# GROUP BY

- Agrupa os resultados de uma consulta

SELECT COUNT(\*) AS total, categoria FROM produtos GROUP BY categoria ORDER BY total;

Pega a tabela produtos
Agrupa os produtos pela categoria
Conta (COUNT) quantos registros existem dentro de cada categoria
Ordena o resultado pelo total em ordem crescente (ASC padrão), mas poderia ser DESC para ordenar do maior para o menor.

SELECT AVG(preco) AS preco_medio, categoria FROM produtos GROUP BY categoria ORDER BY preco_medio;

Pega a tabela produtos
Agrupa os produtos pela categoria
Calcula a média (AVG) do preco dentro de cada categoria
Ordena o resultado pelo preco_medio em ordem crescente (ASC padrão)

SELECT STRFTIME('%Y', criado) AS ano, COUNT(\*) AS total FROM produtos GROUP BY ano;

Pega a tabela produtos
Formata a data da coluna criado para retornar apenas o ano usando STRFTIME('%Y', criado)
Agrupa os registros pelo ano
Conta (COUNT) quantos registros existem em cada ano

# HAVING

- Funciona como WHERE ja que os grupos são temporarios o WHERE não funciona aqui por isso usamos HAVING

WHERE filtra registros antes do agrupamento
HAVING filtra grupos depois do GROUP B

- SELECT categoria, COUNT(\*) AS total
  FROM produtos GROUP BY categoria
  HAVING total > 2 ;

Pega a tabela produtos
Agrupa os produtos por categoria
conta o total de registros por categoria
Filtra os grupos usando HAVING, retornando apenas categorias que tenham mais de 2 produtos
