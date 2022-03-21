CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id bigint auto_increment,
nivel int,
classe varchar (255),
habilidade varchar(255),
arma varchar (255),

primary key(id)
);

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
id bigint auto_increment,
nome varchar(255),
raca varchar(255),
vida int,
defesa int,
ataque int,
classe_id bigint,

primary key(id),
foreign key (classe_id) references tb_classe (id)
);

SELECT * FROM tb_personagem;

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES (99, "Guerreiro", "Pericia em armas", "Espada de duas mãos");
INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES (200, "Mago", "Resistência a Magia", "Cajado");
INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES (100, "Ladino", "Mãos leves", "Adaga");
INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES (149, "Arqueiro", "Arquerismo", "Arco e flecha");
INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES (50, "Bardo", "Lábia", "Alaude");


INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id)
VALUES ("Cleison","Anão", 1500, 3000, 12000,1);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id)
VALUES ("Josias","Elfo Negro", 1000, 1200, 3000, 5);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id)
VALUES ("Vanuza","Centauro", 5000, 700, 7500, 2);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id)
VALUES ("Cleide","Humana", 500, 6000, 2000, 3);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id)
VALUES ("Ariel","Construto", 2000, 8800 , 4000, 4);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id)
VALUES ("Anitta","Elfa", 2500, 6000, 8000, 3);

SELECT * FROM tb_classe;
SELECT * FROM tb_personagem;

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa >=1000 AND defesa <=2000;
SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT * FROM tb_personagem
INNER JOIN tb_classe on tb_classe.id = tb_personagem.id;

SELECT * FROM tb_classe
INNER JOIN tb_personagem on tb_personagem.classe_id = tb_classe.id
WHERE classe_id=3;