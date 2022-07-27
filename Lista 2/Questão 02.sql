CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(255),
    salgado_doce VARCHAR(255)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	cliente VARCHAR(255),
    azeitona BOOLEAN,
    cebola BOOLEAN,
    borda_recheada BOOLEAN,
    pizzas_id BIGINT,
    valor DECIMAL (5, 2),
    FOREIGN KEY(pizzas_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(sabor, salgado_doce)
VALUES ("4 Queijos", "Salgado"),
("Mussarela", "Salgado"),
("Portuguesa", "Salgado"),
("Calabresa", "Salgado"),
("Brigadeiro", "Doce");

INSERT INTO tb_pizzas(cliente, azeitona, cebola, borda_recheada, valor, pizzas_id)
VALUES ("Luiza", false, false, true, 59.99, 1),
("Thyago", false, false, true, 59.99, 1),
("Enzo", true, true, false, 79.99, 3),
("Valentina", true, true, 49.99, true, 4),
("Ana", false, true, false, 46.99, 2),
("Nancy", false, false, false, 49.99, 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;

SELECT * FROM tb_categorias WHERE LOWER(sabor) LIKE "%m%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.pizzas_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.pizzas_id = tb_categorias.id WHERE salgado_doce = "Doce";