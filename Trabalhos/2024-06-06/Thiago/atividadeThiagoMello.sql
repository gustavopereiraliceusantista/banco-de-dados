create database Aluno;
use Aluno;

CREATE TABLE Aluno (
	id_Aluno int not null auto_increment,
	Nome Text not null,
	Cpf int not null, 
	Rg int not null,
    CONSTRAINT pk_id_aluno PRIMARY KEY (id_aluno)
);

CREATE TABLE Uf (
	id_uf int not null auto_increment,
	UF tinyint not null, 
	Descrição_uf text not null,
    CONSTRAINT pk_id_uf PRIMARY KEY (id_uf)
);

CREATE TABLE Curso (
	id_curso int not null auto_increment,
	Nome Text not null,
	Cargahoraria int not null,
	Valorsemdesconto int not null,
    CONSTRAINT pk_id_curso PRIMARY KEY (id_curso)
);

CREATE TABLE Telefone (
	Id_tele int not null auto_increment,
	DDD tinyint not null,
	Telefone int not null,
    CONSTRAINT pk_id_tele PRIMARY KEY (id_telefone)
);

CREATE TABLE AlunoCurso (
	id_aluno int not null,
	id_curso int not null,
	id_inicio int not null,
	id_termino int not null,
    CONSTRAINT fk_id_aluno_curso FOREIGN KEY (id_aluno_curso) REFERENCES aluno(id_aluno),
    CONSTRAINT fk_id_curso_aluno FOREIGN KEY (id_curso_aluno) REFERENCES curso(id_curso),
);
