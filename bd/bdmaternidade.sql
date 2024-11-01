create database bdmaternidade;
use bdmaternidade;
create table mae(
id_mae int,
rg varchar(10),
endereco varchar(200),
telefone varchar(20),
dt_nascimento date);

alter table mae add constraint PK_Mae primary key(id_mae);
alter table mae modify id_mae int auto_increment;
desc mae;

create table medico(
crm int auto_increment,
nome varchar(120),
telefone varchar(20),
especialidade varchar(100),
constraint PK_Medico primary key(crm));


create table bebe(
id_bebe int auto_increment,
nome varchar(100),
dt_nascimento date,
peso float(5,2),
altura int,
crm int not null,
id_mae int not null,
constraint PK_bebe primary key(id_bebe),
constraint FK_MaeBebe foreign key(id_mae) references mae(id_mae));












