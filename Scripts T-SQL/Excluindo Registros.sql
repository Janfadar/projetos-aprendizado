USE Consorcio;

SELECT * FROM Carteiras;

-- Excluindo registros
DELETE FROM Carteiras
WHERE Cpf = 74632202244;

DELETE FROM Carteiras
WHERE Uf = 'GO';

USE SisDep;

-- Exclus�o bem sucedida
DELETE FROM Funcionario
WHERE idMatricula = 1001;

-- Exclus�o com erro
-- Erro devido a rela��o com dependentes em outra tabela
DELETE FROM Funcionario
WHERE idMatricula = 1000;

SELECT * FROM Dependente
WHERE idMatricula = 1000;