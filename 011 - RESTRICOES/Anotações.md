# RESTRIÇÕES

## NOT NULL

- O valor da coluna não pode ser nulo.
- A não ser que tenha um valor primary key que irá definir automaticamente um valor.

## UNIQUE

- O valor da coluna deve ser único em relação as outras linhas da tabela.
- Unique permite passar nulo, então é importante também passar NOT NULL quando for o caso.
- Pode ser unique a junção de duas colunas como usuario_id com curso_id.

## COLLATE

- Define como a comparação de textos deve ser feita, por exemplo, se deve ser sensível a maiúsculas e minúsculas NOCASE.

- Com o COLLATE NOCASE Andre@email.com é o mesmo que andre@email.com
