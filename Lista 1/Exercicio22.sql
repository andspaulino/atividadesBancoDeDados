CREATE OR ALTER PROC adicionar_nota_fiscal @idNota int, @numNota int
AS
INSERT INTO nota_fiscal
VALUES(@idNota, @numNota, GETDATE() + 1)