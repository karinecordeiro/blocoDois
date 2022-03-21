CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tipo varchar(255),
tamanho varchar(255),
estoque boolean,

primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar(255),
marca varchar(255),
valor int,
codigo int,
validade boolean,
categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

SELECT * FROM tb_produto;

INSERT INTO tb_categoria (tipo, tamanho, estoque)
VALUES ("Remedio","Padrão", true);
INSERT INTO tb_categoria (tipo, tamanho, estoque)
VALUES ("Remedio", "Padrão", false);
INSERT INTO tb_categoria (tipo, tamanho, estoque)
VALUES ("Cosmético", "Padrão",true);
INSERT INTO tb_categoria (tipo, tamanho, estoque)
VALUES ("Cosmético", "Padrão", false);
INSERT INTO tb_categoria (tipo, tamanho, estoque)
VALUES ("Alimento", "Padrão", true);

SELECT * FROM tb_categoria;

INSERT INTO tb_produto (nome, marca, valor, codigo, validade, categoria_id)
VALUES ("Shampoo","Seda",8,123456,true,4);
INSERT INTO tb_produto (nome, marca, valor, codigo, validade, categoria_id)
VALUES ("Sabonete","Dove",4,234561,true,3);
INSERT INTO tb_produto (nome, marca, valor, codigo, validade, categoria_id)
VALUES ("Refrigerante","Dolly",10,345612,true,5);
INSERT INTO tb_produto (nome, marca, valor, codigo, validade, categoria_id)
VALUES ("Dipirona","Genérico",2,456123,true,1);
INSERT INTO tb_produto (nome, marca, valor, codigo, validade, categoria_id)
VALUES ("Creme de assadura","Bepantol",30,561234,true,1);
INSERT INTO tb_produto (nome, marca, valor, codigo, validade, categoria_id)
VALUES ("Creme corporal","Monange",15,612345,true,3);
INSERT INTO tb_produto (nome, marca, valor, codigo, validade, categoria_id)
VALUES ("Salgadinho","Doritos",12,654321,true,5);
INSERT INTO tb_produto (nome, marca, valor, codigo, validade, categoria_id)
VALUES ("Antiemético","Dramin",6,543216,true,2);

SELECT * FROM tb_produto;
SELECT * FROM tb_categoria;

SELECT * FROM tb_produto WHERE valor > 50;
SELECT * FROM tb_produto WHERE valor >=3 AND valor <=60;
SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id = tb_produto.id;

SELECT * FROM tb_categoria
INNER JOIN tb_produto on tb_produto.categoria_id = tb_categoria.id
WHERE categoria_id=2;