CREATE DATABASE yosakoiBrasil;
USE yosakoiBrasil;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
dtNasc DATE,
email VARCHAR(45) CONSTRAINT chkEmail CHECK (email LIKE ('%@%')),
apelido VARCHAR(45),
senha VARCHAR(45)
);

CREATE TABLE comentarios(
idComentario INT,
tipo VARCHAR(45),
descricao VARCHAR(300),
fkUsuario INT,
FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario),
PRIMARY KEY (idComentario, fkUsuario)
);