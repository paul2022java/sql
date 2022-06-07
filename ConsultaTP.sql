CREATE TABLE Pedidos
(NUM_PEDIDO INT NOT NULL,
FECHA_PEDIDO DATE NOT NULL,
CLIE INT NOT NULL,
REP INT,
FAB CHAR(3) NOT NULL,
PRODUCTO CHAR(5) NOT NULL,
CANT INTEGER NOT NULL,
IMPORTE FLOAT NOT NULL,
PRIMARY KEY (NUM_PEDIDO));

ALTER TABLE Pedidos ADD CONSTRAINT FK_CLIE_PED FOREIGN KEY (CLIE) REFERENCES Clientes (NUM_CLIE);
ALTER TABLE Pedidos ADD CONSTRAINT FK_REP_PED FOREIGN KEY (REP) REFERENCES RepVentas (NUM_EMPL);
ALTER TABLE Pedidos ADD CONSTRAINT FK_FABPROD_PED FOREIGN KEY (FAB) REFERENCES Productos (ID_FAB);
ALTER TABLE Pedidos ADD CONSTRAINT FK_PROD_PED FOREIGN KEY (PRODUCTO) REFERENCES Productos (ID_PRODUCTO);

INSERT INTO Pedidos (NUM_PEDIDO, FECHA_PEDIDO, CLIE, REP, FAB, PRODUCTO, CANT, IMPORTE)
VALUES (58479, '1989-12-17', 2117, 106, 'REI', '2A44L', 7, 31500);

INSERT INTO Pedidos VALUES (1, '1990-01-11', 2111, 105, 'ACI', '41003', 35, 3745);
INSERT INTO Pedidos VALUES (2, '1990-01-03', 2101, 106, 'FEA', '114', 6, 1458);
INSERT INTO Pedidos VALUES (3, '1990-02-10', 2118, 108, 'QSA', 'XK47', 4, 1420);
INSERT INTO Pedidos VALUES (4, '1989-10-12', 2102, 101, 'ACI', '41004', 34, 3978);
INSERT INTO Pedidos VALUES (5, '1990-01-30', 2107, 110, 'ACI', '4100Z', 9, 22500);
INSERT INTO Pedidos VALUES (6, '1990-02-02', 2112, 108, 'REI', '2A44R', 10, 45000);
INSERT INTO Pedidos VALUES (7, '1989-12-17', 2103, 105, 'ACI', '41004', 28, 3276);
INSERT INTO Pedidos VALUES (8, '1990-01-14', 2118, 108, 'BIC', '41003', 1, 652);
INSERT INTO Pedidos VALUES (9, '1990-02-23', 2108, 109, 'FEA', '112', 10, 1480);
INSERT INTO Pedidos VALUES (10, '1990-01-08', 2124, 107, 'BIC', '41003', 1, 652);
INSERT INTO Pedidos VALUES (11, '1989-12-27', 2103, 105, 'ACI', '41004', 6, 702);
INSERT INTO Pedidos VALUES (12, '1990-01-20', 2114, 108, 'QSA', 'XK47', 20, 7100);
INSERT INTO Pedidos VALUES (13, '1990-02-24', 2124, 107, 'FEA', '114', 10, 2430);
INSERT INTO Pedidos VALUES (14, '1989-10-12', 2114, 102, 'ACI', '4100Z', 6, 15000);
INSERT INTO Pedidos VALUES (15, '1990-01-22', 2103, 105, 'ACI', '41002', 54, 4104);
INSERT INTO Pedidos VALUES (16, '1990-01-08', 2112, 108, 'IMM', '773C', 3, 2925);
INSERT INTO Pedidos VALUES (17, '1990-03-02', 2109, 107, 'IMM', '775C', 22, 31350);
INSERT INTO Pedidos VALUES (18, '1990-01-29', 2107, 110, 'REI', '2A45C', 8, 632);
INSERT INTO Pedidos VALUES (19, '1989-11-04', 2118, 108, 'ACI', '41002', 10, 760);
INSERT INTO Pedidos VALUES (20, '1989-10-12', 2111, 103, 'REI', '2A44G', 6, 2100);
INSERT INTO Pedidos VALUES (21, '1998-02-15', 2108, 101, 'ACI', '4100X', 6, 150);
INSERT INTO Pedidos VALUES (22, '1990-02-10', 2120, 102, 'IMM', '779C', 2, 3750);
INSERT INTO Pedidos VALUES (23, '1989-01-04', 2106, 102, 'REI', '2A45C', 24, 1896);
INSERT INTO Pedidos VALUES (24, '1990-02-27', 2106, 102, 'QSA', 'XK47', 6, 2130);
INSERT INTO Pedidos VALUES (25, '1990-02-25', 2108, 109, 'IMM', '779C', 3, 5625);
INSERT INTO Pedidos VALUES (26, '1990-02-10', 2118, 108, 'QSA', 'XK47', 2, 776);
INSERT INTO Pedidos VALUES (27, '1989-12-31', 2103, 105, 'ACI', '4100Y', 11, 27500);
INSERT INTO Pedidos VALUES (28, '1990-02-18', 2111, 103, 'ACI', '4100X', 24, 600);
INSERT INTO Pedidos VALUES (29, '1990-02-02', 2113, 101, 'REI', '2A44R', 5, 22500);



