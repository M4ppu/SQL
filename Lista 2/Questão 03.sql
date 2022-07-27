CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    remedios VARCHAR(255),
    controlado BOOLEAN,
    cosmeticos BOOLEAN
);

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	cliente VARCHAR(255),
    valor DECIMAL (5, 2),
    quantidade INT,
    categorias_id BIGINT,
    FOREIGN KEY(categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(remedios, controlado, cosmeticos)
VALUES ("Rosuvastatina", true, false),
("Dipirona", false, false),
("Multigrip", false, false),
("Allegra", false, false),
("Rivotril", true, false),
("Sabonete de Rosto", false, true),
("Luftal", false, false);

INSERT INTO tb_produtos(cliente, valor, quantidade, categorias_id)
VALUES ("Luiza", 39.99, 3, 4),
("Thyago", 29.99, 5, 2),
("Enzo", 59.99, 3, 5),
("Valentina", 49.99, 4, 7),
("Ana", 46.99, 1, 1),
("Nancy", 15.99, 5, 2),
("Angélica", 25.99, 2, 6);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

SELECT * FROM tb_categorias WHERE LOWER(remedios) LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE cosmeticos = true;