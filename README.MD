# Praticando SQLite

Repositório para **registrar estudos de SQLite**: comandos SQL, anotações e scripts organizados por tema.

## Objetivo

Guardar o que vou aprendendo de forma incremental — da criação de tabelas até manipulação de dados — com exemplos e notas para consulta futura.

## Estrutura

| Pasta | Conteúdo |
|--------|-----------|
| `001 - CREATE TABLE` | `CREATE_TABLE.sql` e `Anotações.md` (CREATE TABLE, DROP TABLE, PRAGMA, tipos) |
| `002 - SELECT` | `SELECT.sql` e `Anotações.md` (consultas) |
| `003 - INSERT` | `INSERT.sql` e `Anotações.md` |
| `004 - DELETE` | `DELETE.sql` e `Anotações.md` |
| `005 - UPDATE` | `UPDATE.sql` e `Anotações.md` |
| `006  - DESAFIO SQLITE` | `script.sql` e `Resolucao.sql` (desafio prático) |
| `007 - TIPOS DE DADOS` | `TIPOS_DE_DADOS.sql` e `Anotações.md` |
| `008 - STRICT` | `STRICT.sql` e `Anotacões.md` |
| `009 - PRIMARY KEY` | `PRIMARY_KEY.sql` e `Anotações.md` |
| `010 - FOREIGN_KEY` | `FOREIGN_KEY.sql` e `Anotações.md` |
| `011 - RESTRICOES` | `RESTRICOES.sql` e `Anotações.md` |
| `012 - RESTRICOES 2` | `RESTRICOES.sql` e `Anotações.md` |
| `013 - MODELAGEM EXERCICIO` | `MODELAGEM_DE_DADOS.sql`, `CORRECAO.sql` e `Enunciado.md` |
| `014 - OPERADORES` | `OPERADORES.sql` (operadores relacionais e lógicos) |
| `015 - LIKE` | `LIKE.sql` e `Anotações.md` |
| `DB/` | Banco local (`db.sqlite`) e comandos de apoio (`comandos.sql`) |

## Convenções

- Scripts terminam com `;` onde fizer sentido no SQLite.
- Pastas numeradas seguem a ordem em que organizei os tópicos.
- `DB/` é usado para testes locais e não deve ser versionado.
