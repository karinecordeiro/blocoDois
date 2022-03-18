CREATE database db_ecommerce;
use db_ecommerce;
Create table tb_produtos (
id bigint auto_increment,
nome varchar(50) not null,
estoque boolean,
quantidade int(10) not null,
valor decimal(10,2),
primary key(id)
);

select * from tb_produtos;

insert into tb_produtos (nome, estoque, quantidade, valor) values ("Livros", true, 23, 34.87);

select * from tb_produtos;

insert into tb_produtos (nome, estoque, quantidade, valor) values ("100 Folhas A4", true, 7, 4.80);
insert into tb_produtos (nome, estoque, quantidade, valor) values ("500 Folhas A4", true, 9, 21.32);
insert into tb_produtos (nome, estoque, quantidade, valor) values ("Lapis", true, 75, 2.34);
insert into tb_produtos (nome, estoque, quantidade, valor) values ("Canetas", true, 62, 3.23);
insert into tb_produtos (nome, estoque, quantidade, valor) values ("Cadernos 1 Matéria", true, 21, 14.00);
insert into tb_produtos (nome, estoque, quantidade, valor) values ("Cadernos 10 Matérias", true, 3, 31.22);
insert into tb_produtos (nome, estoque, quantidade, valor) values ("Borracha", true, 12, 1.37);

select * from tb_produtos;

select * from tb_produtos where valor >500.00;
select * from tb_produtos where valor <500.00;

update tb_produtos set estoque = false, quantidade= 0 where id = 7;

select * from tb_produtos;