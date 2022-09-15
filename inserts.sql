-- INSERT'S DA TABELA PRODUTO
INSERT Produto (descricao, preco, estoque) VALUES ("Creatina", 90, 5);
INSERT Produto (descricao, preco, estoque) VALUES ("Whey", 120, 3);
INSERT Produto (descricao, preco, estoque) VALUES ("Pré-Treino", 80, 4);

-- INSERT'S DA TABELA CLIENTE
INSERT INTO Venda (cliente) VALUES ("Gabriel Oliveira");
INSERT INTO Venda (cliente) VALUES ("Mirandinha");
INSERT INTO Venda (cliente) VALUES ("Eduardo Frasson");

-- INSERT'S DA TABELA VENDA_ITEM
INSERT INTO venda_item (id_venda, id_produto, preco_unitario, quantidade, valor_total) VALUES (2, 1, 90, 2, 90);
INSERT INTO venda_item (id_venda, id_produto, preco_unitario, quantidade, valor_total) VALUES (1, 3, 80, 3, 80);
INSERT INTO venda_item (id_venda, id_produto, preco_unitario, quantidade, valor_total) VALUES (3, 2, 120, 2, 240);

CALL insere_dados();