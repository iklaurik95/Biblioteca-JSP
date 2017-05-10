º<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro</title>
</head>
<body>
<%@ page import="eus.biblioteca.modelo.*" %>
<%@ page import="java.sql.*" %>
<%
	String nombre= request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String direccion = request.getParameter("direccion");
	String poblacion = request.getParameter("poblacion");
	String provincia = request.getParameter("provincia");
	String dni = request.getParameter("dni");
	
	Socio socio = new Socio();
	socio.setNombre(nombre);
	socio.setApellido(apellido);
	socio.setDireccion(direccion);
	socio.setPoblacion(poblacion);
	socio.setProvincia(provincia);
	socio.setDni(dni);

	Socio_modelo socioModelo = new Socio_modelo("biblioteca");
	socioModelo.insert(socio);

%>

</body>
</html>