<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	
	
	
		<%@page import="java.sql.*"%>
	
	<% 
		
		String user = request.getParameter("usuario");
		String lastname = request.getParameter("apellido");
		String age = request.getParameter("edad");
		String contrasena = request.getParameter("contrasenaID");
	
	
		Class.forName("com.mysql.jdbc.Driver");
		
		
		Connection dbconnect = DriverManager.getConnection("jdbc:mysql://localhost:3306/pruebaformulario", "root", "");
		
		Statement dbstatement = dbconnect.createStatement();
		
		String insertarSQL = "INSERT INTO solocienciaDB (userID,lastname,age,passwordID) VALUES ('"+user+"','"+lastname+"','"+age+"','"+contrasena+"')";
		
		dbstatement.executeUpdate(insertarSQL);

		response.sendRedirect("../html/login.html");
		
	%>
		
	</body>
	</html>