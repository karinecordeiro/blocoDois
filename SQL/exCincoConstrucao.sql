CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tipo varchar(255),
estoque boolean,
frete boolean,

primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar(255),
marca varchar(225),
valor int,
peso int,
quantidade int,
categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

SELECT * FROM tb_produto;

INSERT INTO tb_categoria (tipo, estoque, frete)
VALUES ("Construir", true, true);
INSERT INTO tb_categoria (tipo, estoque, frete)
VALUES ("Contruir", false, false);
INSERT INTO tb_categoria (tipo, estoque, frete)
VALUES ("Decorar", true, false);
INSERT INTO tb_categoria (tipo, estoque, frete)
VALUES ("Decorar", false, false);
INSERT INTO tb_categoria (tipo, estoque, frete)
VALUES ("Outro", true, false);

SELECT * FROM tb_categoria;

INSERT INTO tb_produto (nome, marca, valor, peso, quantidade, categoria_id)
VALUES ("Cortina","XTY",248,3,5,3);
INSERT INTO tb_produto (nome, marca, valor, peso, quantidade, categoria_id)
VALUES ("Cimento","Apodi",35,50,1,1);
INSERT INTO tb_produto (nome, marca, valor, peso, quantidade, categoria_id)
VALUES ("Massa corrida","Coral",89,25,0,2);
INSERT INTO tb_produto (nome, marca, valor, peso, quantidade, categoria_id)
VALUES ("Privada","Deca",880,42,7,5);
INSERT INTO tb_produto (nome, marca, valor, peso, quantidade, categoria_id)
VALUES ("Jogo 6 Pratos","Nadir",45,10,3,5);
INSERT INTO tb_produto (nome, marca, valor, peso, quantidade, categoria_id)
VALUES ("Piso","Royal Gres",225,4,1,1);
INSERT INTO tb_produto (nome, marca, valor, peso, quantidade, categoria_id)
VALUES ("Tinta","Coral",64,5,0,4);
INSERT INTO tb_produto (nome, marca, valor, peso, quantidade, categoria_id)
VALUES ("Box","BAcrilico",500,20,9,5);

SELECT * FROM tb_produto;
SELECT * FROM tb_categoria;

SELECT * FROM tb_produto WHERE valor > 50;
SELECT * FROM tb_produto WHERE valor >=3 AND valor <=60;
SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id = tb_produto.id;

SELECT * FROM tb_categoria
INNER JOIN tb_produto on tb_produto.categoria_id = tb_categoria.id
WHERE categoria_id=5;