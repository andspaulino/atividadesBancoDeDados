/*Este stored procedure busca o nome do cliente e exibe a ultima compra do mesmo*/
CREATE OR ALTER PROC buscar_data_ultima_crompra @Nome VARCHAR(30)
AS
SELECT cliente.id_cliente, pessoa.nome_pessoa, cliente.dt_ultima_compra 
FROM cliente
INNER JOIN pessoa
ON pessoa.id_pessoa = cliente.id_pessoa
WHERE nome_pessoa = @nome
