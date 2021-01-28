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
	//request.setCharacterEncoding("utf-8");
	String userid = request.getParameter("userID");
	String userpw = request.getParameter("userPW");
	%>
	
	<p>User ID : <%= userid %></p>
	<p>User PW : <%= userpw %></p>
</body>
</html>