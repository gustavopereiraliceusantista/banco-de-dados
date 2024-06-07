create database exercicio_tabelas;

use  exercicio_tabelas;


CREATE TABLE aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cpf VARCHAR(11) NOT NULL,
    rg VARCHAR(9) NOT NULL
);

CREATE TABLE curso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    carga_horaria INT NOT NULL,
    valor DECIMAL(10, 2) NOT NULL
);

CREATE TABLE AlunoCurso (
    id_aluno INT NOT NULL,
    curso VARCHAR(255) NOT NULL,
    dt_inicio DATE NOT NULL,
    dt_conclusao DATE NOT NULL,
    valor_pago DECIMAL(5, 2) NOT NULL
);

CREATE TABLE Telefone (
    id_tel INT AUTO_INCREMENT PRIMARY KEY,
    ddd INT NOT NULL,
    numero_telefone VARCHAR(15) NOT NULL
);

CREATE TABLE estado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    uf VARCHAR(2) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE MaiorTabela (
    aluno INT NOT NULL,
    curso VARCHAR(255) NOT NULL,
    data_inicio DATE NOT NULL,
    data_conclusao DATE NOT NULL,
    uf VARCHAR(2) NOT NULL,
    id_tel INT,
    PRIMARY KEY (aluno, curso, data_inicio)
);
