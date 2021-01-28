<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 오류 발생시 화면에 출력되는 페이지 -->
<%@ page errorPage = "isErrorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 에러 발생 코드 -->
	name 파라미터 : <%=request.getParameter("name").toUpperCase() %>
</body>
</html>