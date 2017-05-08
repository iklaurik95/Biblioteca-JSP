<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 final String USER = "iker";
 final String PASSWORD = "1234";
 
 String usuario=request.getParameter("user");
 String contrasena=request.getParameter("password");
 
 if(usuario.equals(USER) && contrasena.equals(PASSWORD)){
	 out.println("Usuario correcto.");
 }else{
	 out.println("Usuario incorrecto.");
 }
%>

</body>
</html>