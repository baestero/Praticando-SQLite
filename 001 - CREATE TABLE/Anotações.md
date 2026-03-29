# Criando Tabela Sintaxe:

## CREATE TABLE nome_da_tabela;

- Usado para criar uma nova tabela
  obs: recomendado sempre suar ponto e virgula no final do comando.

- Definição de dados
  Integer, TEXT, ETC..
  Ex:
  CREATE TABLE cursos(
  id Integer NOT NULL,
  nome TEXT NOT NULL,
  aulas INTEGER
  );

  NOT NULL, significa que o dado sempre precisa existir, não pode ser vazio.

## DROP TABLE nome_da_tabela;

- Usado para remover uma tabela

## PRAMA TABLE_INFO('nome_da_tabela')

- Verifica as carcacterísticas da tabela
