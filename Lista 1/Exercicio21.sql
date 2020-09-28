/*Adicionando o campo valor_compra*/
ALTER TABLE produto
ADD valor_compra int 

/*Adicionando os valores a tabela*/
UPDATE produto
SET valor_compra = valor_venda / 2;

/*Visualizando o resultado do calculo*/
SELECT id_produto, nome_produto, valor_venda - valor_compra AS 'Lucro'
FROM produto