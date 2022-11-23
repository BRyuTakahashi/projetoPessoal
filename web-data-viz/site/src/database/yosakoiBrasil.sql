-- DROP DATABASE yosakoiBrasil;
-- DROP TABLE usuario;
-- TRUNCATE TABLE usuario;

CREATE DATABASE yosakoiBrasil;
USE yosakoiBrasil;

CREATE TABLE grupo(
idGrupo INT PRIMARY KEY,
nome VARCHAR(45),
endereco VARCHAR(50)
);

CREATE TABLE placar(
idPlacar INT PRIMARY KEY AUTO_INCREMENT,
pontuacao INT,
fkUsuario INT,
FOREIGN KEY (fkUsuario) REFERENCES usuario (idUsuario)
);

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
apelido VARCHAR(45),
email VARCHAR(45) CONSTRAINT chkEmail CHECK (email LIKE ('%@%')),
senha VARCHAR(45),
fkGrupo INT,
FOREIGN KEY (fkGrupo) REFERENCES grupo (idGrupo)
);

SELECT * FROM usuario;
SELECT * FROM grupo;

SELECT * FROM usuario
	JOIN grupo ON fkGrupo = idGrupo;

DESC usuario;

SHOW TABLES;

INSERT INTO grupo VALUES
	(0, 'Nenhum Grupo', null),
    (1, 'Ishin Yosakoi Soran', 'Rua Hadock Lobo 35'),
    (2, 'Kitsume', 'Rua José Dantas Magalhães Glória'),
    (3, 'Shinsei ACAL', 'Avenida Liberdade');
    
INSERT INTO usuario VALUE
	(null ,'bruno', 'brownin', 'bruno@sptech', '1234', 2);