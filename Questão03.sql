CREATE DATABASE db_registoEscola;

USE db_registoEscola;

 CREATE TABLE tb_alunos(
 id BIGINT auto_increment PRIMARY KEY,
 nome VARCHAR(255),
 idade INT(2),
 nota DECIMAL (2, 2),
 aprovado BOOLEAN
 );
 
 SELECT * FROM tb_alunos;
 
 ALTER TABLE tb_alunos
 MODIFY COLUMN nota DECIMAL(4, 2);
 
 INSERT INTO tb_alunos (nome, idade, nota, aprovado)
 VALUES ("Luiza", 15, 8.9, true),
 ("Thyago", 37, 5.90, false),
 ("Maria", 15, 6.90, false),
 ("Cleide", 14, 7.00, true),
 ("Vanessa", 16, 9.00, true),
 ("Tiago", 16, 8.50, true),
 ("Enzo", 15, 3.40, false),
 ("Valentina", 14, 8.20, true); 
 
 SELECT * FROM tb_alunos WHERE nota < 7;
 
 SELECT * FROM tb_alunos WHERE nota > 7;