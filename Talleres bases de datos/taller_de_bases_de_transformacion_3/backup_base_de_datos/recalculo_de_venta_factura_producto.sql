-- Recalcular el total de venta basado en la cantidad y el precio del producto
UPDATE [Destino de tabla_factura_pedido]
SET total_venta = cantidad * (SELECT total_venta FROM [Destino de tabla_producto] WHERE [Destino de tabla_producto].id_producto = [Destino de tabla_factura_pedido].id_producto);
