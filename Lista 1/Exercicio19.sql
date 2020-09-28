CREATE OR ALTER PROC produtos_baixo_esoque @Qtd INTEGER
AS
SELECT * FROM produto
WHERE produto.qtd_estoque < @qtd
