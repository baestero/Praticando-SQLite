# FOREIGN KEY

- Pode acontecer da opção estar desativada no SQLite para isso precisamos executar o comando
  - PRAGMA foreign_keys = ON;
  - PRAGMA foreign_keys = OFF;
  - PRAGMA foreign_keys;

- Chave estrangeira
  - Serve para relacionarmos uma tabela com outra

## DROP TABLE (FK)

- Parama remover uma tabela que possui chaves estrangeiras, você deve primeiro remover as tabelas dependentes.
  - EX: DROP TABLE cursos; -- falha se "aulas" existir.

## CASCADE

- Use o CASCADE para remover/atualizar automaticamente as linhas dependentes ao remove/atualizar uma linha referenciada.

## ON DELETE CASCADE

- EX: tenho a tabela cursos e a tabela aulas
- A tabela aulas depende de cursos, pois faz referencia ao curso id
- Caso o curso referenciado seja deletado, automaticamente o CASCADE removera todas as aulas também daquele curso.

## ON UPDATE CASCADE

- Mesma logica do DELETE CASCADE, porém ao inves de deletar irá atualizar.
