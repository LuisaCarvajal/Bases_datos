SELECT 
    -- Selecciona las columnas que deseas de cada tabla
    dfp.cantidad,
    dfp.fecha_entrega,
    dfp.fecha_pedido,
    dfp.Id_cliente,
    dfp.Id_empleado,
    dfp.Id_oficina,
    dfp.id_pedido,
    dfp.Id_producto,
    dfp.total_venta,
    de.apellido1,
    de.email,
    de.nombre,
    de.puesto,
    dp.código_Producto,
    dp.nombre AS nombre_producto,
    dp.precio_proveedor,
    dp.precio_venta,
    dp.proveedor,
    dcli.dia AS dia_cliente,
    dcli.Nombre_cliente,
    dcli.Teléfono,
    dt.año,
    dt.dia AS dia_tiempo,
    dt.mes AS mes_tiempo
FROM 
    Destino_de_DIM_factura_pedido 
INNER JOIN 
    Destino_de_DIM_empleado de ON dfp.Id_empleado = de.id_empleado
INNER JOIN 
    Destino_de_DIM_producto dp ON dfp.Id_producto = dp.id_producto
INNER JOIN 
    Destino_de_DIM_cliente dcli ON dfp.Id_cliente = dcli.Id_DIM_Cliente
INNER JOIN 
    Destino_de_DIM_tiempo dt ON dcli.id_tiempo = dt.id_tiempo;
