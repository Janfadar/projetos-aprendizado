USE SisDep;

-- Consultar todas as colunas de uma tabela
SELECT * FROM Funcionario;

-- Somente algumas colunas
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario;

-- Ordenar dados
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY NomeFuncionario ASC;

-- Mais um exemplo de ordenação, desta vez decrescente.
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Salario DESC;

-- Ordenação por mais de uma coluna
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY idDepartamento ASC,Salario DESC;

-- Ordenação pela posição da coluna
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY 1 ASC,5 DESC;

--RANK TOP 20 primeiras linhas da tabela ordenadas por PK
SELECT TOP 20 idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario;

-- TOP por porcentagem de dados
SELECT TOP 10 PERCENT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario;

-- TOP 10 maiores salários
SELECT TOP 10 idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Salario DESC;

--Com empates
SELECT TOP 9 WITH TIES idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Salario DESC;

-- TOP 5 funcionarios mais antigos
SELECT TOP 5 WITH TIES idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Admissao ASC;
