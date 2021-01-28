<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 디렉티브 태그 중 page의 import를 사용하면 일반 자바프로젝트에서 클래스 파일을 로드하여 사용하듯이 사용할 수 있음 -->
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directives Tag</title>
</head>
<body>
	<!-- import를 사용하지 않을 경우 자바 클래스의 전체 경로를 모두 입력 -->
	<%-- Today is <%= new java.util.Date() %> --%>
	Today is <%= new Date() %>
</body>
</html>