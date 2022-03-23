CREATE database db_registroescolar;
use db_registroescolar;
Create table tb_estudantes (
id bigint auto_increment,
nome varchar(50) not null,
ano varchar(20) not null,
aula varchar(20),
nota decimal(10,1),
primary key(id) 
);

select * from tb_estudantes;

insert into tb_estudantes (nome, ano, aula, nota) values ("João Pedro", "1º Ano","Matemática", 7.1);

select * from tb_estudantes;

insert into tb_estudantes (nome, ano, aula, nota) values ("Maria Heloisa", "2º Ano","Português", 8.8);
insert into tb_estudantes (nome, ano, aula, nota) values ("Ricardo Santos", "1º Ano","História", 5.2);
insert into tb_estudantes (nome, ano, aula, nota) values ("Renata Souza", "3º Ano","Matemática", 7.8);
insert into tb_estudantes (nome, ano, aula, nota) values ("Cassia Silva", "3º Ano","Geografia", 4.8);
insert into tb_estudantes (nome, ano, aula, nota) values ("Joana Ferreira", "2º Ano","História", 9.3);
insert into tb_estudantes (nome, ano, aula, nota) values ("Edgar Morais", "3º Ano","Ciências", 6.4);
insert into tb_estudantes (nome, ano, aula, nota) values ("Ana Luiza", "1º Ano","Português", 8.8);

select * from tb_estudantes;

select * from tb_estudantes where nota >7.0;
select * from tb_estudantes where nota <7.0;

update tb_estudantes set ano = "Aprovado" where id= 4;
update tb_estudantes set ano = "Reprovado" where id= 5;
update tb_estudantes set ano = "Reprovado" where id= 7;

select * from tb_estudantes;