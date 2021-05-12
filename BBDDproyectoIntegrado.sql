CREATE TABLE usuario (
idUsuario INT(9) NOT NULL AUTO_INCREMENT,
idDieta INT(9) NOT NULL,
nombre VARCHAR(15) NOT NULL,
apellidos VARCHAR(30) NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
sexo VARCHAR(15) NOT NULL,
correo VARCHAR(40) NOT NULL,
contraseña VARCHAR(15) NOT NULL,
altura DECIMAL(4) NOT NULL,
peso DECIMAL(4) NOT NULL,
PRIMARY KEY (idUsuario));

CREATE TABLE dieta (
idDieta INT(9) NOT NULL AUTO_INCREMENT,
idUsuario INT(9) NOT NULl,
objetivo VARCHAR(40) NOT NULL,
fecha_inicio DATETIME NOT NULL,
fecha_finalizacion DATETIME NOT NULL,
PRIMARY KEY(idDieta),
CONSTRAINT usuario_dieta FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario));

CREATE TABLE comida (
idComida INT(9) NOT NULL AUTO_INCREMENT,
idDieta INT(9) NOT NULL,
PRIMARY KEY(idComida),
FOREIGN KEY (idDieta) REFERENCES dieta (idDieta));

CREATE TABLE alimentos (
idAlimentos INT(9) NOT NULL AUTO_INCREMENT,
idComida INT(9) NOT NULL,
calorias INT(3) NOT NULL,
cantidad INT(3) NOT NULL, 
nombre VARCHAR(45) NOT NULL,
tipo_Alimentos VARCHAR(45) NOT NULL,
PRIMARY KEY(idAlimentos),
FOREIGN KEY (idComida) REFERENCES comida (idComida));

