--Crear consultas
--Ver calzado asignado a los clientes
SELECT * FROM Proyecto.Calzado
INNER JOIN Proyecto.Orden ON Proyecto.Calzado.IdTenis = Proyecto.Orden.IdTenis;

--consulta con group by y funcion aritmetica
SELECT SUM(Costo) AS Total, Servicio FROM Proyecto.Servicio
GROUP BY Servicio;

--consulta ver tenis registrados a Zas
SELECT * FROM Proyecto.Calzado
INNER JOIN Proyecto.Orden ON Proyecto.Calzado.IdTenis = Proyecto.Orden.IdTenis
WHERE Cliente = 'Zas Linas';