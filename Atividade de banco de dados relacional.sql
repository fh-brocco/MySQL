-- EXERCICIO 1

CREATE DATABASE db_recursos_humanos;

USE db_recursos_humanos;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    idade INT,
    area VARCHAR(255),
    cargo VARCHAR(255),
    salario FLOAT(9 , 2 ),
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome,idade,area,cargo,salario)
VALUES("Fernando",30,"Tecnologia","Gerente",7000.00),
("Michael",25,"Tecnologia","Desenvolvedor",5000.00),
("Israel",28,"Tecnologia","Desenvolvedor",5000.00),
("Maiar",19,"Tecnologia","Aprendiz",1200.00),
("Douglas",30,"Tecnologia","Desenvolvedor jr.",1900.00);

UPDATE tb_colaboradores 
SET 
    idade = 20
WHERE
    id = 4;

SELECT 
    *
FROM
    tb_colaboradores;

SELECT 
    nome, cargo, salario
FROM
    tb_colaboradores
WHERE
    salario < 2000;

SELECT 
    nome, cargo, salario
FROM
    tb_colaboradores
WHERE
    salario > 2000;




-- EXERCICIO 2

CREATE DATABASE db_e_commerce;

USE db_e_commerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    produto VARCHAR(255),
    preco FLOAT(9 , 2 ),
    garantia VARCHAR(255),
    categoria VARCHAR(255),
    quantidade INT(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto,preco,garantia,categoria,quantidade)
VALUES("Mouse",50.00,"1 ano","Periféricos",200),
("Teclado",250.00,"2 anos","Periféricos",150),
("Fone",280.00,"2 anos","Periféricos",59),
("Monitor",800.00,"3 anos","Periféricos",120),
("Mouse pad",40.00,"3 meses","Periféricos",70),
("Webcam",400.00,"2 ano","Periféricos",200),
("Fonte de alimentação",70.00,"1 ano","Periféricos",100),
("Caixa de som",250.00,"2 ano","Periféricos",80);

SELECT * FROM tb_produtos;

SELECT produto,categoria,preco FROM tb_produtos WHERE preco < 500;

SELECT produto,categoria,preco FROM tb_produtos WHERE preco > 500;

UPDATE tb_produtos SET garantia = "3 anos" WHERE id = 5;



-- EXERCICIO 3

CREATE DATABASE db_escola_estadual;

USE db_escola_estadual;

CREATE TABLE tb_estudantes( 
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT,
ano VARCHAR(255),
sala VARCHAR(255),
nota FLOAT(2,1),

PRIMARY KEY(id)
);

INSERT INTO tb_estudantes(nome,idade,ano,sala,nota)
VALUES("Fernando",16,"2º ano","Sala 2",8.0),
("Gabriel",16,"2º ano","Sala 5",6.0),
("Ana",15,"1º ano","Sala 5",9.0),
("Jéssica",14,"8º série","Sala 1",7.5),
("Carolina",15,"8º série","Sala 1",9.2),
("Marília",16,"2º ano","Sala 2",9.8),
("Mário",17,"3º ano","Sala 4",7.2),
("Juliana",17,"3º ano","Sala 4",7.0);

SELECT * FROM tb_estudantes;

SELECT nome,ano,nota FROM tb_estudantes WHERE nota < 7.0;

SELECT nome,ano,nota FROM tb_estudantes WHERE nota > 7.0;

UPDATE tb_estudantes SET ano = "1º ano" WHERE id = 2;