CREATE TABLE Oficinas
(OFICINA INT NOT NULL,
CIUDAD VARCHAR(15) NOT NULL,
REGION VARCHAR(10) NOT NULL,
DIR INT,
OBJETIVO FLOAT,
VENTAS FLOAT NOT NULL,
PRIMARY KEY (OFICINA));


ALTER TABLE Oficinas ADD CONSTRAINT FK_DIR_OF FOREIGN KEY (DIR) REFERENCES RepVentas(DIRECTOR);

INSERT INTO Oficinas VALUES (22, 'Denver', 'Oeste', 108, 300.000, 186.042);
INSERT INTO Oficinas VALUES (11, 'New York', 'Este', 106, 575.000, 692.637);
INSERT INTO Oficinas VALUES (12, 'Chicago', 'Este', 104, 800.000, 735.042);
INSERT INTO Oficinas VALUES (13, 'Atlanta', 'Este', 101, 350.000, 367.911);
INSERT INTO Oficinas VALUES (21, 'Los Angeles', 'Oeste', 108, 725.000, 835.915);



CREATE TABLE Clientes
(NUM_CLIE INT NOT NULL,
EMPRESA VARCHAR(20) NOT NULL,
REP_CLIE INT,
LIMITE_CREDITO FLOAT,
PRIMARY KEY (NUM_CLIE));


ALTER TABLE Clientes ADD CONSTRAINT FK_REP_CLIE_CLI FOREIGN KEY (REP_CLIE) REFERENCES RepVentas (NUM_EMPL);

INSERT INTO Clientes VALUES (2111, 'JCP Inc', 103, 50.000);
INSERT INTO Clientes VALUES (2102, 'Fisrt Corp', 101, 65.000);
INSERT INTO Clientes VALUES (2103, 'Acme Mfg', 105, 50.000);
INSERT INTO Clientes VALUES (2123, 'Carter & Sons', 102, 40.000);
INSERT INTO Clientes VALUES (2107, 'Ace International', 110, 35.000);
INSERT INTO Clientes VALUES (2115, 'Smithson Corp', 101, 20.000);
INSERT INTO Clientes VALUES (2101, 'Jones Mfg', 106, 65.000);
INSERT INTO Clientes VALUES (2112, 'Zetacorp', 108, 50.000);
INSERT INTO Clientes VALUES (2121, 'QMA Assoc', 103, 45.000);
INSERT INTO Clientes VALUES (2114, 'Orion Corp', 102, 20.000);
INSERT INTO Clientes VALUES (2124, 'Peter Brothers', 107, 40.000);
INSERT INTO Clientes VALUES (2108, 'Holm & Landis', 109, 55.000);
INSERT INTO Clientes VALUES (2117, 'J.P.Sinclair', 106, 35.000);
INSERT INTO Clientes VALUES (2122, 'Three-Way Lines', 105, 30.000);
INSERT INTO Clientes VALUES (2120, 'Rico Enterprises', 102, 50.000);
INSERT INTO Clientes VALUES (2106, 'Fred Lewis Corp', 102, 65.000);
INSERT INTO Clientes VALUES (2119, 'Solomon Inc', 109, 25.000);
INSERT INTO Clientes VALUES (2118, 'Midwest Systems', 108, 60.000);
INSERT INTO Clientes VALUES (2113, 'Ian & Schmith', 104, 20.000);
INSERT INTO Clientes VALUES (2109, 'Chen Associates', 103, 25.000);
INSERT INTO Clientes VALUES (2105, 'AAA Investments', 101, 45.000);



