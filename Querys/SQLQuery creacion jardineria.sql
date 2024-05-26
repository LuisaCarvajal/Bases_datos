-- Tablas de Dimensiones
CREATE TABLE Cliente (
    Id_DIM_Cliente INT PRIMARY KEY,
    Nombre_cliente NVARCHAR(100),
    Nombre_contacto NVARCHAR(100),
    Teléfono NVARCHAR(20),
    Dirección NVARCHAR(100)
);

CREATE TABLE Oficina (
    id_oficina INT PRIMARY KEY,
    descripción NVARCHAR(100),
    ciudad NVARCHAR(100),
    dirección NVARCHAR(100),
    país NVARCHAR(100),
    región NVARCHAR(100),
    teléfono NVARCHAR(20)
);

CREATE TABLE Producto (
    id_producto INT PRIMARY KEY,
    código_Producto NVARCHAR(50),
    nombre NVARCHAR(100),
    categoría NVARCHAR(50),
    dimensiones NVARCHAR(50),
    proveedor NVARCHAR(100),
    descripción NVARCHAR(200),
    cantidad_en_estock INT,
    precio_venta DECIMAL(10, 2),
    precio_proveedor DECIMAL(10, 2)
);

CREATE TABLE Tiempo (
    id_tiempo INT PRIMARY KEY,
    dia INT,
    semana INT,
    mes INT,
    año INT
);

CREATE TABLE Empleado (
    id_empleado INT PRIMARY KEY,
    nombre NVARCHAR(100),
    apellido1 NVARCHAR(100),
    apellido2 NVARCHAR(100),
    email NVARCHAR(100),
    puesto NVARCHAR(100)
);

-- Tablas de Hechos
CREATE TABLE Factura_pedido (
    id_pedido INT PRIMARY KEY,
    Id_cliente INT,
    Id_producto INT,
    Id_oficina INT,
    Id_empleado INT,
    id_tiempo INT,
    fecha_pedido DATE,
    fecha_esperada DATE,
    fecha_entrega DATE,
    cantidad INT,
    total_venta DECIMAL(10, 2),
    FOREIGN KEY (Id_cliente) REFERENCES Cliente(Id_DIM_Cliente),
    FOREIGN KEY (Id_producto) REFERENCES Producto(id_producto),
    FOREIGN KEY (Id_oficina) REFERENCES Oficina(id_oficina),
    FOREIGN KEY (Id_empleado) REFERENCES Empleado(id_empleado),
    FOREIGN KEY (id_tiempo) REFERENCES Tiempo(id_tiempo)
);
