# PRIMARY KEY

- Define uma coluna como chave primária, que deve ser única e não nula.
- Chaves primárias não necessáriamente sempre serão INT, Podem ser TEXT e etc dependendo do contexto.
- Ele auto incrementa partir do ultimo id ou numero inserido na tabela

# ROWID

- Roda tabela tem uma coluna chamada rowid, que é um identificador único para cada linha
- Se você não definir uma chvae primária, o SQLite cria automaticamente uma coluna rowid
- Se você definir uma coluna como INTEGER PRIMARY KEY, ela se torna um alias(Sobrescreve o rowid) para coluna rowid, isso não acontece caso use INT
