# RESTRICOES 2

## DEFAULT

- Define um valor padrão para a coluna quando nenhum valor é fornecido.
- O valor default insere somente caso não seja passado nada naquela coluna, porém se passado ele insere.

- EX: se um usuário é admin ou não como default ele vai passar que o usuario não é admin.
  Porém se for passa no momento da criação que o usuário é admin o banco não irá barrar.

## CHECK

- Condição que deve ser verdadeira para que linha seja inserida ou atualizada.
  O check pode receber diferentes condições, como:

* CHECK ('vitalicio' IN (0,1))
  - Verifica se o valor é 0 ou 1

* CHECK ('preco' > 0)

- Verifica se o preco é maior que 0.
