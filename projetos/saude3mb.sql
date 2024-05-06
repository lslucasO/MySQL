create database saude;
use saude;

select * from dengue
where tp_sexo = 'F' and no_bairro_residencia;

select bairro, populacao
from bairros_recife
order by populacao desc;

select d.no_bairro_residencia, b.bairro, count(*) as casos, 
b.populacao, (count(*)/b.populacao) as taxa
from dengue d inner join bairros_recife b
on d.no_bairro_residencia = b.bairro
group by d.no_bairro_residencia, b.bairro, b.populacao
order by taxa desc;

describe dengue;
select no_bairro_residencia, count(*) as casos
from dengue
group by no_bairro_residencia
order by count(*) desc;


select no_bairro_residencia as bairro, 
(count(*)/(select count(*) from dengue where tp_sexo = 'F'))*100 as '%'
from dengue
where tp_sexo = 'F' 
group by no_bairro_residencia
order by 2 desc;

select no_bairro_residencia as bairro, (count(*) /
(select count(*) from dengue))*100 as '% mulheres'
from dengue
where tp_sexo='F';
group by no_bairro_residencia;



select (count(*)/(select count(*) from dengue where tp_sexo = 'F'))*100
from dengue
where tp_sexo = 'F' and no_bairro_residencia = 'IBURA'

select distinct no_bairro_residencia from dengue;


select * from dengue limit 10;
select distinct d.no_bairro_residencia as bairro
from dengue as d
order by bairro asc;






