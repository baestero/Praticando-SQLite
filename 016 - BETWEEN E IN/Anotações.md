# BETWEEN

- É um operador de Range que seria verificar entre um valor e outro.
  SELECT \* FROM produtos WHERE preco BETWEEN 21900 AND 50000;

  Caso o produto seja exatamente 21900 ele inclui também. é > ou =.

  Between também pode ser usado parada data

  SELECT \* FROM produtos WHERE criado **BETWEEN** '2049-06' AND '2049-08';

  SELECT \* FROM produtos WHERE criado **NOT BETWEEN** '2049-06' AND '2049-08';

# IN

- É para verificar um valor dato uma lista de valores (array)

  Retorna todos produtos que existem na categoria notebook e hardware.
  SELECT \* FROM produtos WHERE categoria **IN** ('notebook', 'hardware');

  Retorna todos produtos que **NÃO** existem na categoria notebook e hardware.
  SELECT \* FROM produtos WHERE categoria **NOT IN** ('notebook', 'hardware');

  Seria o mesmo que escrever dessa forma:
  SELECT \* FROM produtos WHERE categoria = 'notebook' OR categoria = 'hardware';

  Para buscar nome seria mais interessante a segunda abordagem com o operador LIKE
  SELECT \* FROM produtos WHERE nome **LIKE** '%notebook%' **OR** categoria **LIKE** '%hardware%';

  Retornaria todos produtos cuja o nome contesse notebook ou hardware no nome

O **IN** é mais utulizado para valores fixos exemplo: categoria, ativo, admim etc...
