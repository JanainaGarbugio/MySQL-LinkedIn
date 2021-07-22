/*Exercicio 3 - 20.07.2020
*Autora: JGMR - Turma 28
*/
create database db_regescolar;

use db_regescolar;

create table tb_dadosalunes(
Id int(5) auto_increment,
Nome varchar(30),
Idade int(2) not null,
Série int(2) not null,
Turno varchar(10),
Escola varchar(30),
Primary Key (id) 
);

insert into tb_dadosalunes (Nome, Idade, Série, Turno, Escola) values ("Ana Carolina Alves", 13, 8, "Manhã", "E.V. Generation Br"); 
ALTER TABLE tb_dadosalunes MODIFY Série varchar(10); -- mudança de int para varchar

insert into tb_dadosalunes (Nome, Idade, Série, Turno, Escola) values ("Babafemi", 11, 6, "tarde", "E.V. Generation Br"); 
insert into tb_dadosalunes (Nome, Idade, Série, Turno, Escola) values ("Ghedi", 17, 3, "Manhã", "E.V. Generation Br"); 
insert into tb_dadosalunes (Nome, Idade, Série, Nota, Turno, Escola) values ("Ngozi", 6, 1, "tarde", "E.V. Generation Br"); 
insert into tb_dadosalunes (Nome, Idade, Série, Nota, Turno, Escola) values ("Maya", 2, "Primário", 8, "Manhã", "E.V. Generation Br"); 
insert into tb_dadosalunes (Nome, Idade, Série, Nota, Turno, Escola) values ("Adimu", 3, "Primário", 10, "Manhã", "E.V. Generation Br"); 
insert into tb_dadosalunes (Nome, Idade, Série, Nota, Turno, Escola) values ("Niara", 7, "1ª série", 9.9, "Manhã", "E.V. Generation Br"); 

UPDATE db_regescolar.tb_dadosalunes SET Série = "1ª série", Nota = 8.7 WHERE (Id = 4);
UPDATE db_regescolar.tb_dadosalunes SET Id = 5, Nota = 7.6 WHERE (Id = 19);
UPDATE db_regescolar.tb_dadosalunes SET Série = "3º col" WHERE (Id = 3);
UPDATE db_regescolar.tb_dadosalunes SET Série = "6ª série" WHERE (Id = 2);
UPDATE db_regescolar.tb_dadosalunes SET Série = "8ª série" WHERE (Id = 1);
UPDATE db_regescolar.tb_dadosalunes SET Id = 6 WHERE (Id = 20);
UPDATE db_regescolar.tb_dadosalunes SET Id = 7 WHERE (Id = 21);

ALTER TABLE tb_dadosalunes ADD Nota double; -- inserção da coluna Nota
ALTER TABLE tb_dadosalunes MODIFY COLUMN Nota int AFTER Série;

SELECT * FROM tb_dadosalunes where nota >= 7.0; -- exibe as notas maiores ou iguais a 7.0
SELECT * FROM tb_dadosalunes where nota < 7.0; -- exibe as notas menores de 7.0

update tb_dadosalunes set nota = 10.0 where id = 9; -- mudança de nota
update tb_dadosalunes set nota = 7.0 where id = 1; -- mudança de nota 

-- Código finalizado