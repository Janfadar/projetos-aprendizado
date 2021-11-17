USE Concessionaria;

EXEC sp_help tblMarcas;

-- Insert Posicional
INSERT INTO tblMarcas
VALUES('FIAT');

-- Inserindo Várias linhas
INSERT INTO tblMarcas
VALUES
('FORD'),('CHEVROLET'),('VOLKSVAGEN'),('HONDA');

-- Visualizar dados inseridos
SELECT * FROM tblMarcas;

-- Insert Declarativo
INSERT INTO tblModelos
(idMarca,nomeModelo)
VALUES
(4,'Onix'),(1,'Uno'),(3,'Eco Sport');

SELECT * FROM tblEstoque;

INSERT INTO tblEstoque
(idModelo, dataEntrada, precoEstoque)
VALUES
(1, '2017-01-05', 45000);

-- Erro
INSERT INTO tblEstoque
(idModelo, dataEntrada, precoEstoque)
VALUES
(1, '2017-01-05', 2000);