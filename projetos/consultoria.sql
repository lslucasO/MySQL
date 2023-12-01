create database consultoria;
use consultoria;

create table projetos(
	idprojetos int unsigned not null auto_increment,
    nome varchar(45) not null,
    data_inicio date not null,
    data_fim date not null,
    valor double(6,2),
    gerente varchar(45),
    primary key(idprojetos),
    foreign key (idempresa) references empresa(idempresa),
    foreign key (idconsultor) references c(idconsultor),
);

insert into projetos(nome, data_inicio, data_fim, valor, gerente)
values(
	'Apoio Educa',
    '2020-08-10',
    '2023-11-12',
	4,
    'Lucas'
);

select * from projetos
where idconsultor = 1
order by nome;

create table consultor(
	idconsultor int unsigned not null auto_increment,
    nome varchar(45) not null,
    especialidade varchar(45), 
    cpf varchar(11),
	primary key (idconsultor)
);

insert into consultor(nome, especialidade, cpf)
values(
	'Rodrigo',
    'Administração',
    '11122200096'
);

select * from consultor;

create table empresa(
	idempresa int unsigned not null auto_increment,
	data_fundacao date not null,
    nome_socio varchar(100) not null,
	capital double(9,2),
	primary key (idempresa)
);

insert into empresa(data_fundacao, nome_socio, capital)
values(
	'2020-09-11',
    'Geraldo alckmin',
    2
);

select * from empresa;
