<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Enumeration" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String hostValue = request.getHeader("host");
	String alValue = request.getHeader("accept-language");
	
	/* out.print("호스트명 : " + hostValue + "<br>");
	out.print("설정된 언어 : " + alValue + "<br>"); */
	%>
	
	<p>호스트명 : <%= hostValue %><br></p>
	<p>설정된 언어 : <%= alValue %><br></p>
	
	<br><hr><br>
	
	<%
	Enumeration en = request.getHeaderNames();
	while (en.hasMoreElements()) {
		String headerName = (String)en.nextElement();
		String headerValue = request.getHeader(headerName);
	%>
	<%= headerName %> : <%= headerValue %> <br>
	<%
	}
	%>
</body>
</html>