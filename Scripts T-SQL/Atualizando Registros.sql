USE SisDep;

-- B�nus de R$ 100,00 para todos os funcion�rios
UPDATE Funcionario
SET salario = salario + 100;

-- Operador composto
-- Reajuste de 10% para todos os funcion�rios
UPDATE Funcionario

-- SET salario = salario * 0.1 + salario
-- SET salario = salario * 1.1

SET salario *= 1.1

-- Atualizar mais de uma coluna simult�neamente
-- Com aplica��o de filtro WHERE
UPDATE Funcionario
SET salario = salario * 1.05,idCargo = 2
WHERE idMatricula = 1000;

