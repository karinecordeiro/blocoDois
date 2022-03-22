CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tipo varchar(255),
classe int,
validade int,
primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar(255),
peso int,
valor int,
codigo int,
promocao boolean,
categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

SELECT * FROM tb_produto;

INSERT INTO tb_categoria (tipo, classe, validade)
VALUES ("Vermelha", 1, 5);
INSERT INTO tb_categoria (tipo, classe, validade)
VALUES ("Vermelha", 2, 3);
INSERT INTO tb_categoria (tipo, classe, validade)
VALUES ("Vermelha", 3, 2);
INSERT INTO tb_categoria (tipo, classe, validade)
VALUES ("Branca", 1, 4);
INSERT INTO tb_categoria (tipo, classe, validade)
VALUES ("Branca", 2, 2);

SELECT * FROM tb_categoria;

INSERT INTO tb_produto (nome, peso, valor, codigo, promocao, categoria_id)
VALUES ("Patinho",2,28,1346,true,2);
INSERT INTO tb_produto (nome, peso, valor, codigo, promocao, categoria_id)
VALUES ("Filé de frango",3,35,1245,true,5);
INSERT INTO tb_produto (nome, peso, valor, codigo, promocao, categoria_id)
VALUES ("Figado",2,24,1523,true,3);
INSERT INTO tb_produto (nome, peso, valor, codigo, promocao, categoria_id)
VALUES ("Costela de boi",5,109,1654,false,1);
INSERT INTO tb_produto (nome, peso, valor, codigo, promocao, categoria_id)
VALUES ("Asa de frango",3,52,1345,false,4);
INSERT INTO tb_produto (nome, peso, valor, codigo, promocao, categoria_id)
VALUES ("Colchão mole",1,37,1642,false,2);
INSERT INTO tb_produto (nome, peso, valor, codigo, promocao, categoria_id)
VALUES ("Alcatra",2,58,1436,true,2);
INSERT INTO tb_produto (nome, peso, valor, codigo, promocao, categoria_id)
VALUES ("Coxa de frango",7,105,1526,true,5);

SELECT * FROM tb_produto;
SELECT * FROM tb_categoria;

SELECT * FROM tb_produto WHERE valor > 50;
SELECT * FROM tb_produto WHERE valor >=3 AND valor <=60;
SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id = tb_produto.id;

SELECT * FROM tb_categoria
INNER JOIN tb_produto on tb_produto.categoria_id = tb_categoria.id
WHERE categoria_id=2;