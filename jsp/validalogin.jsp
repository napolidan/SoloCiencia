<!DOCTYPE html>
<html>

    <head>
        <link rel="icon" href="../images/tabpanne_white.png">
        <link rel="stylesheet" href="../css/home.css">
        <meta charset="utf-8">
        <title>Home</title>
    </head>

    
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
        response.sendRedirect("../html/home.html");
    else
        response.sendRedirect("../html/badlogin.html");
    }catch(Exception e)
	{
		out.println("");
		out.println("");
	}
	%>

</html>