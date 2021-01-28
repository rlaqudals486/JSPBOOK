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
	response.setCharacterEncoding("euc-kr");
	response.setContentType("text/html; charset=euc-kr");
	%>
	<p>문자 인코딩 : <%= response.getCharacterEncoding() %></p>
	<p>콘텐츠 유형 : <%= response.getContentType() %></p>
</body>
</html>