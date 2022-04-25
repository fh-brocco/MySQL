create database db_quitanda;

use db_quitanda;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Legumes",true),
("Verduras",true),
("Hortaliças",true),
("Frutas",true),
("Variedades",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) 
values ("Abacaxi",15.00,50,4),
("Maça",5.99,150,4),
("Brócoli",10.00,200,2),
("Alface",2.99,50,2),
("Cenoura",3.50,250,1),
("Batata",7.99,300,1),
("Abobrinha",6.99,150,3),
("Aspargo",5.00,60,3),
("Alho",4.99,30,3),
("Kit churrasco",89.99,40,5);


select * from tb_produtos;

select * from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos where preco > 50;

select * from tb_produtos where nome like '%a%';

update tb_produtos set preco = 6.99 where id=2 ;

select * from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id;

