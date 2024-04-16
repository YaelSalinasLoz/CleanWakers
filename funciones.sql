--Crear funciones
--Agregar cliente
CREATE OR REPLACE FUNCTION Proyecto.AgregarCliente (Nombre varchar(50), IdCliente integer, Cumpleanos date, Telefono integer, FechaRegistro date, 
Correo varchar(50))

RETURNS void 
LANGUAGE plpgsql;
AS 
$$
BEGIN
	INSERT INTO Proyecto.Cliente (Nombre, IdCliente, Cumpleanos, Telefono, FechaRegistro, Correo) VALUES (Nombre, IdCliente, Cumpleanos, Telefono, FechaRegistro, Correo);
END;
$$;


--Agregar empleado
CREATE OR REPLACE FUNCTION Proyecto.AgregarEmpleado (Nombre varchar(50), IdEmpleado integer, Telefono integer, Correo varchar(50))
RETURNS void
LANGUAGE plpgsql;
AS
$$
BEGIN
	INSERT INTO Proyecto.Empleado (Nombre, IdEmpleado, Telefono, Correo) VALUES (Nombre, IdEmpleado, Telefono, Correo);
END;
$$;

--Se crea orden automaticamente despues de crear calzado
CREATE OR REPLACE FUNCTION Proyecto.AgregarOrden (Servicio varchar(50), Cliente varchar(50), IdEmpleado integer, IdTenis integer, 
IdOrden integer, FechaLlegada date)

RETURNS void
LANGUAGE plpgsql;
AS
$$
BEGIN
	INSERT INTO Proyecto.Orden (Servicio, Cliente, IdEmpleado, IdTenis, IdOrden, FechaLlegada) 
	VALUES (Servicio, Cliente, IdEmpleado, IdTenis, IdOrden, FechaLlegada);
END;
$$;

--Agregar calzado y crear orden automaticamente usando la función AgregarOrden
CREATE OR REPLACE FUNCTION Proyecto.AgregarCalzado (TipoCalzado varchar(50), ServicioContratado varchar(50), Marca varchar(50), 
Talla integer, Color varchar(50), Materiales varchar(50), DetallesCalzado varchar(50), FechaLlegada date, Rack varchar(50), IdTenis integer, 
Cliente varchar(50), IdEmpleado integer, IdOrden integer)

RETURNS void 
LANGUAGE plpgsql;
AS
$$
BEGIN
	INSERT INTO Proyecto.Calzado (TipoCalzado, ServicioContratado, Marca, Talla, Color, Materiales, DetallesCalzado, FechaLlegada, Rack, IdTenis) 
	VALUES (TipoCalzado, ServicioContratado, Marca, Talla, Color, Materiales, DetallesCalzado, FechaLlegada, Rack, IdTenis);
	PERFORM Proyecto.AgregarOrden(ServicioContratado, Cliente, IdEmpleado, IdTenis, IdOrden, FechaLlegada);
END;


-- Borrar calzado cuando ya ha sido entregado
CREATE OR REPLACE FUNCTION Proyecto.BorrarCalzado (IdTenis integer)
RETURNS void
LANGUAGE plpgsql;
AS
$$
BEGIN
	DELETE FROM Proyecto.Calzado WHERE IdTenis = IdTenis;
END;
$$;
