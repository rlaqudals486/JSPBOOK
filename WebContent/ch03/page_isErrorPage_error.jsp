<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 디렉티브 태그 중 page의 isErrorPage의 값을 true로 설정하면 해당 페이지에서 exception 객체를 사용할 수 있음 -->
<!-- isErrorPage의 값이 false일 경우 exception 객체를 사용하면 오류가 발생함 -->
<!-- 개발 및 유지보수의 편의성을 위해서 로그파일 및 콘솔로 자세한 에러 내용을 출력하기 위해서 사용 -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>에러가 발생했습니다.</h4>
	<h5>exception 내장 객체 변수</h5>
	<%
	exception.printStackTrace(new java.io.PrintWriter(out));
	%>
</body>
</html>