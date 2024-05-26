UPDATE [Destino de tabla_empleado]
SET email = LOWER(email);

-- Concatenar nombres y apellidos para tener un campo de nombre completo
ALTER TABLE [Destino de tabla_empleado]
ADD nombre_completo AS (nombre + ' ' + apellido1 );