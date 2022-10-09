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
<title>Updated</title>
</head>
<body style="background-color:yellow;color:red;">
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentinfo", "root", "root");
	preparedStatement = connection.prepareStatement("update student set studentName=?, email=?, subject1=?,subject2=?,subject3=?,subject4=?,subject5=? where studentId=?");
	
	preparedStatement.setString(1, name);
	preparedStatement.setString(2, email);
	preparedStatement.setString(3, subject[0]);
	preparedStatement.setString(4, subject[1]);
	preparedStatement.setString(5, subject[2]);
	preparedStatement.setString(6, subject[3]);
	preparedStatement.setString(7, subject[4]);
	preparedStatement.setInt(8, id);
	result = preparedStatement.executeUpdate();
	
	%>
	<h3><%=result%>
		record(s) updated into Student table
	</h3>
</body>
</html>