
SELECT * FROM produtos

SELECT * FROM produtos WHERE preco BETWEEN  30000 AND 50000;

SELECT * FROM produtos WHERE criado NOT BETWEEN  '2049-06' AND '2049-08';

SELECT * FROM produtos WHERE categoria IN ('notebook', 'hardware');

SELECT * FROM produtos WHERE categoria NOT IN ('notebook', 'hardware');

SELECT * FROM produtos WHERE nome LIKE '%notebook%' OR categoria LIKE '%hardware%';

SELECT * FROM produtos WHERE categoria = 'notebook' OR categoria = 'hardware'