DELIMITER $$
	-- Devolvendo um Produto, o produto volta ao Estoque
	CREATE TRIGGER tgr_venda_item_delete AFTER DELETE ON venda_item
	FOR EACH ROW
	BEGIN
		UPDATE produto SET estoque = estoque + OLD.quantidade WHERE id = OLD.id_produto;
	END$$

	-- Vendendo um Produto, o produto é subtraido do Estoque
	CREATE TRIGGER tgr_venda_item_insert AFTER INSERT ON venda_item
	FOR EACH ROW
	BEGIN
		UPDATE produto SET estoque = estoque - NEW.quantidade WHERE id = NEW.id_produto;
	END$$
DELIMITER $$