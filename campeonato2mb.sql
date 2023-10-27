create database campeonato2mb;
use campeonato2mb;

create table times(
	idtimes int unsigned not null auto_increment,
	nome varchar(45) not null,
	valor double not null,
	anodefundacao int(4) not null,
	primary key (idtimes)
);

insert into times(nome, valor, anodefundacao)
values(
	'Sport',
    200000,
    1900
);


select * from times
where valor <= 1000 and valor >= 100 and anodefundacao between 1840 and 1980;

select * from jogadores
where idtimes = 1
order by nome;

select jogadores.nome, times.nome, jogadores.salario
from times inner join jogadores on times.idtimes = jogadores.idtimes
order by jogadores.salario;


create table jogadores(
	idjogadores int unsigned not null auto_increment,
    nome varchar(45) not null,
    salario double not null,
    datanascimento date not null,
    idtimes int unsigned not null,
    primary key (idjogadores),
    foreign key (idtimes) references times(idtimes)
);

insert into jogadores(nome, salario, datanascimento, idtimes)
values(
	'Cristiano Ronaldo',
    23000000,
    '1975-06-30',
    1
);

select * from jogadores;

describe times;