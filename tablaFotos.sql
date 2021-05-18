CREATE TABLE fotos (
	id INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(45) NOT NULL,
	imagen LONGBLOB NOT NULL,
	idUsuario INT(9),
	FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
	PRIMARY KEY (id));