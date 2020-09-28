CREATE OR ALTER FUNCTION dbo.classificar(@qtdVendas INT)
RETURNS VARCHAR(30)
BEGIN
	DECLARE @retorno VARCHAR(30)
	IF (@qtdVendas < 2) 
		RETURN 'Cliente Esporádico';
	ELSE IF (@qtdVendas >= 2 AND @qtdVendas < 10)
		RETURN 'Cliente Recorrente';
	ELSE 
		RETURN 'Cliente Fidelizado';
	RETURN '';
END