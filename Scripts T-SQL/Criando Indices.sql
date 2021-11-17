USE Concessionaria;

-- visualizar indices
EXEC sp_help tblEstoque;

-- Criando o Índice
CREATE NONCLUSTERED INDEX IX_tblEstoque
ON tblEstoque(dataEntrada DESC);

EXEC sp_helpindex tblEstoque;

-- Excluindo um Índice
DROP INDEX IX_tblEstoque
ON tblEstoque;