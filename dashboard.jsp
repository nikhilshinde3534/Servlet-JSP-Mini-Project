<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		HttpSession s1 = request.getSession(false);
		out.print(s1.getAttribute("username"));
		
		if(s1.getAttribute("username") ==null){
			response.sendRedirect("login.jsp");
		}
	%>
	<h1>Welcome To Dashboard</h1>
	
	<br>
	<a href="logout.jsp">Click Here To Logout</a>
	
</body>
</html>


