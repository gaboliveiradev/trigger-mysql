CREATE DATABASE mydb;
USE mydb;

CREATE TABLE produto(
	id int auto_increment not null,
    descricao varchar(45) not null,
    preco double not null,
    estoque int not null,
    primary key(id)
);

CREATE TABLE venda(
	id int auto_increment not null,
    cliente varchar(45) not null,
    data_venda timestamp not null default current_timestamp,
    primary key(id)
);

CREATE TABLE venda_item(
	id_venda int not null,
    id_produto int not null,
    preco_unitario double not null,
    quantidade int not null,
    valor_total double not null,
    primary key(id_venda, id_produto),
    foreign key(id_venda) references venda(id),
	foreign key(id_produto) references produto(id)
);