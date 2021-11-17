USE Concessionaria;

-- visualizar indices
EXEC sp_help tblEstoque;

-- Criando o �ndice
CREATE NONCLUSTERED INDEX IX_tblEstoque
ON tblEstoque(dataEntrada DESC);

EXEC sp_helpindex tblEstoque;

-- Excluindo um �ndice
DROP INDEX IX_tblEstoque
ON tblEstoque;