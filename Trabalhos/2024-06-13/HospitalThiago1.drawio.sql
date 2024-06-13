create database hospital;
use hospital;

create table telefone
(
	id_telefone int not null auto_increment PRIMARY KEY,
    DDD tinyint null, 
    nm_telefone int null,
    id_paciente_telefone int not null,
    CONSTRAINT fk_id_paciente_telefone FOREIGN KEY (id_paciente_telefone) REFERENCES paciente(id_paciente)
    
);

create table paciente
(
    id_paciente int not null auto_increment PRIMARY KEY, 
    nm_paciente text not null,
    dt_nascimento_paciente datetime not null
   
);

create table consulta
(
	id_medico int not null auto_increment PRIMARY KEY,
    nm_medico text not null,
	Id_medico_consulta int not null,
    id_paciente_consulta int not null,
	CONSTRAINT fk_Id_medico_consulta FOREIGN KEY (Id_medico_consulta) REFERENCES medico(id_medico),
	CONSTRAINT fk_Id_paciente_consulta FOREIGN KEY (Id_paciente_consulta) REFERENCES paciente(id_paciente)
    
);

create table medico 
(
    id_medico int not null auto_increment PRIMARY KEY,
    id_medico_especialidade int not null,
    nm_medico text not null,
    CONSTRAINT fk_id_medico_especialidade FOREIGN KEY (id_medico_especialidade) REFERENCES especialidade(id_especialidade)

); 


create table especialidade 
(
    id_especialidade int not null auto_increment PRIMARY KEY, 
    nm_especialidade text not null, 
    ic_ativo tinyint null default 1 
    
);
