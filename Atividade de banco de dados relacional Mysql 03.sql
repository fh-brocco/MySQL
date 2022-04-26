-- ATIVIDADE  01

create database db_generation_game_online;

use db_generation_game_online;

-- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária
create table tb_classes(
id bigint auto_increment,
racaPersonagem varchar(255) not null,
classePersonagem varchar(255) not null,
profissaoPersonagem varchar(255) not null,
primary key (id)
);
-- Insira 5 registros na tabela tb_classes.
insert tb_classes (racaPersonagem, classePersonagem,profissaoPersonagem) values ("Anão","Mestre","Ferreiro"),
("Elfo","Ladino","Ranger"),
("Humano","Cavaleiro","Aventureiro"),
("Orc","Warlord","Ladrão"),
("Dragonborn","Mago","Conjurador"),
("Beastkin","Guerreiro","Aventureiro"),
("Demon","Lord","Feiticeiro");

select * from tb_classes;

-- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária
create table tb_personagens  (
id bigint auto_increment,
nome varchar (255) not null,
nivel int not null,
atk int not null,
def int not null,
primary key (id),
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_classes (id)
);
-- Insira 8 registros na tabela tb_personagens
insert tb_personagens (nome, nivel,atk,def,categoria_id) 
values ("Beowulf", 70,2500,1500,3) ,
("Berend",65,3150,2100,1),
("Gaelin",180,4500,2300,2),
("Azog",50,2050,3000,4),
("Neredr",90,5500,3050,5),
("Kiog",60,1700,2100,6),
("Aragorn",85,4200,2700,3),
("Algra",200,3400,4000,7),
("Caellum",45,1200,1900,2);

select * from tb_personagens;

-- retorno de todes os personagens cujo poder de ataque seja maior do que 2000.
select * from tb_personagens where atk > 2000;
-- retorno de todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000
select * from tb_personagens where def between 1000 and 2000;
--  busca de todes os personagens que possuam a letra C no atributo nome
select * from tb_personagens where nome like '%c%';
-- unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
select * from tb_personagens inner join tb_classes on  tb_classes.id = tb_personagens.categoria_id ;
-- unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, 
-- onde traga apenas os personagens que pertençam a uma classe específica
select * from tb_personagens inner join tb_classes on  tb_classes.id = tb_personagens.categoria_id where profissaoPersonagem= "Aventureiro" ;


-- ATIVIDADE  02


create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_pizzas(
id bigint auto_increment,
tipoPizza varchar(255) not null,
recheioBorda boolean not null,
comAzeitonas boolean not null,
recheioExtra boolean not null,
primary key (id)
);

insert tb_pizzas (tipoPizza,recheioBorda,comAzeitonas,recheioExtra) values 
("Salgada",true,true,true),
("Doce",true,false,true),
("Veggie",true,false,true),
("Vegetariana",false,true,false);

select * from tb_pizzas;

create table tb_categorias  (
id bigint auto_increment,
saborPizza varchar (255) not null,
preco decimal(9,2) not null,
tamanho char(10) not null,
primary key (id),
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_pizzas (id)
);

insert tb_categorias  (saborPizza, preco,tamanho,categoria_id) 
values ("Calabresa", 35.00,"G",1) ,
("Prestígio",55.00,"M",2),
("Brocólis com alho",60.00,"P",4),
("Baiana",50.00,"M",1),
("Rúcula",40.00,"P",4),
("Kinder",90.00,"M",2),
("Milho Verde ",40.00,"M",3),
("Palmito",35.00,"G",3);

select * from tb_categorias;

select * from tb_categorias where preco > 45.00;

select * from tb_categorias where preco between 50.00 and 100.00;

select * from tb_categorias where saborPizza like '%m%';

select * from tb_categorias inner join tb_pizzas on  tb_pizzas.id = tb_categorias.categoria_id ;

select * from tb_categorias inner join tb_pizzas on  tb_pizzas.id = tb_categorias.categoria_id  where tipoPizza= "Vegetariana" ;


-- ATIVIDADE  03

create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
receitaMedica boolean not null,
primary key (id)
);

insert tb_categorias (tipo,receitaMedica) values 
("Comprimido",true),
("Diversos",false),
("Gotas",true),
("Suplemento",false),
("Curativos",false);

select * from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nomeRemedio varchar (255) not null,
preco decimal(9,2) not null,
qtProduto int not null,
desconto boolean not null,
primary key (id),
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

insert tb_produtos (nomeRemedio,preco,qtProduto,desconto,categoria_id) 
values ("Dipirona", 35.00,500,false,1) ,
("Hixizine",55.00,200,true,1),
("Bandagem",2.99,40,false,5),
("Fralda",52.99,100,true,2),
("Whey",81.30,80,false,4),
("Preservativo",9.99,30,false,2),
("Merthiolate",17.35,15,false,5),
("Luftal",8.55,42,true,3);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 5.00 and 60.00;

