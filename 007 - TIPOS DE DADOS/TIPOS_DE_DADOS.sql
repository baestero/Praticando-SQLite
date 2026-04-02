CREATE TABLE tipos (
  id INT, 
  descontinuado TINYINT,
  nome VARCHAR(100),
  preco DECIMAL(10,2),
  descricao TEXT,
  data_criacao DATETIME
);

PRAGMA TABLE_INFO (tipos);



INSERT INTO 
  tipos (id, descontinuado, nome, preco,descricao, data_criacao)
VALUES 
   (1, 0, 'Notebook', 200.5, null, '24-10-2049');


SELECT id, typeof(descontinuado) FROM tipos;
