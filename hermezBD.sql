create database hermezBD;

use hermezBD;

drop database hermezBD;
/*
////////////////////
///////TABELAS//////
////////////////////
*/
create table Empresa(
emp_cod int auto_increment primary key,
emp_nome varchar(20) not null,
emp_cnpj varchar(30) not null,
emp_senha binary(72) not null
);

create table Cargo(
car_cod int auto_increment primary key,
car_desc varchar(23)
);

create table Funcionario(
fun_cod int auto_increment primary key,
fun_nome varchar(30) not null,
fun_funcao varchar(15) not null,
fun_email varchar(30) not null,
fun_celular varchar(12) not null,
emp_senha binary(72) not null,
car_cod int,
emp_cod int,
foreign key(emp_cod) references Empresa(emp_cod),
foreign key(car_cod) references Cargo(car_cod)
-- key emp_cod(emp_cod)
);

/*
create table Administrador(
adm_cod int,
foreign key(adm_cod) references Funcionario(fun_cod),
-- key adm_cod(fun_cod)
primary key(adm_cod),
adm_senha varchar(29)
);

create table Tecnico(
tec_cod int,
foreign key(tec_cod) references Funcionario(fun_cod),
primary key(tec_cod),
tec_senha varchar(29)
);
*/

create table Status(
sta_cod int primary key,
sta_nome varchar(15) not null,
sta_valor int 
constraint sta_valor_um_a_seis CHECK(sta_valor between 1 and 6)
);

create table Chamado(
cha_cod int auto_increment primary key,
cha_desc varchar(690) not null,
cha_dataInicio datetime not null,
cha_dataFim datetime,
cha_local varchar(20),
cha_titulo varchar(25),
cha_tipoServ varchar(11),
fun_cod int,
sta_cod int,
tec_cod int,
cha_prioridade int,
constraint cha_prio_um_a_quatro CHECK(cha_prioridade between 1 and 4),
foreign key (fun_cod) references Funcionario(fun_cod),
foreign key(sta_cod) references Status(sta_cod),
-- foreign key (tec_cod) references Tecnico(tec_cod)
foreign key(tec_cod) references Funcionario(fun_cod)
);