CREATE TABLE usuario (
idUsuario INT(9) NOT NULL AUTO_INCREMENT,
nombre VARCHAR(15) NOT NULL,
apellidos VARCHAR(30) NOT NULL,
correo VARCHAR(40) NOT NULL,
contraseña VARCHAR(15) NOT NULL,
altura DECIMAL(1) NOT NULL,
peso DECIMAL(3) NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
PRIMARY KEY (idUsuario));

CREATE TABLE dieta (
idDieta INT(9) NOT NULL AUTO_INCREMENT,
idUsuario INT(9) NOT NULL,
objetivo VARCHAR(40) NOT NULL,
fecha_inicio DATETIME NOT NULL,
fecha_finalizacion DATETIME NOT NULL,
PRIMARY KEY(idDieta),
CONSTRAINT usuario_dieta FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario));

