/*Exercicio 2 - 20.07.2020
*Autora: JGMR - Turma 28
*/

use db_sneakers;
create table tb_estoque(
id int(5) auto_increment,
modelo varchar(20), 
numeracao int(2), 
cor varchar(60) not null,
qtd int(5) not null,
primary key (id)
);

ALTER TABLE tb_estoque ADD marca varchar (10); -- crição de dados que serão inseridos na tabela
ALTER TABLE tb_estoque ADD versao int;
ALTER TABLE tb_estoque ADD colecao varchar(20);
ALTER TABLE tb_estoque ADD loja_saída varchar(20);
ALTER TABLE tb_estoque ADD Valor double;

ALTER TABLE tb_estoque CHANGE id id int FIRST; -- comando para mudar a posição das colunas na tabela 
ALTER TABLE tb_estoque MODIFY COLUMN qtd int AFTER valor;
ALTER TABLE tb_estoque MODIFY COLUMN loja_saída varchar(20) AFTER valor;

ALTER TABLE tb_estoque DROP COLUMN versao; -- exclusão de uma coluna da tabela 

ALTER TABLE tb_estoque MODIFY cor varchar(60); -- mudança de quantidade do varchar 
ALTER TABLE tb_estoque MODIFY id int auto_increment not null; -- inserção do not null 


insert into tb_estoque(modelo, numeracao, cor, qtd, marca, versao, colecao, loja_saída) values ("SB", 36, "branco", 3, "Nike", 2, "colors", "JGMRSneakers");
insert into tb_estoque(modelo, numeracao, cor, qtd, marca, versao, colecao, loja_saída) values ("SB", 36, "vermelho", 3, "Nike", 2, "colors", "JGMRSneakers");
insert into tb_estoque(modelo, numeracao, cor, qtd, marca, versao, colecao, loja_saída) values ("SB", 37, "branco", 5, "Nike", 2, "colors", "JGMRSneakers");
insert into tb_estoque(marca, modelo, numeracao, cor, colecao, valor, loja_saída, qtd) values ("Nike", "Shox", 36, "branco e prata", "mandrake", 550.00, "JGMRSneakers", 3);
insert into tb_estoque(marca, modelo, numeracao, cor, colecao, valor, loja_saída, qtd) values ("Nike", "Shox", 37, "branco e roxo", "mandrake", 600.00, "JGMRSneakers", 3);
insert into tb_estoque(marca, modelo, numeracao, cor, colecao, valor, loja_saída, qtd) values ("Nike", "Air Force", 36, "animal print", "SPSelvadePedra", 890.00, "JGMRSneakers", 3);
insert into tb_estoque(marca, modelo, numeracao, cor, colecao, valor, loja_saída, qtd) values ("Nike", "Air Force", 37, "lion print", "SPSelvadePedra", 980.00, "JGMRSneakers", 3);
insert into tb_estoque(marca, modelo, numeracao, cor, colecao, valor, loja_saída, qtd) values ("Nike", "Jordan", 36, "Grey and white", "Dunk", 1890.00, "JGMRSneakers", 3);
insert into tb_estoque(marca, modelo, numeracao, cor, colecao, valor, loja_saída, qtd) values ("Nike", "Jordan", 36, "Off-White", "Jordan 4", 2890.00, "JGMRSneakers", 3);
insert into tb_estoque(marca, modelo, numeracao, cor, colecao, valor, loja_saída, qtd) values ("Adidas", "Stan Smith", 36, "White/green", "/// Stan.co", 490.00, "JGMRSneakers", 3);
insert into tb_estoque(marca, modelo, numeracao, cor, colecao, valor, loja_saída, qtd) values ("Converse", "Golf le Fleur", 36, "Purple and grey", "GolfLF", 790.00, "JGMRSneakers", 3);

SELECT * FROM tb_estoque where valor >= 500.00; -- exibe os tênis com valor maiores ou iguais R$500,00
SELECT * FROM tb_estoque where valor < 500.00; -- exibe os tênis com valor menores de R$500,00

update tb_estoque set valor = 930.00 where id = 9; -- mudança de valor 

-- código finalizado