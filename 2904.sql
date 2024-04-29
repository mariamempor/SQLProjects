create database if not exists psc_bua;
use psc_bua;
show databases;
create table if not exists Aluno(
id_aluno int auto_increment primary key,
nome_aluno varchar(30) not null,
email_aluno varchar(30) not null,
ra_aluno varchar(10) not null,
altura decimal(3,2) not null,
nacionalidade varchar(30) default 'Brasileiro' 
);
alter table aluno add column naturalidade varchar(30) not null;
describe aluno;
alter table aluno drop column naturalidade;
alter table aluno modify column ra_aluno int not null;

insert into aluno(nome_aluno, email_aluno, ra_aluno, altura, nacionalidade) values("Eduarda", "eduarda@gmail.com", 14253698, 1.70, default), ("Ronaldo", "ronaldo@gmail.com", 12345566, 1.78, "Chileno");