CREATE TABLE RepVentas
(NUM_EMPL INT NOT NULL,
NOMBRE VARCHAR(15) NOT NULL,
EDAD INT,
OFICINA_REP INT,
TITULO VARCHAR(10),
CONTRATO DATE NOT NULL,
DIRECTOR INT,
CUOTA FLOAT,
VENTAS FLOAT NOT NULL,
PRIMARY KEY (NUM_EMPL));


ALTER TABLE RepVentas ADD CONSTRAINT FK_DIRECTOR_RPV FOREIGN KEY (DIRECTOR) REFERENCES RepVentas (NUM_EMPL);
ALTER TABLE RepVentas ADD CONSTRAINT FK_OFICINA_REP_RPV FOREIGN KEY (OFICINA_REP) REFERENCES Oficinas (OFICINA);

INSERT INTO RepVentas VALUES (105, 'Bill Adams', 37, 13, 'Rep Ventas', '1988-02-12', 104, 350.000, 367.911);
INSERT INTO RepVentas VALUES (109, 'Mary Jones', 31, 11, 'Rep Ventas', '1999-10-12', 106, 300.000, 392.725);
INSERT INTO RepVentas VALUES (102, 'Sue Smith', 48, 21, 'Rep Ventas', '1986-12-10', 108, 350.000, 474.050);
INSERT INTO RepVentas VALUES (106, 'Sam Clark', 52, 11, 'VP Ventas', '1988-06-14', NULL, 275.000, 299.912);
INSERT INTO RepVentas VALUES (104, 'Bob Smith', 33, 12, 'Dir Ventas', '1987-05-19', 106, 200.000, 142.594);
INSERT INTO RepVentas VALUES (101, 'Dan Roberts', 45, 12, 'Rep Ventas', '1986-10-20', 104, 300.000, 305.673);
INSERT INTO RepVentas VALUES (110, 'Tom Snyder', 41, NULL, 'Rep Ventas', '1990-01-13', 101, NULL, 75.985);
INSERT INTO RepVentas VALUES (108, 'Larry Fitch', 62, 21, 'Dir Ventas', '1989-10-12', 106, 350.000, 361.865);
INSERT INTO RepVentas VALUES (103, 'Paul Cruz', 29, 12, 'Rep Ventas', '1987-03-01', 104, 275.000, 286.775);
INSERT INTO RepVentas VALUES (107, 'Nancy Angelli', 49, 22, 'Rep Ventas', '1988-11-14', 108, 300.000, 186.042);



CREATE TABLE Productos
(ID_FAB CHAR(3) NOT NULL,
ID_PRODUCTO CHAR(5) NOT NULL,
DESCRIPCION VARCHAR(20) NOT NULL,
PRECIO FLOAT NOT NULL,
EXISTENCIAS INT NOT NULL,
PRIMARY KEY (ID_FAB, ID_PRODUCTO));


