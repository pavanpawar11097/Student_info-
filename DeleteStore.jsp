<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
int id = Integer.parseInt(request.getParameter("id"));
%>
<%!Connection connection = null;
	PreparedStatement preparedStatement = null;
	int result = 0;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Deletation Properly</title>
</head>
<body style="background-color:black;color:white;">
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentinfo", "root", "root");
	preparedStatement = connection.prepareStatement("delete from student where studentId=?");
	preparedStatement.setInt(1, id);
	result = preparedStatement.executeUpdate();
	%>
	<h3><%=result%>
		record(s) deleted into Student table
	</h3>
</body>
</html>