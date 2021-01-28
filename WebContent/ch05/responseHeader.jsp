<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>Cache-control : <%= response.getHeader("Cache-control") %></p>
	<p>contentType : <%= response.getHeader("contentType") %></p>
	<p>date : <%= response.getHeader("date") %></p>
	
	<%
	response.setHeader("Cache-control", "use_cache");
	response.addHeader("contentType", "text/html; charset=utf-8");
	response.setDateHeader("date", 1L);
	%>
	
	<br><hr><br>
	<p>Cache-control : <%= response.getHeader("Cache-control") %></p>
	<p>contentType : <%= response.getHeader("contentType") %></p>
	<p>date : <%= response.getHeader("date") %></p>
</body>
</html>