INSERT INTO Productos VALUES ('REI', '2A45C', 'V Stago Trinquete', 79, 210);
INSERT INTO Productos VALUES ('ASI', '4100Y', 'Extractor', 2750, 25);
INSERT INTO Productos VALUES ('QSA', 'XK47', 'Reductor', 355, 38);
INSERT INTO Productos VALUES ('BIC', '41672', 'Plate', 180, 0);
INSERT INTO Productos VALUES ('IMM', '779C', 'Riostra 2-Tm', 1875, 9);
INSERT INTO Productos VALUES ('ACI', '41003', 'Articulo tipo 3', 107, 207);
INSERT INTO Productos VALUES ('ACI', '41004', 'Articulo tipo 4', 117, 139);
INSERT INTO Productos VALUES ('BIC', '41005', 'Manivela', 652, 3);
INSERT INTO Productos VALUES ('IMM', '887P', 'Perno Riostra', 250, 24);
INSERT INTO Productos VALUES ('QSA', 'XK48', 'Reductor', 134, 203);
INSERT INTO Productos VALUES ('REI', '2A44L', 'Bisagra Izqda', 4500, 12);
INSERT INTO Productos VALUES ('FEA', '112', 'Cubierta', 148, 115);
INSERT INTO Productos VALUES ('IMM', '887H', 'Soporte Riostra', 54, 223);
INSERT INTO Productos VALUES ('BIC', '41089', 'Retn', 225, 78);
INSERT INTO Productos VALUES ('ASI', '41001', 'Articulo tipo 1', 55, 277);
INSERT INTO Productos VALUES ('IMM', '775C', 'Riostra 1-Tm', 1425, 5);
INSERT INTO Productos VALUES ('ACI', '4100Z', 'Montador', 2500, 28);
INSERT INTO Productos VALUES ('QSA', 'XK48A', 'Reductor', 117, 37);
INSERT INTO Productos VALUES ('ACI', '41002', 'Articulo tipo 2', 76, 167);
INSERT INTO Productos VALUES ('REI', '2A44R', 'Bisagra Dcha', 4500, 12);
INSERT INTO Productos VALUES ('IMM', '773C', 'Riostra 1/2-Tm', 975, 28);
INSERT INTO Productos VALUES ('ACI', '4100X', 'Ajustador', 25, 37);
INSERT INTO Productos VALUES ('FEA', '114', 'Bancada Motor', 243, 15);
INSERT INTO Productos VALUES ('IMM', '887X', 'Retenedor Riostra', 475, 32);
INSERT INTO Productos VALUES ('REI', '2A44G', 'Pasador Bisagra', 350, 14);


-- 1) 1)Lista de las Oficinas de venta de la región Este con sus objetivos y ventas 
SELECT objetivo,ventas,region FROM oficinas WHERE region = 'Este';


-- 2)Lista de las Oficinas (con sus objetivos y ventas) de venta de la región Este, cuyas ventas exeden a sus objetivos, ordenadas en orden alfabético por ciudad
SELECT objetivo, ventas,region FROM oficinas WHERE region = "Este" AND ventas > objetivo ORDER BY ciudad;


3)¿Cuales son los objetivos y ventas promedio para las oficinas de la región Este?
SELECT AVG(objetivo) AS PromedioObjetivo, AVG (ventas) AS PromedioVentas FROM oficinas WHERE region = "Este";

-- 4)¿Cual es el nombre, cuota y ventas del empleado número 107? 
SELECT nombre,cuota,ventas FROM repventas WHERE num_empl = 107; 


-- 5)Lista de la ciudad, la region y el importe por encima o por debajo del objetivo para cada oficina
SELECT ciudad,region,ventas FROM oficinas; 


-- 6)Mostrar el valor de inventario para cada producto
SELECT descripcion,precio FROM productos;


-- 7)Hallar los vendedores contratados antes de 1988
SELECT num_empl,nombre,edad,contrato FROM repventas WHERE contrato < "1988-0-0"; 


-- 8)Lista de las oficinas cuyas ventas están por debajo del 80% del objetivo
SELECT *FROM oficinas WHERE venta<(objetivo/100)*80;


-- 9)Lista de los pedidos comprendidos entre 01 de Octubre de 1989 y el 31 de Diciembre de 1989
SELECT * FROM pedidos WHERE fecha_pedido >= '1989-10-01' AND fecha_pedido <= '1989-12-31';


-- 10)Hallar todos los pedidos obtenidos por cuatro vendedores específicos (107,109,101,103)
SELECT *FROM pedidos WHERE rep IN (101, 103, 107, 109);