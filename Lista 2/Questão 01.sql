CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255),
    se_mexe BOOLEAN
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255),
    peso DECIMAL (5, 2),
    altura DECIMAL (5, 2),
    ataque_base INT,
    genero CHAR,
    classe_id BIGINT,
    FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(categoria, se_mexe)
VALUES ("Mago", true),
("Lutador", true),
("Suporte", true),
("Tanque", true),
("Assassino", true),
("Atirador", true);

INSERT INTO tb_personagens(nome, peso, altura, ataque_base, genero, classe_id)
VALUES ("LeBlanc", 55, 1.7, 1785, "F", 5),
("Garen", 95, 1.95, 2025, "M", 2),
("Vel'Koz", 0, 9.14, 1925, "M", 1),
("Lux", 58, 1.69, 1855, "F", 1),
("Leona", 75, 1.85, 2100, "F", 4),
("Jhin", 72, 1.93, 1855, "M", 6),
("Nami", 85, 1.67, 1785, "F", 3),
("Yuumi", 4, 0.23, 1925, "F", 3);

SELECT * FROM tb_personagens WHERE ataque_base > 2000;

SELECT * FROM tb_personagens WHERE LOWER(nome) LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.id = 3;