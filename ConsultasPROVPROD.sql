-- TP ejercicios de la Filmina Unidad nª4

-- 1) Obtener los detalles completos de todos los productos.
SELECT * FROM productos;


-- 2) Obtener los detalles completos de todos los proveedores de Capital.
SELECT * FROM proveedores
WHERE localidad = "Capital Federal";


-- 3) Obtener todos los envíos en los cuales la cantidad está entre 200 y 300.
SELECT * FROM `provprod`
WHERE cantidad >= 200 AND cantidad <= 300;


-- 4) Obtener los números de los productos enviados por algún proveedor de Avellaneda.
SELECT pp.pnro, prove.localidad
FROM productos prod, proveedores prove, provprod pp
WHERE pp.numero = prove.numero AND prod.pnro = pp.pnro AND prove.localidad = "Avellaneda";


-- 5) Obtener la cantidad total del producto 001 enviado por el proveedor 103
SELECT DISTINCT (pp.cantidad) "cantidad total" 
FROM productos pro, proveedores prove ,provprod pp
WHERE pp.pnro = 1 AND pp.numero = 103;



-- 6) Obtener los números de productos y localidades en la cual la segunda letra del nombre de la localidad sea A.
SELECT pro.pnro, pro.localidad
FROM productos pro
WHERE pro.localidad LIKE "_A%";



-- 7) Obtener los precios de los productos enviados por el proveedor 102.
SELECT pro.precio
FROM productos pro, proveedores prove, provprod pp
WHERE pp.numero = 102 AND pp.pnro = pro.pnro;


-- 8)Construir una lista de todas las localidades en las cuales esté situado por lo menos un proveedor o un producto.

SELECT pro.localidad
FROM productos pro
UNION
SELECT prove.localidad
FROM proveedores prove;


-- 9) Cambiar a “Chico” el tamaño de todos los productos medianos.
UPDATE productos SET tamanio = "Chico" WHERE tamanio = "mediano";



-- 10) Eliminar todos los productos para los cuales no haya envíos.
DELETE FROM productos 
WHERE pnro NOT IN (SELECT pnro FROM provprod);



-- 11)Insertar un proveedor(107). El nombre y la localidad son Rosales y Wilde, el domicilio nose conoce todavía.
INSERT INTO proveedores VALUES (107, "Rosales", "" , "Wilde");