select * from tb_produtos where tb_produtos like '%c%';

select * from tb_produtos inner join tb_categorias on  tb_categorias.id = tb_produtos.categoria_id ;

select * from tb_produtos inner join tb_categorias on  tb_categorias.id = tb_produtos.categoria_id  where tipo = "Comprimido";


-- ATIVIDADE  04

create database db_cidade_das_carnes ;

use db_cidade_das_carnes ;

create table tb_categorias(
id bigint(5) auto_increment,
item varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categorias (item,ativo) values 
("Bovino",true),
("Aves",true),
("Suino",true),
("Outros",true);

select * from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(9,2) not null,
qtProduto int not null,
desconto boolean not null,
primary key (id),
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

insert tb_produtos (nome,preco,qtProduto,desconto,categoria_id) 
values ("Coxão Duro", 35.99,500,false,1) ,
("Patinho",52.99,200,true,1),
("Costela suina",29.99,40,false,3),
("Fraldinha Angus",61.99,100,true,1),
("Bacon",39.30,80,false,3),
("Asinha temperada",19.99,30,false,2),
("Peito de frango",17.99,15,false,2),
("Carvão",10.55,42,true,4);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 50.00 and 150.00;

select * from tb_produtos where nome like '%c%';

select * from tb_produtos inner join tb_categorias on  tb_categorias.id = tb_produtos.categoria_id ;

select * from tb_produtos inner join tb_categorias on  tb_categorias.id = tb_produtos.categoria_id  where item = "Suino";


-- ATIVIDADE  05


create database db_construindo_vidas ;

use db_construindo_vidas ;

create table tb_categorias(
id bigint(5) auto_increment,
item varchar(255) not null,
ativoestoque boolean not null,
primary key (id)
);

insert tb_categorias (item,ativoestoque ) values 
("Elétrica",true),
("Alvenaria",true),
("Pintura",true),
("Equipamentos",true),
("Segurança",true);

select * from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(9,2) not null,
qtProduto int not null,
desconto boolean not null,
primary key (id),
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

insert tb_produtos (nome,preco,qtProduto,desconto,categoria_id) 
values ("Fio 2,5mm",10.99,500,false,1) ,
("Tinta Branca 20L",65.99,100,false,3),
("Furadeira",159.99,40,false,4),
("Piso laminado",82.99,1100,true,2),
("Rolo p/ pintura",19.30,50,false,3),
("Saco cimento 50kg",32.99,200,false,2),
("Conjunto tomada 20A",17.99,28,false,1),
("Parafusadeira",299.90,50,true,4),
("Cinta com talabarte",202.00,20,false,5),
("Bota de segurança",80.00,30,false,5);

select * from tb_produtos;

select * from tb_produtos where preco > 100.00;

select * from tb_produtos where preco between 70.00 and 150.00;

select * from tb_produtos where nome like '%c%';

select * from tb_produtos inner join tb_categorias on  tb_categorias.id = tb_produtos.categoria_id ;

select * from tb_produtos inner join tb_categorias on  tb_categorias.id = tb_produtos.categoria_id  where item = "Pintura";


-- ATIVIDADE  06

create database db_curso_da_minha_vida ;

use db_curso_da_minha_vida ;

create table tb_categorias(
id bigint(5) auto_increment,
curso varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categorias (curso,ativo) values 
("Tecnologia",true),
("Design",true),
("Finanças",true),
("Negócios",true),
("Produtividade",true);

select * from tb_categorias;

create table tb_cursos (
id bigint auto_increment,
nomeCurso varchar (255) not null,
valorCurso decimal(9,2) not null,
tempoDuracao varchar (255) not null,
nivel varchar (255) not null,
primary key (id),
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

insert tb_cursos  (nomeCurso,valorCurso,tempoDuracao,nivel,categoria_id) 
values ("Java",100.99,"20h","Intermediário",1) ,
("Python",60.99,"16h","Básico",1),
("ReatcJS",159.99,"20h","Avançado",1),
("Gestão de risco",1000.00,"100h","Intermediário",4),
("UX & Design Thinking",600.30,"220h","Básico",2),
("Canva",800.99,"60h","Intermediário",2),
("Liderança",999.99,"180h","Avançado",4),
("Iso 9001",299.90,"8h","Avançado",5),
("Tabelas dinâmicas",202.00,"15h","Intermediário",5),
("Fundamentos de finanças",500.00,"30h","Básico",3);

select * from tb_cursos ; 

select * from tb_cursos  where valorCurso > 500.00;

select * from tb_cursos  where valorCurso between 600.00 and 1000.00;

select * from tb_cursos  where nomeCurso like '%j%';

select * from tb_cursos  inner join tb_categorias on  tb_categorias.id = tb_cursos .categoria_id ;

select * from tb_cursos  inner join tb_categorias on  tb_categorias.id = tb_cursos.categoria_id  where curso = "Tecnologia";


























