Rascunho aula 1 - BD

use clinica;

select * from medicos;

select nome, idade from medicos;

select * from medicos where idade > 30 and especialidade = 'pediatria';

select count(*) from medicos;

select especialidade from medicos;

select distinct especialidade from medicos;

select idade from medicos order by idade;