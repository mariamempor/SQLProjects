
show databases;
use psc_bua;
show tables;
describe aluno;
select * from aluno;
insert into aluno(nome_aluno, email_aluno, ra_aluno, altura, nacionalidade)
values("Andressa", "andressa@gmail.com", 345678, 1.70, default);
select * from aluno;
insert into aluno(nome_aluno, email_aluno, ra_aluno, altura, nacionalidade)
values("Caio", "caio@gmail.com", 349878, 1.79, "argentino"),("Adele","adele@gmail.com", 47654, 1.78,"argentino"), ("Gabi", "gabi@gmail.com", 866458, 1.67, default);
select * from aluno;
update aluno set nacionalidade = 'Peruana' where id_aluno = "7"; 
select * from aluno order by nome_aluno;
select nome_aluno, altura from aluno;
select * from aluno where altura > '1.70';
select nome_aluno, altura from aluno where altura > '1.70';
select * from aluno where altura between '1.65' and '1.70';
select count(altura) from aluno;
 select max(altura) from aluno;
 select min(altura) from aluno;
 select sum(altura) from aluno;
 
use psc_bua;
create table if not exists professor(
id_professor int auto_increment primary key,
nome_professor varchar(30) not null,
UF_professor varchar(2) not null,
telefone_professor bigint not null,
altura_professor decimal(3,2) not null 
);
show tables;
describe professor;

alter table professor add column id_aluno int;
alter table professor add constraint fk_AlunoProfessor id_aluno references aluno;
 
