# SELECT \* FROM cursos;

- seleciona todos dados da tabela cursos.

# SELECT id, nome FROM cursos;

- Ele retorna somente as colunas id e nome da tabela cursos.

# LIMIT

## SELECT \* FROM cursos LIMIT 2;

- Retorna somente 2 primeiros registros da tabela cursos, limitando a consulta. Agiliza as consultas

## CASO fosse SQL SERVER seria TOP 2;

- SELECT TOP 2 \* FROM cursos;

# WHERE

## SELECT \* FROM cursos WHERE id = 1;

- Retorna todos registros da tabela cursos, cujo ID seja 1.

## SELECT \* FROM cursos WHERE aulas < 11;

- Retorna todos registros da tabela cursos, cujo aulas seja menor que 11.

# AND e OR

## AND - todas as condições devem ser verdadeiras.

### SELECT \* FROM cursos WHERE ID = 2 AND aulas > 10;

- Retorna todos os registros da tabela cursos, onde ID precisa ser igual a 2 E aulas maior que 10.

## OR pelo menos uma das condições deve ser verdadeira.

### SELECT \* FROM cursos WHERE ID = 2 OR aulas > 10;

- Retorna todos os registros da tabela cursos, onde ID precisa ser igual a 2 OU aulas maior que 10.

- LIMIT também pode ser usado em conjunto com essaa condicionais.
