INSERT INTO
	Entidade (Descricao, Tipo, Pai_id)
VALUES
	("Servir", NULL, NULL),
	("São Paulo", "ESTADO", LAST_INSERT_ID()),
	("Bororos", "NUCLEO", LAST_INSERT_ID())