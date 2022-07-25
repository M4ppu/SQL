CREATE DATABASE db_lojinha;

USE db_lojinha;

 CREATE TABLE tb_produtos(
 id BIGINT auto_increment PRIMARY KEY,
 nome_produto VARCHAR(255),
 valor DECIMAL(8,2),
 quantidade INT,
 pagamento_cartao BOOLEAN
 
 -- PRIMARY KEY (id)
 );
 
 SELECT * FROM tb_produtos;
 
 INSERT INTO tb_produtos(nome_produto, valor, quantidade, pagamento_cartao)
 VALUES("Camiseta", 25.59, 5, true);
 
 INSERT INTO tb_produtos(nome_produto, valor, quantidade, pagamento_cartao)
 VALUES("Calça", 25.59, 5, true);
 
 UPDATE tb_produtos
 SET nome_produto = "Placa-Mãe"
 WHERE id = 1;
 
 UPDATE tb_produtos
 SET valor = 550, quantidade = 4, pagamento_cartao = false
 WHERE id = 1;
 
 UPDATE tb_produtos
 SET nome_produto = "Processador", valor = 1509.99, quantidade = 2, pagamento_cartao = true
 WHERE id = 2;

INSERT INTO tb_produtos(nome_produto, valor, quantidade, pagamento_cartao)
 VALUES("Memória RAM", 450.89, 5, true);
 
 INSERT INTO tb_produtos(nome_produto, valor, quantidade, pagamento_cartao)
 VALUES("Monitor", 1199.99, 15, true);
 
 INSERT INTO tb_produtos(nome_produto, valor, quantidade, pagamento_cartao)
 VALUES("Teclado", 99.99, 15, true);
 
 INSERT INTO tb_produtos(nome_produto, valor, quantidade, pagamento_cartao)
 VALUES("Mouse", 56.59, 15, false);
 
 INSERT INTO tb_produtos(nome_produto, valor, quantidade, pagamento_cartao)
 VALUES("Placa de vídeo", 3499.99, 3, true);
 
 INSERT INTO tb_produtos(nome_produto, valor, quantidade, pagamento_cartao)
 VALUES("Fonte", 650, 10, true);
 
  SELECT * FROM tb_produtos WHERE valor > 500;

 SELECT * FROM tb_produtos WHERE valor < 500;