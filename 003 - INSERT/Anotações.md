# INSERT INTO nome_da_tabela (id, nome aulas) VALUES (1, 'HTML', 10);

- Insere registros na tablea, menciona as colunas (A ORDEM IMPORTA) e após os valores a serem inseridos

- Podemos também inserir dois registros de uma vez separando por virgula:
  INSERT INTO
  cursos (id, nome, aulas)
  VALUES
  (2, 'CSS', 12),
  (3, 'JS', 15);

# Constraints

- Erros devido a inserções de restrições
  INSERT INTO cursos (nome,aulas) VALUES ( 'CSS', 12);
  erro, id não pode ser nulo

  tabela com ID NOT NULL
