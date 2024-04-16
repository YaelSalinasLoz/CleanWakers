--crear tabla Calzado con Tipo de calzado, Servicio contratado, Marca, Talla, Color, Materiales,
--Detalles del calzado, Fecha de llegada, Rack, Id del tenis

CREATE SCHEMA Proyecto;

CREATE TABLE Calzado(
TipoCalzado varchar(50),
ServicioContratado varchar(50),
Marca varchar(50),
Talla float(50),
Color varchar(50),
Materiales varchar(50),
DetallesCalzado varchar(50),
FechaLlegada date,
Rack int(50),
IdTenis integer primary key auto_increment not null
);


--crear tabla Servicio con Nombre del servicio, costo, descripcion, promedio de entrega
CREATE TABLE Proyecto.Servicio(
NombreServicio varchar(50),
Costo float(50),
Descripcion varchar(50),
PromedioEntrega int,
primary key (NombreServicio)
);

--crear taba CLiente con Nombre, Apellido, id cliente, cumpleaños de cliente, telefono, correo
CREATE TABLE Proyecto.Cliente(
Nombre varchar(50),
IdCliente integer primary key auto_increment not null,
Cumpleanos date,
Telefono integer,
FechaRegistro date,
Correo varchar(50)
);

--crear tabla orden con servicio, cliente, id empleado asigando, id tenis, id orden, fecha de llegada
CREATE TABLE Proyecto.Orden(
Servicio varchar(50),
Cliente varchar(50),
IdEmpleado integer,
IdTenis integer,
IdOrden integer primary key auto_increment not null,
FechaLlegada date
);

--crear tabla Empleado con Nombre, Apellido, Id empleado, telefono, correo
CREATE TABLE Proyecto.Empleado(
Nombre varchar(50),
IdEmpleado integer primary key auto_increment not null,
Telefono integer,
Correo varchar(50)
);