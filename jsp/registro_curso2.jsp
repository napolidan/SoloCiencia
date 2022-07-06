
<%@page import="java.sql.*"%>

<% 
	
	String nombre = request.getParameter("nombre");
	String cedula = request.getParameter("cedula");
	String fecha = request.getParameter("fecha");


	Class.forName("com.mysql.jdbc.Driver");
	
	
	Connection dbconnect = DriverManager.getConnection("jdbc:mysql://localhost:3306/pruebaformulario", "root", "");
	
	Statement dbstatement = dbconnect.createStatement();
	
	String insertarSQL = "INSERT INTO quimicabiologia (nombre,cedula,fecha) VALUES ('"+nombre+"','"+cedula+"','"+fecha+"')";
	
	dbstatement.executeUpdate(insertarSQL);
	response.sendRedirect("../html/home.html");
%>

</body>
</html>