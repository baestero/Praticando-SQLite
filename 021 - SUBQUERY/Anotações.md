# SUBQUERY

- Devem ser escritas entre parênteses e o seu resultado será usado para compor a query principal.

  SELECT AVG(preco) FROM produtos;

  SELECT \* FROM produtos WHERE preco > (SELECT AVG(preco) FROM produtos);

# WITH AS

- Cria uma subquery nomeada, que pode ser referenciada na query principal. é uma tabela temporaria.

- Serve para subquerys complexas.
