<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

    <%
    int studentId =Integer.parseInt(request.getParameter("sId"));
    String studentName = request.getParameter("sName");
    String email = request.getParameter("email");
    String[] subject = request.getParameterValues("subject");
    %>
    <%!
    Connection connection=null;
    PreparedStatement preparedStatement=null;
    int resultInt=0;
    int resultInt1=0;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentinfo","root","root");
	preparedStatement=connection.prepareStatement("insert into student values(?,?,?)");
	preparedStatement.setInt(1,studentId);
	preparedStatement.setString(2, studentName);
	preparedStatement.setString(3, email);
	resultInt=preparedStatement.executeUpdate();
	connection.close();
 %>
	
<%
	for(String sub:subject){
		Class.forName("com.mysql.cj.jdbc.Driver");
		connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentinfo","root","root");
		preparedStatement = connection.prepareStatement("insert into subjects values(?,?)");
		preparedStatement.setString(1, sub);
		preparedStatement.setInt(2, studentId);
	    resultInt1=preparedStatement.executeUpdate();
	    connection.close();
	    
	}
%>
<h3><%=resultInt %>
row(s) inserted</h3>
</body>
</html>