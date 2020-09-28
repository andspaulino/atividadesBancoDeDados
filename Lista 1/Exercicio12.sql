CREATE OR ALTER VIEW informacao_venda_produto AS
SELECT produto.nome_produto, venda.dt_venda
FROM produto
INNER JOIN itens_pedido ON produto.id_produto = itens_pedido.id_produto
INNER JOIN venda on venda.id_pedido = itens_pedido.id_pedido
