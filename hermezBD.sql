create database hermezBD;

use hermezBD;

/*
////////////////////
///////TABELAS//////
////////////////////
*/
create table Empresa(
emp_cod int primary key,
emp_nome varchar(20) not null,
emp_cnpj varchar(30) not null,
emp_senha varchar(29) not null
);

create table Funcionario(
fun_cod int primary key,
fun_nome varchar(30) not null,
fun_funcao varchar(15) not null,
fun_email varchar(30) not null,
fun_celular varchar(12) not null,
fun_senha varchar(29) not null,
emp_cod int,
foreign key(emp_cod) references Empresa(emp_cod)
);

create table Administrador(
adm_cod int,
foreign key(adm_cod) references Funcionario(fun_cod),
primary key(adm_cod),
adm_senha varchar(29)
);

create table Tecnico(
tec_cod int,
foreign key(tec_cod) references Funcionario(fun_cod),
primary key(tec_cod),
tec_senha varchar(29)
);

create table Status(
sta_cod int primary key,
sta_nome varchar(15) not null,
sta_valor int 
constraint sta_valor_umaseis CHECK(sta_valor between 1 and 6)
);

create table Chamado(
cha_cod int primary key,
cha_desc varchar(77) not null,
cha_dataInicio datetime not null,
cha_dataFim datetime,
cha_local varchar(20),
cha_titulo varchar(25),
cha_tipoServ varchar(11),
cha_prioridade int,
constraint cha_prio_umaquatro CHECK(cha_prioridade between 1 and 4),
fun_cod int,
foreign key (fun_cod) references Funcionario(fun_cod),
sta_cod int,
foreign key(sta_cod) references Status(sta_cod)
);
Alter table Chamado add tec_cod int;
alter table Chamado add foreign key (tec_cod) references Tecnico(tec_cod);