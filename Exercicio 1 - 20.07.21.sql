/*Exercicio 1 - 20.07.2020
*Autora: JGMR - Turma 28
*/

-- query são códigos que vamos utilizar para criar ou consultar//

create database db_rhempresa; -- criacao de base de dados 
use db_rhempresa; -- representação de qual base será utilizada

create table tb_atributos( -- crição de dados que serão inseridos para cada funcionario 
id int(5) auto_increment,
nome varchar(30) not null, -- not null serve para mostrar que é um dado fundamental 
ativo boolean, 
cargo varchar(20) not null,
salario real not null,
primary key(id)
); 

insert into tb_atributos(nome, ativo, cargo, salario) values ("Janaina", true, "gerente", 2800.00); -- inserção de dados de cada funcionário
insert into tb_atributos(nome, ativo, cargo, salario) values ("Hudson", false, "sub-gerente", 2300.50);
insert into tb_atributos(nome, ativo, cargo, salario) values ("Elo", true, "adm. de maquinas", 2050.00);
insert into tb_atributos(nome, ativo, cargo, salario) values ("Sara", true, "adm. de equipes", 1890.50);
insert into tb_atributos(nome, ativo, cargo, salario) values ("Marcelo", false, "adm. de lojas", 1550.50);
insert into tb_atributos(nome, ativo, cargo, salario) values ("Maria Eloisa", true, "CEO", 5800.00);

SELECT * FROM db_rhempresa.tb_atributos; -- exibir a tabela preenchida

SELECT * FROM tb_atributos where salario >= 2000.00; -- exibe os salários maiores ou iguais R$2.000,00
SELECT * FROM tb_atributos where salario < 2000.00; -- exibe os salários menores de R$2.000,00

update tb_atributos set ativo = true where id = 2; -- altera/atualiza - update seleciona a tabela, set seleciona a coluna e where o ID
update tb_atributos set salario = 1999.00 where id = 4; 

SELECT * FROM tb_atributos -- puxa os dados da tabela
-- código finalizado 