use hospital;

insert into telefone values (not null, 21, 27534433, 1);
insert into telefone values (not null, 13, 25945761, 2);
insert into telefone values (not null, 51, 31283688, 3);
insert into telefone values (not null, 54, 36196487, 4);
insert into telefone values (not null, 12, 37282588, 5);
select * from telefone;

insert into paciente values (not null, 'Paulo', now);
insert into paciente values (not null, 'maria', now);
insert into paciente values (not null, 'thiago', now);
insert into paciente values (not null, 'afonso', now);
insert into paciente values (not null, 'pereira', now);
select * from paciente;

insert into consulta values (not null, 'louro', 1, 5);
insert into consulta values (not null, 'silvio', 2, 6);
insert into consulta values (not null, 'ana', 3, 7);
insert into consulta values (not null, 'carol', 4, 8);
insert into consulta values (not null, 'paulo', 5, 9);
select * from consulta;

insert into medico values (not null, 1, 'louro');
insert into medico values (not null, 2, 'silvio');
insert into medico values (not null, 3, 'ana');
insert into medico values (not null, 4, 'carol');
insert into medico values (not null, 5, 'paulo');
select * from medico;

insert into especialidade values (not null, 'odonto', 1);
insert into especialidade values (not null, 'dentista', 2);
insert into especialidade values (not null, 'geral', 3);
insert into especialidade values (not null, 'cirugiao', 5);
insert into especialidade values (not null, 'nennum', 4);
select * from especialidade;