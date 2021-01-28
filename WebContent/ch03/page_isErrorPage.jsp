<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="page_isErrorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	/* String 클래스의 변수 str의 값이 null 이므로 toString()이 불가능함 */
	String str = null;
	out.println(str.toString());
	%>
</body>
</html>