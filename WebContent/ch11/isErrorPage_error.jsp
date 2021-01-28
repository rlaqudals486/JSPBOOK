<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- isErrorPage 속성을 true로 설정하여 Exception 클래스를 사용할 수 있도록 함 -->
<!-- isErrorPage 속성은 다른 문서에서 errorPage로 설정된 파일에서 디렉티브 태그를 사용하여 설정 -->
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>오류가 발생하였습니다.
	<p> 예외 유형 : <%= exception.getClass().getName() %></p>
	<p> 오류 메시지 : <%=exception.getMessage() %>
</body>
</html>