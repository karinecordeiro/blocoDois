CREATE database db_RH;
use db_RH;
Create table tb_funcionarios (
id bigint auto_increment,
nome varchar(50) not null,
ativo boolean,
tempo int(10) not null,
salario decimal(10,2),
primary key(id)
);

select * from tb_funcionarios;

insert into tb_funcionarios (nome, ativo, tempo, salario) values ("Maria Aparecida", true, 2, 2353.23);

select * from tb_funcionarios;

insert into tb_funcionarios (nome, ativo, tempo, salario) values ("José da Silva", true, 1, 1785.56);
insert into tb_funcionarios (nome, ativo, tempo, salario) values ("Leonardo Ferreira", false, 1, 1645.78);
insert into tb_funcionarios (nome, ativo, tempo, salario) values ("Angela Faria", true, 8, 7845.87);
insert into tb_funcionarios (nome, ativo, tempo, salario) values ("Barbará Dias", true, 3, 2841.45);

select * from tb_funcionarios;

select * from tb_funcionarios where salario >2000.00;
select * from tb_funcionarios where salario <2000.00;

update tb_funcionarios set ativo = true where id = 3;

select * from tb_funcionarios;
