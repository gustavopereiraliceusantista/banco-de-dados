create table paciente
(
    id_paciente int not null auto_increment, 
    nm_paciente text not null,
    dt_nascimento_paciente datetime not null,
    dt_consulta_paciente datetime not null,
    id_medico_consulta_paciente int not null,
    nr_telefone_paciente text not null,
    nr_telefone_paciente_2 text not null,
    nr_telefone_paciente_3 text not null,
    nr_telefone_paciente_4 text not null
    
)


create table medico (
    id_medico int not null auto_increment primary key,
    id_medico_especialidade int not null,
    nm_medico text not null,
    CONSTRAINT fk_medico_especialidade FOREIGN KEY References especialidade(id)

);


create table especialidade (

    id_especialidade int not null auto_increment PRIMARY KEY, 
    nm_especialidade text not null, 
    ic_ativo tinyint null default 1
);