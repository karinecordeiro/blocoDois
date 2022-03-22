CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint auto_increment,
tamanho varchar(255),
bordarecheada boolean,
bebida boolean,

primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
id bigint auto_increment,
nome varchar(255),
ingredienteprincipal varchar(255),
quantidade int,
plus boolean,
valor double,

categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

SELECT * FROM tb_pizza;

INSERT INTO tb_categoria (tamanho, bordarecheada, bebida)
VALUES ("GRANDE", true, true);
INSERT INTO tb_categoria (tamanho, bordarecheada, bebida)
VALUES ("GRANDE", false, true);
INSERT INTO tb_categoria (tamanho, bordarecheada, bebida)
VALUES ("GRANDE", true, false);
INSERT INTO tb_categoria (tamanho, bordarecheada, bebida)
VALUES ("MÉDIA", true, false);
INSERT INTO tb_categoria (tamanho, bordarecheada, bebida)
VALUES ("MÉDIA", false, false);

SELECT * FROM tb_categoria;

INSERT INTO tb_pizza (nome, ingredienteprincipal, quantidade, plus, valor, categoria_id)
VALUE("Portuguesa", "ovo", 2, true, 70.50, 1);
INSERT INTO tb_pizza (nome, ingredienteprincipal, quantidade, plus, valor, categoria_id)
VALUE("Calabresa", "calabresa", 2, false, 67.20, 2);
INSERT INTO tb_pizza (nome, ingredienteprincipal, quantidade, plus, valor, categoria_id)
VALUE("Brócolis", "brócolis", 1, true, 38.80, 3);
INSERT INTO tb_pizza (nome, ingredienteprincipal, quantidade, plus, valor, categoria_id)
VALUE("Caipira", "frango", 1, false, 25.40, 4);
INSERT INTO tb_pizza (nome, ingredienteprincipal, quantidade, plus, valor, categoria_id)
VALUE("Catupiry", "catupiry", 2, true, 58.30, 5);
INSERT INTO tb_pizza (nome, ingredienteprincipal, quantidade, plus, valor, categoria_id)
VALUE("Quatro queijos", "queijo muçarela", 2, false, 67.00, 1);
INSERT INTO tb_pizza (nome, ingredienteprincipal, quantidade, plus, valor, categoria_id)
VALUE("Alho", "alho", 1, false, 29.70, 3);
INSERT INTO tb_pizza (nome, ingredienteprincipal, quantidade, plus, valor, categoria_id)
VALUE("Atum", "sardinha", 2, false, 62.10, 5);

SELECT * FROM tb_pizza;
SELECT * FROM tb_categoria;

SELECT * FROM tb_pizza WHERE valor > 45;
SELECT * FROM tb_pizza WHERE valor >=29 AND valor <=60;
SELECT * FROM tb_pizza WHERE ingredienteprincipal LIKE "%c%";

SELECT * FROM tb_pizza
INNER JOIN tb_categoria on tb_categoria.id = tb_pizza.id;

SELECT * FROM tb_categoria
INNER JOIN tb_pizza on tb_pizza.categoria_id = tb_categoria.id
WHERE categoria_id=3;