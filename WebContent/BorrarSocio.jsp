<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Borrado</title>
</head>
<body>
<%@ page import="eus.biblioteca.modelo.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
	String idSocio = request.getParameter("id");
	Socio_modelo socioModelo = new Socio_modelo("biblioteca");

	socioModelo.delete(Integer.parseInt(idSocio));	
	out.println("Socio borrado");
	%>
</body>
</html>	