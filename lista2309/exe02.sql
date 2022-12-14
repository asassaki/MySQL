CREATE DATABASE DB_ECOMMERCE;

USE DB_ECOMMERCE;

CREATE TABLE TB_PRODUTOS(
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(1000),
COR CHAR(250),
TAMANHO CHAR(250),
QUANTIDADE INT,
PRECO DECIMAL (5,2),
PRIMARY KEY (ID)
);

INSERT INTO TB_PRODUTOS (NOME,COR,TAMANHO,QUANTIDADE,PRECO)
VALUES ("BOLSA CAIRO","MARROM","M",7,300.00);
INSERT INTO TB_PRODUTOS (NOME,COR,TAMANHO,QUANTIDADE,PRECO)
VALUES ("BOLSA TOKYO","BRANCO","P",5,400.00);
INSERT INTO TB_PRODUTOS (NOME,COR,TAMANHO,QUANTIDADE,PRECO)
VALUES ("BOLSA LONDON","CINZA","G",10,600.00);
INSERT INTO TB_PRODUTOS (NOME,COR,TAMANHO,QUANTIDADE,PRECO)
VALUES ("BOLSA NEW YORK","PRETO","M",8,700.00);
INSERT INTO TB_PRODUTOS (NOME,COR,TAMANHO,QUANTIDADE,PRECO)
VALUES ("BOLSA PARIS","VERMELHO","P",6,400.00);
INSERT INTO TB_PRODUTOS (NOME,COR,TAMANHO,QUANTIDADE,PRECO)
VALUES ("BOLSA SEOUL","AZUL","G",3,550.00);
INSERT INTO TB_PRODUTOS (NOME,COR,TAMANHO,QUANTIDADE,PRECO)
VALUES ("BOLSA MOSCOW","BEGE","M",10,400.00);
INSERT INTO TB_PRODUTOS (NOME,COR,TAMANHO,QUANTIDADE,PRECO)
VALUES ("BOLSA HAVANA","VERDE","P",4,800.00);

SELECT * FROM TB_PRODUTOS;

SELECT * FROM TB_PRODUTOS WHERE PRECO > 500.00;
SELECT * FROM TB_PRODUTOS WHERE PRECO < 500.00;