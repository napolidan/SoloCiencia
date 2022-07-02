<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
String user = request.getParameter("usuario");
String contrasena = request.getParameter("contrasenaID");

Class.forName("com.mysql.jdbc.Driver");
Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/pruebaformulario","root","");
%>
<%
try
{
PreparedStatement consultaP = dbconect.prepareStatement("SELECT * FROM solocienciadb WHERE userID= ? AND passwordID= ?");
consultaP.setString(1, user);
consultaP.setString(2, contrasena);

ResultSet resultado = consultaP.executeQuery();

if(resultado.next())
	out.print("USUARIO CORRECTO");
else
	out.print("Error de login - USUARIO INCORRECTO");
}catch(Exception e)
{
	out.println("--ERROR--<br>");
	out.println("--Consulta Invalida--");
}
%>
</body>
</html>