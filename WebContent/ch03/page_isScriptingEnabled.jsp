<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 디렉티브 태그 중 page의 isScriptingEnabled의 값을 false로 변경하면 JSP 스크립트 문법을 사용할 수 없음 -->
<%@ page isScriptingEnabled="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int a = 10;
	int b = 20;
	int result = a + b;
	%>
	
	<%= result %>
	
</body>
</html>