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
		
		String q = "delete from student where fullname=?";
		PreparedStatement ps = con.prepareStatement(q);
		ps.setString(1, fullname);
		ps.executeUpdate();
		
		response.sendRedirect("welcome.jsp");
	
	%>
</body>
</html>

