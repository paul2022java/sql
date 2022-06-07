CREATE DATABASE `PROV-PROD`;

USE `PROV-PROD`;

DROP DATABASE `PROV-PROD`;

/****************************************************************************************/

CREATE TABLE PROVEEDORES(
	-- numero INT NOT NULL AUTO_INCREMENT,
	numero INT NOT NULL,
	nombre VARCHAR(20) NOT NULL,
	domicilio VARCHAR(15) NOT NULL,
	localidad VARCHAR(20),
	PRIMARY KEY (numero)
	);


SELECT numero, nombre FROM proveedores;

SELECT * FROM PROVEEDORES;

DROP TABLE PROVEEDORES; /*Elimina la tabla y los datos*/

TRUNCATE TABLE PROVEEDORES; /*Elimina todos los datos y vuelve a 0 los autoincrementales*/

DELETE FROM proveedores;

ALTER TABLE `PROVEEDORES` ADD COLUMN `column` VARCHAR(12);
ALTER TABLE `PROVEEDORES` DROP COLUMN `column`;

INSERT INTO proveedores (numero, nombre, domicilio, localidad) VALUES (101, "Gomez", "Nazca 920", "Capital Federal");
INSERT INTO proveedores (numero, nombre, domicilio, localidad) VALUES (102, "Perez", "Argerich 1030", "Capital Federal");
INSERT INTO proveedores (numero, nombre, domicilio, localidad) VALUES (103, "Vazquez", "Sarmiento 450", "Ramos Mejía");
INSERT INTO proveedores (numero, nombre, domicilio, localidad) VALUES (104, "Lopez", "Alsina 720", "Avellaneda");


-- Registros con AUTO_INCREMENT
INSERT INTO proveedores (nombre, domicilio, localidad) VALUES ("Gomez", "Nazca 920", "Capital Federal");
INSERT INTO proveedores (nombre, domicilio, localidad) VALUES ("Perez", "Argerich 1030", "Capital Federal");
INSERT INTO proveedores (nombre, domicilio, localidad) VALUES ("Vazquez", "Sarmiento 450", "Ramos Mejía");
INSERT INTO proveedores (nombre, domicilio, localidad) VALUES ("Lopez", "Alsina 720", "Avellaneda");


SELECT * FROM proveedores
WHERE numero = 104;

DELETE FROM proveedores
WHERE numero = 104;


/****************************************************************************************/

CREATE TABLE PRODUCTOS(
	pnro INT NOT NULL,
	pnombre VARCHAR(20) NOT NULL,
	precio FLOAT NOT NULL,
	tamanio VARCHAR(20),
	localidad VARCHAR(15) NOT NULL,
	PRIMARY KEY (pnro)
	);

DROP TABLE productos;

SELECT * FROM productos;

INSERT INTO productos VALUE (001, "Talco", 5, "Chico", "Capital Federal");
INSERT INTO productos VALUE (002, "Talco", 7, "Mediano", "Capital Federal");
INSERT INTO productos VALUE (003, "Crema", 8, "Grande", "Ramos Mejía");
INSERT INTO productos VALUE (004, "Cepillo", 2, "Grande", "Avellaneda");
INSERT INTO productos VALUE (005, "Esmalte", 1.2, "Normal", "Chacarita");
INSERT INTO productos VALUE (006, "Shampoo", 4.5, "Chico", "Avellaneda");

INSERT INTO productos VALUE (007, "Jabon", 3, "Mediano", "La Plata");
INSERT INTO productos VALUE (008, "Alcohol", 4, "Grande", "San Telmo");
INSERT INTO productos VALUE (009, "Suavizante", 6.7, "Chico", "Mar del Plata");
	






/****************************************************************************************/

CREATE TABLE PROVPROD(
	numero INT NOT NULL,
	pnro INT NOT NULL,
	cantidad INT NOT NULL,
	PRIMARY KEY (numero, pnro),
	FOREIGN KEY (numero) REFERENCES PROVEEDORES (numero),
	FOREIGN KEY (pnro) REFERENCES PRODUCTOS (pnro)
	);

DROP TABLE provprod;

SELECT * FROM provprod;

INSERT INTO provprod VALUES (101, 001, 300);
INSERT INTO provprod VALUES (101, 002, 200);
INSERT INTO provprod VALUES (101, 003, 400);
INSERT INTO provprod VALUES (101, 004, 200);
INSERT INTO provprod VALUES (101, 005, 100);
INSERT INTO provprod VALUES (102, 001, 300);
INSERT INTO provprod VALUES (102, 002, 400);
INSERT INTO provprod VALUES (103, 002, 200);
INSERT INTO provprod VALUES (104, 002, 200);
INSERT INTO provprod VALUES (104, 004, 300);

-- Proveedor no existe, da error
INSERT INTO provprod VALUES (110, 004, 300);


-- Agregar restricción después de haber creado una tabla
ALTER TABLE `provprod` ADD CONSTRAINT `numero` FOREIGN KEY (`numero`) REFERENCES proveedores (`numero`) ON DELETE CASCADE;



/****************************************************************************************/
/****************************************************************************************/
/****************************************************************************************/


CREATE DATABASE `empleados`;

USE `empleados`;

CREATE TABLE departamentos(
	codigo INT NOT NULL,
	descripcion VARCHAR(20) NOT NULL,
	PRIMARY KEY (codigo)
);

SELECT * FROM departamentos;

DROP TABLE departamentos;

DELETE FROM departamentos
WHERE codigo = 100;

INSERT INTO departamentos (codigo, descripcion) VALUES (100, "RRHH");
INSERT INTO departamentos (codigo, descripcion) VALUES (101, "Finanzas");
INSERT INTO departamentos (codigo, descripcion) VALUES (102, "Sistemas");
INSERT INTO departamentos (codigo, descripcion) VALUES (103, "Tesoreria");

INSERT INTO departamentos VALUES (104, "Marketing");


/****************************************************************************************/

CREATE TABLE empleados(
	legajo INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(20) NOT NULL,
	domicilio VARCHAR(20) NOT NULL,
	localidad VARCHAR(20),
	codigo INT NOT NULL,
	PRIMARY KEY (legajo),
	FOREIGN KEY (codigo) REFERENCES departamentos(codigo)
);

ALTER TABLE `empleados` ADD CONSTRAINT `codigo` FOREIGN KEY (`codigo`) ON DELETE CASCADE;

ON DELETE CASCADE;
ON DELETE SET NULL;

SELECT * FROM empleados;

DELETE FROM empleados;

TRUNCATE TABLE empleados;

INSERT INTO empleados (nombre, domicilio, localidad, codigo) VALUES ("Gomez", "Nazca 920", "Capital Federal", 102);
INSERT INTO empleados (nombre, domicilio, localidad, codigo) VALUES ("Perez", "Argerich 1030", "Capital Federal", 100);
INSERT INTO empleados (nombre, domicilio, localidad, codigo) VALUES ("Vazquez", "Sarmiento 450", "Ramos Mejía", 102);
INSERT INTO empleados (nombre, domicilio, localidad, codigo) VALUES ("Lopez", "Alsina 720", "Avellaneda", 101);

INSERT INTO empleados (nombre, domicilio, localidad, codigo) VALUES ("Basualdo", "Azara 123", "Lanús", 104);




