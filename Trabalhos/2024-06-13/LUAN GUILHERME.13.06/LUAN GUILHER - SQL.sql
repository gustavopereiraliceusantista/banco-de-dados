create database hospital;

use hospital;

CREATE TABLE Paciente (
    id_paciente INT PRIMARY KEY,
    nm_paciente VARCHAR(100),
    dt_nascimento_paciente DATE
);
CREATE TABLE Telefone (
    id_telefone INT PRIMARY KEY,
    id_paciente INT,
    id_paciente_telefone VARCHAR(60),
    nr_telefone VARCHAR(20),
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente)
);

CREATE TABLE Especialidade (
    id_especialidade INT PRIMARY KEY,
    nm_especialidade VARCHAR(100),
    ic_ativo BOOLEAN
);

CREATE TABLE Medico (
    id_medico INT PRIMARY KEY,
    id_medico_especialidade INT,
    nm_medico VARCHAR(100),
    FOREIGN KEY (id_medico_especialidade) REFERENCES Especialidade(id_especialidade)
);

CREATE TABLE Consulta (
    id_consulta INT PRIMARY KEY,
    id_paciente INT,
    id_medico INT,
    dt_consulta DATE,
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico)
);


INSERT INTO Paciente (id_paciente, nm_paciente, dt_nascimento_paciente) VALUES
(1, 'Maria Silva', '1985-06-15'),
(2, 'João Souza', '1978-12-22'),
(3, 'Ana Pereira', '1990-03-05'),
(4, 'Carlos Oliveira', '1982-11-19'),
(5, 'Beatriz Santos', '1995-08-30');

INSERT INTO Telefone (id_telefone, id_paciente, id_paciente_telefone, nr_telefone) VALUES
(1, 1, 'Maria Silva', '11987654321'),
(2, 2, 'João Souza', '11987654322'),
(3, 3, 'Ana Pereira', '11987654323'),
(4, 4, 'Carlos Oliveira', '11987654324'),
(5, 5, 'Beatriz Santos', '11987654325');


INSERT INTO Especialidade (id_especialidade, nm_especialidade, ic_ativo) VALUES
(1, 'Cardiologia', TRUE),
(2, 'Dermatologia', TRUE),
(3, 'Ginecologia', TRUE),
(4, 'Pediatria', TRUE),
(5, 'Ortopedia', TRUE);


INSERT INTO Medico (id_medico, id_medico_especialidade, nm_medico) VALUES
(1, 1, 'Dr. Pedro Cardoso'),
(2, 2, 'Dr. Ricardo Almeida'),
(3, 3, 'Dr. Felipe Nunes'),
(4, 4, 'Dr. Renata Oliveira'),
(5, 5, 'Dr. Julia Santos');


INSERT INTO Consulta (id_consulta, id_paciente, id_medico, dt_consulta) VALUES
(1, 1, 1, '2024-06-10'),
(2, 2, 2, '2024-06-11'),
(3, 3, 3, '2024-06-12'),
(4, 4, 4, '2024-06-13'),
(5, 5, 5, '2024-06-14');


