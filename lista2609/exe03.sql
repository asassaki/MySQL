CREATE DATABASE DB_FARMACIA_BEM_ESTAR;
USE DB_FARMACIA_BEM_ESTAR;

CREATE TABLE TB_CATEGORIAS(
ID BIGINT AUTO_INCREMENT,
TIPO VARCHAR(255) NOT NULL,
FORMA VARCHAR(255) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE TB_PRODUTOS(
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(255) NOT NULL,
MARCA VARCHAR(255) NOT NULL,
DOSAGEM VARCHAR(255) NOT NULL,
VALOR DECIMAL (4,2) NOT NULL,
CATEGORIAS_ID BIGINT,
PRIMARY KEY (ID),
FOREIGN KEY (CATEGORIAS_ID) REFERENCES TB_CATEGORIAS(ID)
);

INSERT INTO TB_CATEGORIAS(TIPO,FORMA)
VALUES("ANALGÉSICO","COMPRIMIDO");
INSERT INTO TB_CATEGORIAS(TIPO,FORMA)
VALUES("ANALGÉSICO","LÍQUIDO");
INSERT INTO TB_CATEGORIAS(TIPO,FORMA)
VALUES("ANTIBIÓTICO","COMPRIMIDO");
INSERT INTO TB_CATEGORIAS(TIPO,FORMA)
VALUES("ANTIBIÓTICO","LÍQUIDO");
INSERT INTO TB_CATEGORIAS(TIPO,FORMA)
VALUES("COSMÉTICO","LÍQUIDO");

SELECT * FROM TB_CATEGORIAS;

INSERT INTO TB_PRODUTOS(NOME,MARCA,DOSAGEM,VALOR,CATEGORIAS_ID)
VALUES("BUSCOPAN","HYPERA PHARMA","20ML",16.88,2);
INSERT INTO TB_PRODUTOS(NOME,MARCA,DOSAGEM,VALOR,CATEGORIAS_ID)
VALUES("DORFLEX","SANOFI AVENTIS","10 COMPRIMIDOS",6.45,1);
INSERT INTO TB_PRODUTOS(NOME,MARCA,DOSAGEM,VALOR,CATEGORIAS_ID)
VALUES("AMOXICILINA","MEDLEY","100ML",11.89,4);
INSERT INTO TB_PRODUTOS(NOME,MARCA,DOSAGEM,VALOR,CATEGORIAS_ID)
VALUES("CIPROFLOXACINO","CIMED","14 COMPRIMIDOS",23.75,3);	
INSERT INTO TB_PRODUTOS(NOME,MARCA,DOSAGEM,VALOR,CATEGORIAS_ID)
VALUES("IBUPROFENO","MEDLEY","20ML",13.91,2);
INSERT INTO TB_PRODUTOS(NOME,MARCA,DOSAGEM,VALOR,CATEGORIAS_ID)
VALUES("SEDA LISO PERFEITO SHAMPOO","UNILEVER","325ML",12.25,5);
INSERT INTO TB_PRODUTOS(NOME,MARCA,DOSAGEM,VALOR,CATEGORIAS_ID)
VALUES("SEDA LISO PERFEITO CONDICIONADOR","UNILEVER","325ML",11.99,5);
INSERT INTO TB_PRODUTOS(NOME,MARCA,DOSAGEM,VALOR,CATEGORIAS_ID)
VALUES("PROTETOR SOLAR","LA ROCHE-POSAY","50G",80.99,5);

SELECT * FROM TB_PRODUTOS;

DELETE FROM TB_PRODUTOS WHERE ID = 5;
DELETE FROM TB_PRODUTOS WHERE ID = 6;

SELECT * FROM TB_PRODUTOS WHERE VALOR > 50.00;
SELECT * FROM TB_PRODUTOS WHERE VALOR > 5.00 AND VALOR < 60.00;
SELECT * FROM TB_PRODUTOS WHERE NOME LIKE "%C%";

SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON
TB_PRODUTOS.CATEGORIAS_ID = TB_CATEGORIAS.ID;

SELECT * FROM TB_PRODUTOS INNER JOIN TB_CATEGORIAS ON
TB_PRODUTOS.CATEGORIAS_ID = TB_CATEGORIAS.ID WHERE CATEGORIAS_ID = 5;

	