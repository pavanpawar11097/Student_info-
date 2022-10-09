<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String email=request.getParameter("email");
String[] subject=request.getParameterValues("subject");
%>
<%!Connection connection = null;
	PreparedStatement preparedStatement = null;
	int result = 0;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stored Properly</title>
</head>
<body style="background-color:red;color:white;">
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentinfo", "root", "root");
	preparedStatement = connection.prepareStatement("insert into student values (?,?,?,?,?,?,?,?)");
	preparedStatement.setInt(1, id);
	preparedStatement.setString(2, name);
	preparedStatement.setString(3, email);
	preparedStatement.setString(4, subject[0]);
	preparedStatement.setString(5, subject[1]);
	preparedStatement.setString(6, subject[2]);
	preparedStatement.setString(7, subject[3]);
	preparedStatement.setString(8, subject[4]);
	result = preparedStatement.executeUpdate();
	%>
	<h3><%=result%>
		record(s) inserted into Student table
	</h3>
</body>
</html>