CREATE OR ALTER FUNCTION totalVendas(@cliente INT)
RETURNS TABLE
AS
RETURN
	SELECT COUNT(id_venda) as 'Número de Vendas'
	FROM venda
	INNER JOIN pedido
	ON venda.id_pedido = pedido.id_pedido
	INNER JOIN cliente
	ON cliente.id_cliente = pedido.id_cliente
	WHERE pedido.id_cliente = @cliente