-- País y Ciudad
CREATE TABLE Pais (
  id_pais INT PRIMARY KEY,
  nombre VARCHAR(100)
);

CREATE TABLE Ciudad (
  id_ciudad INT PRIMARY KEY,
  nombre VARCHAR(100),
  id_pais INT,
  FOREIGN KEY (id_pais) REFERENCES Pais(id_pais)
);

-- Direcciones
CREATE TABLE Direccion (
  id_direccion INT PRIMARY KEY,
  calle VARCHAR(100),
  numero VARCHAR(10),
  tipo VARCHAR(50),
  id_ciudad INT,
  FOREIGN KEY (id_ciudad) REFERENCES Ciudad(id_ciudad)
);

-- Estado de entrega
CREATE TABLE EstadoEntrega (
  id_estado INT PRIMARY KEY,
  nombre VARCHAR(50),
  descripcion TEXT
);

-- Personas
CREATE TABLE PersonaRecepciona (
  id_recepciona INT PRIMARY KEY,
  nombre VARCHAR(100),
  rut VARCHAR(15),
  telefono VARCHAR(20),
  correo VARCHAR(100)
);

CREATE TABLE ResponsableEntrega (
  id_responsable INT PRIMARY KEY,
  nombre VARCHAR(100),
  rut VARCHAR(15),
  telefono VARCHAR(20),
  correo VARCHAR(100)
);

-- Entregas
CREATE TABLE Entrega (
  id_entrega INT PRIMARY KEY,
  fecha DATE,
  id_direccion INT,
  id_estado INT,
  id_recepciona INT,
  id_responsable INT,
  FOREIGN KEY (id_direccion) REFERENCES Direccion(id_direccion),
  FOREIGN KEY (id_estado) REFERENCES EstadoEntrega(id_estado),
  FOREIGN KEY (id_recepciona) REFERENCES PersonaRecepciona(id_recepciona),
  FOREIGN KEY (id_responsable) REFERENCES ResponsableEntrega(id_responsable)
);

-- Proveedores y contactos
CREATE TABLE Rubro (
  id_rubro INT PRIMARY KEY,
  nombre VARCHAR(100)
);

CREATE TABLE TipoProveedor (
  id_tipo INT PRIMARY KEY,
  nombre VARCHAR(100)
);

CREATE TABLE ContactoProveedor (
  id_contacto INT PRIMARY KEY,
  nombre VARCHAR(100),
  telefono VARCHAR(20),
  correo VARCHAR(100)
);

CREATE TABLE Proveedor (
  id_proveedor INT PRIMARY KEY,
  razon_social VARCHAR(150),
  id_rubro INT,
  id_tipo INT,
  id_contacto INT,
  id_direccion INT,
  FOREIGN KEY (id_rubro) REFERENCES Rubro(id_rubro),
  FOREIGN KEY (id_tipo) REFERENCES TipoProveedor(id_tipo),
  FOREIGN KEY (id_contacto) REFERENCES ContactoProveedor(id_contacto),
  FOREIGN KEY (id_direccion) REFERENCES Direccion(id_direccion)
);

-- Productos
CREATE TABLE CategoriaProducto (
  id_categoria_producto INT PRIMARY KEY,
  nombre VARCHAR(100)
);

CREATE TABLE Producto (
  id_producto INT PRIMARY KEY,
  nombre VARCHAR(100),
  descripcion TEXT,
  precio_unitario DECIMAL(10,2),
  id_categoria_producto INT,
  FOREIGN KEY (id_categoria_producto) REFERENCES CategoriaProducto(id_categoria_producto)
);

-- Sucursales e inventario
CREATE TABLE Sucursal (
  id_sucursal INT PRIMARY KEY,
  nombre VARCHAR(100),
  id_direccion INT,
  FOREIGN KEY (id_direccion) REFERENCES Direccion(id_direccion)
);

CREATE TABLE Inventario (
  id_inventario INT PRIMARY KEY,
  id_producto INT,
  cantidad INT,
  id_sucursal INT,
  FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
  FOREIGN KEY (id_sucursal) REFERENCES Sucursal(id_sucursal)
);
