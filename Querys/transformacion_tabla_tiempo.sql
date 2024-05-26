

-- Calcular el trimestre
ALTER TABLE [Destino de tabla_tiempo]
ADD trimestre AS CASE 
    WHEN mes IN (1, 2, 3) THEN 1
    WHEN mes IN (4, 5, 6) THEN 2
    WHEN mes IN (7, 8, 9) THEN 3
    WHEN mes IN (10, 11, 12) THEN 4
END;