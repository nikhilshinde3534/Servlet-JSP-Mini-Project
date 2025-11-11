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
	<%
		String fullname = request.getParameter("fullname");
	
		Class.forName("org.postgresql.Driver");

		String URL="jdbc:postgresql://localhost:5433/javabatch";
		String username="postgres";
		String password="Nikhil77";
		Connection con = DriverManager.getConnection(URL,username,password);
		
		PreparedStatement ps = con.prepareStatement("SELECT * FROM student WHERE fullname = ?");
		ps.setString(1, fullname);

		ResultSet rs = ps.executeQuery();

    	
    	while(rs.next()){
	%>
	
		<h1> Profile Edit Form </h1>
	
		<form action="profilesave.jsp" method="post">
			<input type="text" name="fullname" placeholder="Enter your fullname" value="<%= rs.getString(1) %>"><br><br>
			<input type="email" name="email" placeholder="Enter your email" value="<%= rs.getString(2) %>"><br><br>
			<input type="password" name="password" placeholder="Enter your password" value="<%= rs.getString(3) %>"><br><br>
			<input type="number" name="contact" placeholder="Enter your contact number" value="<%= rs.getString(4) %>"><br><br>
		
			<button type="submit">Submit</button>
		</form>
		
	
	<% } %>
	
</body>
</html>


