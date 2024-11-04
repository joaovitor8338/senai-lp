create database bdclinica;
use bdclinica;

create table sala(
numero_sala int auto_increment check(numero_sala > 1 and numero_sala < 50),
andar int not null check(andar < 12),
constraint PK_Numero_Sala primary key(numero_sala)
);


create table medicos(
CRM int auto_increment,
nome varchar(40) not null,
idade int check(idade < 23),


);















