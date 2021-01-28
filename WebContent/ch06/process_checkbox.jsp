<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	<p>독서 : <%= request.getParameter("reading") %></p>
	<p>운동 : <%= request.getParameter("exercise") %></p>
	<p>영화 : <%= request.getParameter("movie") %></p>
</body>
</html>