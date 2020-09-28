CREATE OR ALTER FUNCTION dbo.impostoProduto(@valor_produto INT, @porcentagem INT)
RETURNS REAL
AS
BEGIN
	RETURN @valor_produto * (@porcentagem/100)
END