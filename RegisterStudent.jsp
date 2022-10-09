<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registeration Form</title>
</head>
<body style="background-color:red;color:white;">
	Only For Student 
	<form method="post" action="RegisterStore.jsp">
		<table>
			<tr>
				<td><label>ID</label></td>
				<td><input type="number" name="id" autofocus="autofocus" placeholder="Enter Your Id Here"></td>
			</tr>
			<tr>
				<td><label>Name</label></td>
				<td><input type="text" name="name" autofocus="autofocus" placeholder="Enter Your Id Here"></td>
			</tr>
			<tr>
				<td><label>Email ID</label></td>
				<td><input type="Email" name="email" placeholder="example123@gmail.com"></td>
			</tr>
		<h1>You have choose only 2 subject and language are subject mandatory </h1>	
			<tr>
				<td><label>Subject</label></td>
				<td><input type="checkbox" name="subject" value="Mathematics">Mathematics
					<input type="checkbox" name="subject" value="Marathi">Marathi
					<input type="checkbox" name="subject" value="Hindi">Hindi
					<input type="checkbox"name="subject" value="English">English
					<input type="checkbox" name="subject" value="SocialScience">Social Science
					<input type="checkbox" name="subject" value="Science"> Science
					<input type="checkbox" name="subject" value="Psychology"> Psychology
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>