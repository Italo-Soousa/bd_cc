-- Exercicios 1

-- Buscar o nome e o CPF dos médicos com menos de 40 anos ou com especialidade diferente de traumatologia 
select nome, cpf 
from medicos 
where idade >= 40 or especialidade in ('traumatologia');

-- Buscar todos os dados das consultas marcadas no período da tarde após o dia 19/06/2006
select *
from consultas 
where hora > '12:00:00' and data > "2006-06-19";

-- Buscar o nome e a idade dos pacientes que não residem em Florianópolis
select nome, idade 
from pacientes 
where cidade != "Florianopolis";

-- Buscar a hora das consultas marcadas antes do dia 14/06/2024 e depois do dia 20/12/2024
select hora 
from consultas 
where hora < "2024-06-14" and hora > "2024-12-20";

-- Buscar o nome e a idade (em meses) dos pacientes
select nome, idade * 12 
from pacientes;

-- Em quais cidades residem os funcionários?
select distinct(cidade)
from funcionarios; 

-- Qual o menor e o maior salário dos funcionários da Florianópolis?
select max(salario), min(salario)
from funcionarios;

--  Qual o horário da última consulta marcada para o dia 13/06/2024?
select max(hora)
from consultas
where data = "2024-06-13";

-- Qual a média de idade dos médicos e o total de ambulatórios atendidos por eles?
select avg(idade)
from medicos;

select count(nroa)
from ambulatorios;

-- Buscar o código, o nome e o salário líquido dos funcionários. O salário líquido é obtido pela diferença entre o salário cadastrado menos 20% deste mesmo salário
