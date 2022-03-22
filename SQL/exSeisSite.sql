CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id bigint auto_increment,
nivel int,
disponivel boolean,
horario varchar(255),

primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_curso(
id bigint auto_increment,
nicho varchar(255),
curso varchar(255),
valor double,
horastotal int,
professor varchar(255),
categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

SELECT * FROM tb_curso;

INSERT INTO tb_categoria (nivel, disponivel, horario)
VALUES(1, true, "manhã, tarde e noite");
INSERT INTO tb_categoria (nivel, disponivel, horario)
VALUES(2, true, "manhã e tarde");
INSERT INTO tb_categoria (nivel, disponivel, horario)
VALUES(3, true, "manhã e noite");
INSERT INTO tb_categoria (nivel, disponivel, horario)
VALUES(3, false, "tarde");
INSERT INTO tb_categoria (nivel, disponivel, horario)
VALUES(2, false, "noite");


SELECT * FROM tb_categoria;

INSERT INTO tb_curso (nicho, curso, valor, horastotal, professor, categoria_id)
VALUE ("Tecnologia", "Back-end", 42.90, 50, "Martina",2);
INSERT INTO tb_curso (nicho, curso, valor, horastotal, professor, categoria_id)
VALUE ("Tecnologia", "Front-end", 39.90, 32, "Douglas",5);
INSERT INTO tb_curso (nicho, curso, valor, horastotal, professor, categoria_id)
VALUE ("Linguas", "Ingles", 95.40, 120, "Angela", 3);
INSERT INTO tb_curso (nicho, curso, valor, horastotal, professor, categoria_id)
VALUE ("Linguas", "Espanhol", 88.60, 90, "Carola", 4);
INSERT INTO tb_curso (nicho, curso, valor, horastotal, professor, categoria_id)
VALUE ("Linguas", "Japones", 39.20, 60, "Italo",2);
INSERT INTO tb_curso (nicho, curso, valor, horastotal, professor, categoria_id)
VALUE ("Artes", "Dança", 40.10, 45, "Bruno",5);
INSERT INTO tb_curso (nicho, curso, valor, horastotal, professor, categoria_id)
VALUE ("Artes", "Design digital", 28.00, 20, "Ruth", 1);
INSERT INTO tb_curso (nicho, curso, valor, horastotal, professor, categoria_id)
VALUE ("Finanças", "Economia", 22.30, 70, "André", 1);

SELECT * FROM tb_curso;
SELECT * FROM tb_categoria;

SELECT * FROM tb_curso WHERE valor > 50;
SELECT * FROM tb_curso WHERE valor >=3 AND valor <=60;
SELECT * FROM tb_curso WHERE curso LIKE "%j%";

SELECT * FROM tb_curso
INNER JOIN tb_categoria on tb_categoria.id = tb_curso.id;

SELECT * FROM tb_categoria
INNER JOIN tb_curso on tb_curso.categoria_id = tb_categoria.id
WHERE categoria_id=1;