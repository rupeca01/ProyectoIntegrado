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
desayuno VARCHAR(150),
almuerzo VARCHAR(150),
comidaa VARCHAR(150),
merienda VARCHAR(150),
cena VARCHAR(150), 
PRIMARY KEY(idComida),
FOREIGN KEY (idDieta) REFERENCES dieta (idDieta));

CREATE TABLE alimentos (
idAlimentos INT(9) NOT NULL AUTO_INCREMENT,
calorias INT(3) NOT NULL,
cantidad INT(3) NOT NULL, 
nombre VARCHAR(45) NOT NULL,
tipo_Alimentos VARCHAR(45) NOT NULL,
PRIMARY KEY(idAlimentos)); 

CREATE TABLE opciones (
idOpciones INT(9) NOT NULL AUTO_INCREMENT,
idDieta INT(9) NOT NULL,
desayuno1 VARCHAR(150),
desayuno2 VARCHAR(150),
desayuno3 VARCHAR(150),
desayuno4 VARCHAR(150),
desayuno5 VARCHAR(150),
desayuno6 VARCHAR(150),
desayuno7 VARCHAR(150),
almuerzo1 VARCHAR(150),
almuerzo2 VARCHAR(150),
almuerzo3 VARCHAR(150),
almuerzo4 VARCHAR(150),
almuerzo5 VARCHAR(150),
almuerzo6 VARCHAR(150),
almuerzo7 VARCHAR(150), 
comidaa1 VARCHAR(150),
comidaa2 VARCHAR(150),
comidaa3 VARCHAR(150),
comidaa4 VARCHAR(150),
comidaa5 VARCHAR(150),
comidaa6 VARCHAR(150),
comidaa7 VARCHAR(150),
merienda1 VARCHAR(150),
merienda2 VARCHAR(150),
merienda3 VARCHAR(150),
merienda4 VARCHAR(150),
merienda5 VARCHAR(150),
merienda6 VARCHAR(150),
merienda7 VARCHAR(150),
cena1 VARCHAR(150), 
cena2 VARCHAR(150), 
cena3 VARCHAR(150), 
cena4 VARCHAR(150), 
cena5 VARCHAR(150), 
cena6 VARCHAR(150), 
cena7 VARCHAR(150), 
PRIMARY KEY(idOpciones),
FOREIGN KEY (idDieta) REFERENCES dieta (idDieta));

CREATE TABLE fotos (
id INT NOT NULL AUTO_INCREMENT,
imagen LONGBLOB NOT NULL,
idUsuario INT(9),
FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
PRIMARY KEY (id));