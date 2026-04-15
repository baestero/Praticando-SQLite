# Operador LIKE

- É utulizado para comparar padrões em strings. Por padrão ele não é sensivel a maiúsculas e minúsculas.

SELECT \* FROM produtos WHERE nome LIKE 'impressora 3d mini';

## NOT LIKE

SELECT \* FROM produtos WHERE nome NOT LIKE 'impressora 3d mini';

- Vai retornar tudo que NÃO for igual a o que foi passado.

## WILDCARD (%)

- % Representa zero ou mais caracteres.

SELECT \* FROM produtos WHERE nome LIKE 'notebook%'

- Encontra produtos que COMEÇAM com 'notebook'

SELECT \* FROM produtos WHERE nome LIKE '%pro'

- Encontra produtos que TERMINAM com '%pro'

SELECT \* FROM produtos WHERE nome LIKE '%3d%'

- Encontra produtos que tem '3d' no MEIO do nome

Atenção: Ele também contabiliza os espaços.

## WILDCARD (\_)

\_: Representa exatamente um caractere.

-- Econtra produtos com 1 caractere antes de 'TB'
SELECT \* FROM produtos WHERE nome LIKE '% \_TB%'
