use hospitalABC;

insert into especialidade (nm_especialidade) values	('oftalmologia');
insert into especialidade (nm_especialidade,ic_ativo) values('neuro',1);
insert into especialidade (nm_especialidade) values	('pediatria');
insert into especialidade  values	(not null,'odontologista',1);
insert into especialidade (nm_especialidade) values	('cardiopata');

insert into medico (nm_medico, id_medico_especialidade) values	('claudio',2);
insert into medico (nm_medico, id_medico_especialidade) values('fernando',1);
insert into medico (nm_medico, id_medico_especialidade) values('pedro',4);
insert into medico  values	(not null,3,'ricardo');
insert into medico (nm_medico, id_medico_especialidade) values('joao',2);

insert into paciente (nm_paciente, dt_nascimento_paciente) values	('junior',now());
insert into paciente (nm_paciente, dt_nascimento_paciente) values	('ferdinando',now());
insert into paciente (nm_paciente, dt_nascimento_paciente) values	('danilo',now());
insert into paciente  values	(not null,'gustavo',now());
insert into paciente (nm_paciente, dt_nascimento_paciente) values	('caio',now());

insert into telefone   (ddd,telefone,id_telefone_paciente)values(13, '99812345',1);
insert into telefone  values(not null, 13, '99823145', 2);
insert into telefone  values(not null, 11, '99823145', 2);
insert into telefone  values(not null, 55, '98415526', 3);
insert into telefone   (ddd,telefone,id_telefone_paciente)values(11, '98123984',4);

insert into consulta   (id_medico_consulta,id_paciente_consulta,dt_consulta_paciente)values(3,5,now());
insert into consulta  values(not null, 1,2,now());
insert into consulta   (id_medico_consulta,id_paciente_consulta,dt_consulta_paciente)values(2,1,now());
insert into consulta  values(not null, 1,3,now());
insert into consulta   (id_medico_consulta,id_paciente_consulta,dt_consulta_paciente)values(4,4,now());




select * from consulta;