# Praticando SQLite

Repositório para **registrar estudos de SQLite**: comandos SQL, anotações e scripts organizados por tema.

## Objetivo

Guardar o que vou aprendendo de forma incremental — da criação de tabelas até consultas com agregações e JOINs — com exemplos e notas para consulta futura.

## Estrutura

| Pasta | Conteúdo |
|--------|-----------|
| `001 - CREATE TABLE` | `CREATE_TABLE.sql` e `Anotações.md` (CREATE TABLE, DROP TABLE, PRAGMA, tipos) |
| `002 - SELECT` | `SELECT.sql` e `Anotações.md` (consultas) |
| `003 - INSERT` | `INSERT.sql` e `Anotações.md` |
| `004 - DELETE` | `DELETE.sql` e `Anotações.md` |
| `005 - UPDATE` | `UPDATE.sql` e `Anotações.md` |
| `006  - Desafio SQLite` | `script.sql` e `Resolucao.sql` (desafio prático) |
| `007 - TIPOS DE DADOS` | `TIPOS_DE_DADOS.sql` e `Anotações.md` |
| `008 - STRICT` | `Anotacões.md` (modo STRICT e tipos permitidos) |
| `009 - PRIMARY KEY` | `PRIMARY_KEY.sql` e `Anotações.md` |
| `010 - FOREIGN_KEY` | `FOREIGN_KEY.sql` e `Anotações.md` |
| `011 - RESTRICOES` | `RESTRICOES.sql` e `Anotações.md` |
| `012 - RESTRICOES 2` | `RESTRICOES.sql` e `Anotações.md` |
| `013 - MODELAGEM EXERCICIO` | `MODELAGEM_DE_DADOS.sql`, `CORRECAO.sql` e `Enunciado.md` |
| `014 - OPERADORES` | `OPERADORES.sql` (operadores relacionais e lógicos) |
| `015 - LIKE` | `LIKE.sql` e `Anotações.md` |
| `016 - BETWEEN E IN` | `BETWEEN_E_IN.sql` e `Anotações.md` |
| `017 - FUNCOES 1` | `FUNCOES1.sql` e `Anotações.md` (COUNT, SUM, AVG, MIN, MAX) |
| `018 - FUNCOES 2` | `FUNCOES2.sql` e `Anotações.md` (LENGTH, UPPER, LOWER, SUBSTR, TRIM) |
| `019 - FUNCOES 3` | `FUNCOES3.sql` e `Anotações.md` (DATE, TIME, DATETIME, STRFTIME) |
| `020 - GROUP e ORDER` | `GROUP_E_ORDER.sql` e `Anotações.md` (ORDER BY, GROUP BY, HAVING) |
| `021 - SUBQUERY` | `SUBQUERY.sql` e `Anotações.md` (subqueries e WITH AS) |
| `022 - JOIN` | `JOIN.sql` e `Anotações.md` (INNER JOIN) |
| `023 - LEFTJOIN` | `LEFTJOIN.sql` e `Anotações.md` (LEFT JOIN e SELF JOIN) |
| `024 - SELECT EXERCICIO` | `SOLUCAO.sql`, `Enunciado.md` e `Correção.md` (exercício de SELECT) |

## Convenções

- Scripts terminam com `;` onde fizer sentido no SQLite.
- Pastas numeradas seguem a ordem em que organizei os tópicos.
- `DB/` é usado para testes locais e não deve ser versionado.
