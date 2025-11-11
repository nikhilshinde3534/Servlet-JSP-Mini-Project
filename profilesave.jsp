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
	
		String fn = request.getParameter("fullname");
	    String em = request.getParameter("email");
	    String pss = request.getParameter("password");
	    String cn = request.getParameter("contact");
	    
		Class.forName("org.postgresql.Driver");
		
		String URL="jdbc:postgresql://localhost:5433/javabatch";
		String username="postgres";
		String password="Nikhil77";
	    Connection con = DriverManager.getConnection(URL,username,password);
	    
	    String q = "update student set fullname=?,email=?,password=?,contact=?";
	    PreparedStatement ps = con.prepareStatement(q);
	    ps.setString(1, fn);
	    ps.setString(2, em);
	    ps.setString(3, pss);
	    ps.setString(4, cn);
	    ps.executeUpdate();
	    
	    response.sendRedirect("welcome.jsp");
	%>
</body>
</html>



