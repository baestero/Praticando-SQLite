SELECT * FROM produtos;


SELECT DATE('now');
SELECT TIME('now', '-03:00');
SELECT TIME('now', 'localtime');
SELECT DATETIME('now', 'localtime');
SELECT DATETIME('now', 'localtime', '+7 day', '+7 year');
SELECT STRFTIME('%Y-%m-%d %H:%M:%S', 'now')

SELECT * FROM produtos WHERE criado BETWEEN DATE('2049-01-01') AND DATE('2049-01-01', '+6 month');

SELECT STRFTIME('%Y-%m', criado) FROM produtos;