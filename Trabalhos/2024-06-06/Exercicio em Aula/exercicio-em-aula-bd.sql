create database exercicio_em_aula;

use exercicio_em_aula;

create table aluno (
id_aluno INT NOT NULL auto_increment,
cpf_aluno INT(11) NOT NULL,
rg_aluno VARCHAR(20) NOT NULL,
CONSTRAINT pk_id_aluno PRIMARY KEY(id_aluno)
);

create table curso (
id_curso INT NOT NULL auto_increment,
nm_curso VARCHAR(20) NOT NULL,
carga_horaria INT(2) NOT NULL,
valor_cheio decimal(8) NOT NULL,
CONSTRAINT pk_id_curso PRIMARY KEY(id_curso)
);

create table telefone (
id_tel INT NOT NULL auto_increment,
ddd INT(2),
nmr_tel INT(9),
CONSTRAINT pk_id_tel PRIMARY KEY(id_tel)
);

create table estado (
id_uf INT NOT NULL auto_increment,
uf VARCHAR(2) NOT NULL,
desc_uf VARCHAR(15) NOT NULL,
CONSTRAINT pk_id_uf PRIMARY KEY(id_uf)
);

create table aluno_curso (
id_aluno_curso INT NOT NULL,
id_curso_aluno INT NOT NULL,
dt_inicio_aluno_curso DATETIME NOT NULL,
dt_conclusao_aluno_curso DATETIME NOT NULL,
desconto FLOAT NOT NULL,
CONSTRAINT fk_id_aluno_curso FOREIGN KEY (id_aluno_curso) REFERENCES aluno(id_aluno),
CONSTRAINT fk_id_curso_aluno FOREIGN KEY (id_curso_aluno) REFERENCES curso(id_curso)
);