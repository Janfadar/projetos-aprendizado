USE SeguroVeiculo;
SELECT * FROM Apolices;

--Iniciar Transação
BEGIN TRANSACTION;

--Verificar se há transação ativa
SELECT @@TRANCOUNT;

UPDATE Apolices
SET valorApolice = valorApolice + 1500;

--Cacelar uma operação
ROLLBACK TRANSACTION

BEGIN TRAN
	UPDATE Apolices
	SET valorApolice = valorApolice + 1500
	WHERE nContrato = 1000;

--Confirmar Transação
COMMIT TRAN

USE SisDep;

BEGIN TRAN
	UPDATE Funcionario
	SET Salario = Salario * 1.1
	OUTPUT
		deleted.idMatricula,
		deleted.NomeFuncionario,
		deleted.Salario AS [Salário Anterior],
		inserted.Salario AS [Novo Salário]
	WHERE Salario <= 3000;

COMMIT TRAN
