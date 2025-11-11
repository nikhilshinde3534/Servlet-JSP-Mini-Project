<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome Page</h1>
	
	<table border="1">
		<tr>
			<th>Fullname</th>
			<th>Email id</th>
			<th>Password</th>
			<th>Contact</th>
			<th></th>
		</tr>
		
		<%
			Class.forName("org.postgresql.Driver");
		
			String URL="jdbc:postgresql://localhost:5433/javabatch";
			String username="postgres";
			String password="Nikhil77";
	    	Connection con = DriverManager.getConnection(URL,username,password);
	    	
	    	Statement stmt = con.createStatement();
	    	ResultSet rs = stmt.executeQuery("select * from student");
	    	while(rs.next()) {
		%>
		
			<tr>
				<td><%= rs.getString(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td>
					<a href="delete.jsp?fullname=<%= rs.getString(1) %>">Delete</a>
					<a href="profile_edit.jsp?fullname=<%= rs.getString(1) %>">Profile Edit</a>
				</td>
			</tr>
		<% } %>
		
	</table>
</body>
</html>



