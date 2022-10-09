<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Information</title>
<style>
input {
	background-color: orange;
	color: blue;
}
</style>
</head>
<body bgcolor="lightyellow">
	<form method="post" action="StudentStore.jsp">
		<label>Student Id</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
			type="number" name="sId" autofocus="autofocus"
			placeholder="Enter Your Id Here"><br>
		<br> <label>Student Name</label>&nbsp; <input type="text"
			name="sName" placeholder="Enter Your Full Name"><br>
		<br> <label>Email</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="email" name="email" placeholder="example123@gmail.com"><br>
		<br> <label>Subject</label>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
			type="checkbox" name="subject" value="Marathi">Marathi <input
			type="checkbox" name="subject" value="Hindi">Hindi <input
			type="checkbox" name="subject" value="English">English <input
			type="checkbox" name="subject" value="Mathematics">Mathematics
		<br>
		<br>
		<button style="background-color: red; color: white;" type="submit"
			value="submit">Submit</button>
	</form>
	<%

	%>
</body>
</html>