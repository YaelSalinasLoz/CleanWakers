--insertar Calazado
INSERT INTO Proyecto.Calzado (TipoCalzado, ServicioContratado, Marca, Talla, Color, Materiales, DetallesCalzado, FechaLlegada, Rack, IdTenis) VALUES ('Tenis', 'VIP', 'Nike', '5', 'Blanco', 'Cuero', 'Tenis de cuero', '2019-10-10', 'A1');
INSERT INTO Proyecto.Calzado (TipoCalzado, ServicioContratado, Marca, Talla, Color, Materiales, DetallesCalzado, FechaLlegada, Rack, IdTenis) VALUES ('Tacón', 'Suede', 'Gucci', '3', 'Negros', 'Gamuza', 'Mancha de maquillaje en la punta', '2019-10-10', 'A2');
INSERT INTO Proyecto.Calzado (TipoCalzado, ServicioContratado, Marca, Talla, Color, Materiales, DetallesCalzado, FechaLlegada, Rack, IdTenis) VALUES ('Botín', 'Suede', 'Timberland', '8', 'Beige', 'Gamuza', 'Mancha de grasa', '2019-10-10', 'A3');

--insertar Servicio
INSERT INTO Proyecto.Servicio (NombreServicio, Costo, Descripcion, PromedioEntrega) VALUES ('VIP', '180', 'Limpiexa exterior, limpieza interior, repelente , desodorante', '5');
INSERT INTO Proyecto.Servicio (NombreServicio, Costo, Descripcion, PromedioEntrega) VALUES ('Suede', '150', 'Limpieza exterior de gamuza, repelente, desodorante', '6');
INSERT INTO Proyecto.Servicio (NombreServicio, Costo, Descripcion, PromedioEntrega) VALUES ('Clean Gent', 'Limpieza exterior para calzado de piel', '4');
INSERT INTO Proyecto.Servicio (NombreServicio, Costo, Descripcion, PromedioEntrega) VALUES ('Basic', 'Limpieza exterior', '4');
INSERT INTO Proyecto.Servicio (NombreServicio, Costo, Descripcion, PromedioEntrega) VALUES ('Premium', 'Limpieza exterior, repelente, desodorante', '5');
INSERT INTO Servicio (NombreServicio, Costo, Descripcion, PromedioEntrega) VALUES ('Ultra white', 'Limpieza exterior de calzado blanco de tela, repelente, desodorante', '7');

--insertar Cliente
INSERT INTO Proyecto.Cliente (Nombre, IdCliente, Cumpleanos, Telefono, FechaRegistro, Correo) VALUES ('Juan Perez', '1', '1990-10-10', '1234567890', '2019-10-10', 'juan@hotmail.com');
INSERT INTO Proyecto.Cliente (Nombre, IdCliente, Cumpleanos, Telefono, FechaRegistro, Correo) VALUES ('Maria Gonzalez', '2', '1990-10-10', '5514143232', '2019-10-10', 'maria@gmail.com');
INSERT INTO Proyecto.Cliente (Nombre, IdCliente, Cumpleanos, Telefono, FechaRegistro, Correo) VALUES ('Zas Linas', '3', '1990-10-10', '5587569876', '2019-10-10', 'zas@gmail.com');


--insertar Orden
INSERT INTO Proyecto.Orden (Servicio, Cliente, IdEmpleado, IdTenis, IdOrden, FechaLlegada) VALUES ('VIP', 'Juan Perez', '1', '1', '1', '2019-10-10');
INSERT INTO Proyecto.Orden (Servicio, Cliente, IdEmpleado, IdTenis, IdOrden, FechaLlegada) VALUES ('Suede', 'Maria Gonzalez', '2', '2', '2', '2019-10-10');
INSERT INTO Proyecto.Orden (Servicio, Cliente, IdEmpleado, IdTenis, IdOrden, FechaLlegada) VALUES ('Suede', 'Zas Linas', '3', '3', '3', '2019-10-10');


--insertar Empleado
INSERT INTO Proyecto.Empleado (Nombre, IdEmpleado, Telefono, Correo) VALUES ('Pedro Gómez', '1', '1234567890', 'gomez@hotmail.com');
INSERT INTO Proyecto.Empleado (Nombre, IdEmpleado, Telefono, Correo) VALUES ('Ana López', '2', '5514143232', 'anaL@gmail.com');
INSERT INTO Proyecto.Empleado (Nombre, IdEmpleado, Telefono, Correo) VALUES ('Luis Martínez', '3', '5587569876', 'luismart@outlook.com');