USE Concessionaria;

-- Criando Tabelas
CREATE TABLE tblMarcas
(
	idMarca			int			identity			primary key,
	nomeMarca		nchar(30)	not null			unique
);

-- Visualizando estrutura de tabelas
EXEC sp_help tblMarcas;

-- Outra forma de criar tabelas com nomes de constraints mais amigáveis.

CREATE TABLE tblModelos
(
	idModelo			int			identity
	Constraint PK_tbleModelos_idModelo
	Primary Key (idModelo),

	idMarca			int			not null
	Constraint FK_tblModelos_tblMarcas_idMarca
	Foreign Key (idMarca)
	References tblMarcas(idMarca),

	nomeModelo			nchar(30)			not null
	Constraint UQ_tblModelos_nomeModelo
	Unique (nomeModelo)
);
EXEC sp_help tblModelos;