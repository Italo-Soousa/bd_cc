-- Exemolo de " between "

select * from medicos where idade <= 40 and idade >= 20;

select * from medicos where idade between 20 and 40;

select * from consultas where hora between "00:00:00" and "12:00:00";

-- Exemplo de " in "

select * 
from medicos 
where cidade = 'Florianopolis'
or cidade = 'Joinville';

select * 
from medicos 
where cidade in ('Florianopolis', 'Joinville');

select * 
from medicos 
where cidade not in ('Florianopolis', 'Joinville');

-- Exemplo de ' like '

select * 
from medicos 
where nome like '%a%'; -- vai achar tudo quem tem 'a'

select * 
from medicos 
where nome like 'a%'; -- pega tudo que começa com 'a'

select * 
from medicos 
where nome like '_____a%'; -- vai achar uma palavra para poder que tenha o tamanho do "_" e termina com 'a' 

-- Exemplo de Junção

select *
from medicos as m, consultas as c
where m.codm = c.codm and especialidade in ('ortopedia', 'pediatria');

select * 
from medicos as m
join consultas as c on  m.codm = c.codm and especialidade in ('ortopedia', 'pediatria');

