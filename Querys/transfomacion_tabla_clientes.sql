-- Convertir todos los nombres a mayúsculas
UPDATE [Destino de tabla_Clientes]
SET nombre_cliente = UPPER(nombre_cliente);

-- Eliminar espacios en blanco al inicio y al final de los nombres
UPDATE [Destino de tabla_Clientes]
SET nombre_cliente = LTRIM(RTRIM(nombre_cliente));
