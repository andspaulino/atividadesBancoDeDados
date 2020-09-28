CREATE OR ALTER VIEW informacao_venda_notas AS
SELECT venda.id_venda, venda.dt_venda, venda.total_liquido, nota_fiscal.numero_nota, nota_fiscal.dt_emissao
FROM venda
INNER JOIN nota_fiscal ON venda.id_venda = nota_fiscal.id_venda
