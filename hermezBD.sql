create database hermezBD;

use hermezBD;

/*
////////////////////
///////TABELAS//////
////////////////////
*/
create table Empresa(
    emp_cod int auto_increment primary key,
    emp_nome varchar(30) not null,
    emp_cnpj varchar(30) not null,
    emp_senha varchar(60) not null,
    emp_email varchar(50) not null
);

create table Cargo(
    car_cod int primary key,
    car_desc varchar(30)
);

create table Funcionario(
    fun_cod int auto_increment primary key,
    fun_nome varchar(30) not null,
    fun_funcao varchar(20) not null,
    fun_email varchar(30) not null,
    fun_celular varchar(15) not null,
    fun_senha varchar(60) not null,
    car_cod int,
    emp_cod int,
    fun_dataNasc date,
    foreign key(emp_cod) references Empresa(emp_cod),
    foreign key(car_cod) references Cargo(car_cod)
    -- key emp_cod(emp_cod)
    -- key car_cod(car_cod)
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
    sta_nome varchar(20) not null,
    sta_valor int 
    constraint sta_valor_um_a_seis CHECK(sta_valor between 1 and 6)
);

create table Tipo_Servico(
ser_cod int primary key,
ser_nome varchar(31),
ser_prioridade int
);

create table Chamado(
cha_cod int auto_increment primary key,
cha_desc varchar(690) not null,
cha_dataInicio datetime not null,
cha_dataFim datetime,
cha_local varchar(32),
cha_titulo varchar(30),
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

alter table Chamado add ser_cod int;
alter table Chamado add foreign key (ser_cod) references Tipo_Servico(ser_cod);

alter table Chamado add emp_cod int;
alter table Chamado add foreign key (emp_cod) references Empresa(emp_cod);

alter table Chamado alter sta_cod set default 1;
alter table Chamado alter cha_prioridade set default 2;

alter table Chamado add ct_cod int;
alter table Chamado add foreign key (ct_cod) references Chat(ct_cod);
-- alter table Chamado add key ct_cod(ct_cod);

alter table Chamado add arq_cod int;
alter table Chamado add foreign key (arq_cod) references Arquivo(arq_cod);
-- alter table Chamado add key arq_cod(arq_cod);


create table Chat(
ct_cod int primary key auto_increment,
ct_status boolean default true
);

create table Arquivo(
arq_cod int primary key auto_increment,
arq_caminho varchar(200) not null
);

create table Mensagem(
msg_cod int primary key auto_increment,
msg_texto varchar(500) not null,
fun_cod int,
ct_cod int,
arq_cod int,
foreign key (fun_cod) references Funcionario(fun_cod),
-- key fun_cod(fun_cod)
foreign key (ct_cod) references Chat(ct_cod),
-- key ct_cod(ct_cod)
foreign key (arq_cod) references Arquivo(arq_cod)
-- key arq_cod(arq_cod) 
);

alter table Mensagem add msg_dataEnv datetime;

create table Perguntas(
per_cod int auto_increment primary key,
per_desc varchar(120) not null,
per_resposta varchar(160) not null
);

alter table Perguntas add emp_cod int;
alter table Perguntas add foreign key (emp_cod) references Empresa(emp_cod);
-- alter table Perguntas add key emp_cod(emp_cod);

/*
////////////////////
///////INSERT///////
////////////////////
*/

insert into Status values (1, "Aberto", 1), (2,"Em andamento",2), (3,"Reaberto",3), (4,"Cancelado",4), (5,"Concluído",5), (6,"Fechado",6);

insert into Tipo_Servico values (1,"manuntenção de cpu",2),(2,"consertar sua placa-mãe",3),(3,"reestabelecer internet",4),(4,"computador quebrou",4),(5,"computador lento",1);
insert into Tipo_Servico values (6,"Outros.",2);

insert into Cargo values (1, "Funcionario"), (2, "Técnico"), (3, "Administrador");