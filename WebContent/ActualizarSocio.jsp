<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar</title>
</head>
<body>

	<%@ page import="eus.biblioteca.modelo.*" %>
	<%@ page import="java.sql.*" %>
	<%@ page import="java.util.*" %>
	
	<% 
		String idSocio = request.getParameter("id");
		Socio_modelo socioModelo = new Socio_modelo("biblioteca");
		
		Socio socio = socioModelo.select(Integer.parseInt(idSocio));
			%>
	<form action="VerSocios.jsp" method="get">		
		<h1>Formulario Para Actualizar</h1>
		<table style="width:100%">
			<tr>
				<th>Nombre:</th>
				<td><input type="text" name="nombre" id="nombre" value="<%=socio.getNombre()%>"/></td>
			</tr>
			<tr>
				<th>Apellido:</th>
				<td><input type="text" name="apellido" id="apellido" value="<%=socio.getApellido()%>"/></td>
			</tr>
			<tr>
				<th>Direccion:</th>
				<td><input type="text" name="direccion" id="direccion" value="<%=socio.getDireccion()%>"/></td>
			</tr>
			<tr>
				<th>Poblacion:</th>
				<td>
					<select name="poblacion">
						<option value ="BILBO" <%if(socio.getPoblacion().equals("BILBO")){out.print("selected");}%>>BILBO</option>
						<option value ="DONOSTIA" <%if(socio.getPoblacion().equals("DONOSTIA")){out.print("selected");}%>>DONOSTIA</option>
						<option value ="GAZTEIZ" <%if(socio.getPoblacion().equals("GAZTEIZ")){out.print("selected");}%>>GAZTEIZ</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>Provincia:</th>
				<td>
					<select name="provincia">
						<option value ="BIZKAIA" <%if(socio.getProvincia().equals("BIZKAIA")){out.print("selected");}%>>BIZKAIA</option>
						<option value ="GIPUZKOA" <%if(socio.getProvincia().equals("GIPUZKOA")){out.print("selected");}%>>GIPUZKOA</option>
						<option value ="ARABA" <%if(socio.getProvincia().equals("ARABA")){out.print("selected");}%>>ARABA</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>DNI:</th>
				<td><input type="text" name="dni" id="dni" value="<%=socio.getDni()%>"/></td>
			</tr>
		</table>			
	</form>
</body>
</html>