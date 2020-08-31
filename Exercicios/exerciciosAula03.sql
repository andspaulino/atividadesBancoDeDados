/*Anderson de Souza Paulino - 101112*/
/*Exercicio 1*/
CREATE OR ALTER VIEW cliente_primeira_compra AS
SELECT pessoa.nome_pessoa, cliente.dt_primeira_compra
FROM cliente
INNER JOIN pessoa ON cliente.id_cliente = pessoa.id_pessoa

/*Exercicio 2*/
CREATE OR ALTER VIEW funcionario_data_admissao AS
SELECT pessoa.nome_pessoa, funcionario.dt_admissao
FROM funcionario
INNER JOIN pessoa ON funcionario.id_pessoa = pessoa.id_pessoa;

/*Exercicio 3*/
CREATE OR ALTER VIEW pedido_venda_data AS
SELECT pedido.id_pedido, venda.id_venda, venda.dt_venda
FROM pedido
LEFT JOIN venda ON pedido.id_pedido = venda.id_pedido;