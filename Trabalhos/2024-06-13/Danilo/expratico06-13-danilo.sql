create database hospitalABC ;

use hospitalABC;

create table paciente
(
    id_paciente int not null auto_increment, 
    nm_paciente text not null,
    dt_nascimento_paciente datetime not null,
	constraint pk_id_paciente primary key (id_paciente)
);

create table especialidade (

    id_especialidade int not null auto_increment , 
    nm_especialidade text not null, 
    ic_ativo tinyint null default 1,
    constraint pk_id_especialidade primary key (id_especialidade)
);

create table medico (
    id_medico int not null auto_increment,
    id_medico_especialidade int not null,
    nm_medico text not null,
    constraint pk_id_medico primary key (id_medico),
    CONSTRAINT fk_medico_especialidade FOREIGN KEY (id_medico_especialidade) references especialidade(id_especialidade)

);

create table telefone (
	id_telefone int not null auto_increment,
    ddd tinyint  null,
    telefone int null,
    id_telefone_paciente int not null,
    constraint pk_id_telefone primary key (id_telefone),
    CONSTRAINT fk_telefone_paciente FOREIGN KEY (id_telefone_paciente) references paciente(id_paciente)
);

create table consulta (
	id_consulta int not null auto_increment,
    id_medico_consulta int not null,
    id_paciente_consulta int not null,
    dt_consulta_paciente datetime not null,
	constraint pk_id_consulta primary key (id_consulta),
    CONSTRAINT fk_paciente_consulta FOREIGN KEY (id_paciente_consulta) references paciente(id_paciente),
     CONSTRAINT fk_medico_consulta FOREIGN KEY (id_medico_consulta) references medico(id_medico)
    
);

