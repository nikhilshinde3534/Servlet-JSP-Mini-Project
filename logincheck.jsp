<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String em = request.getParameter("email");
		String pss = request.getParameter("password");
		
		Class.forName("org.postgresql.Driver");
		
		String URL="jdbc:postgresql://localhost:5433/javabatch";
		String username="postgres";
		String password="Nikhil77";
    	Connection con = DriverManager.getConnection(URL,username,password);
    	
    	Statement stmt = con.createStatement();
    	ResultSet rs = stmt.executeQuery("select * from student where email='"+em+"' and password='"+pss+"'");
		
    	if(rs.next()){
    		
    		HttpSession s1 = request.getSession();
    		s1.setAttribute("username", em);	 // Session Start
    		
    		out.print("Login Successfully");
    		response.sendRedirect("dashboard.jsp");
    	}
    	else
    	{
    		out.print("Login Fail");
    		response.sendRedirect("login.jsp");
    	}
	%>
</body>
</html>

