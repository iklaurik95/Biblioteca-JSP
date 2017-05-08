<%@page import="javax.swing.table.DefaultTableModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consulta</title>
</head>
<body>
<%@ page import="eus.biblioteca.modelo.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
	Socio_modelo socioModelo = new Socio_modelo("biblioteca");
%>
	<% 
	ArrayList<Socio> socios = socioModelo.select();
	%>
	<div>
	<table border="1" class="table">
		<thead>
			<tr>
				<th>Nombre</th>
				<th>Apellido</th>
				<th>Direccion</th>
				<th>Poblacion</th>
				<th>Provincia</th>
				<th>Dni</th>
			</tr>
		</thead>
		<%
	for (Socio socio: socios){
		%>
		<tbody>
			<tr>
				<td><%=socio.getNombre() %></td>
				<td><%= socio.getApellido() %></td>
				<td><%= socio.getDireccion() %></td>
				<td><%= socio.getPoblacion() %></td>
				<td><%= socio.getProvincia() %></td>
				<td><%= socio.getDni() %></td>  					
			</tr>
		</tbody>
		<% }%>
		</tbody>
	</table>
	</div>	
</body>
</html>