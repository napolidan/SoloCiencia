<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PruebaLogin</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
String nombre = request.getParameter("user");
String contraseña = request.getParameter("contrasenaID");
	
Class.forName("com.mysql.jdbc.Driver");
Connection dbconect=DriverManager.getConnection("jdbc:mysql://localhost:3306/pruebaformulario","root","");
Statement dbstatement = dbconect.createStatement();
String insertarsql = "INSERT INTO login (user, contrasenaID) VALUES ('" +nombre+ "', '" +contraseña+"')";
dbstatement.executeUpdate(insertarsql);
out.print("Registro exitoso, Muchas Gracias!!");
	
%>
</body>
</html>