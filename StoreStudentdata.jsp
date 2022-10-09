<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Status of JDBC</title>
</head>
<body>
<% 
String studentId = request.getParameter("sId");
String studentName = request.getParameter("sName");
String email = request.getParameter("email");
String[] subject = request.getParameterValues("subject");
%>

<%=studentId %><br>
<%=studentName %><br>
<%=email %><br>
<%
out.print("Array Elements are:<br>");
for(String i:subject)
{%>
<%=i %>
<%}%>
<%!Connection connection; %>
<%  try{
    	 Class.forName("com.mysql.cj.jdbc.Driver");
     	 connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentinfo?user=root&password=root"); 
     	PreparedStatement preparedStatement = connection.prepareStatement("insert into student(studentid, studentname, email) values(?,?,?)");
		preparedStatement.setInt(1, Integer.parseInt(studentId));
		preparedStatement.setString(2, studentName);
		preparedStatement.setString(3, email);
		preparedStatement.executeUpdate();
		
		for(String sub:subject){%>
		<br><b><%=studentId %></b><%=sub %>
		<%
		preparedStatement = connection.prepareStatement("insert into subjects(subject, studentid) values(?,?)");
		preparedStatement.setString(1, sub);
		preparedStatement.setInt(2, Integer.parseInt(studentId));
		preparedStatement.executeUpdate();
	%>
	<%	int resultInt=preparedStatement.executeUpdate();
	//System.out.println("Query ok "+resultInt+" row(s) affected \n");
	}
%>
<%	 	
}catch(ClassNotFoundException e){
	e.printStackTrace();
}catch(SQLException e){
	e.printStackTrace();
}finally{
	if (connection !=null) {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}%> 
</body>
</html>