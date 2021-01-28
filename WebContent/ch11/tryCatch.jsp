<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "tryCatch_process.jsp" method="post">
		<label for="num1">숫자 1 : </label>
		<input type="text" id="num1" name="num1">
		<label for="num2">숫자 2 : </label>
		<input type="text" id="num2" name="num2">
		<button type="submit">전송</button>
	</form>
</body>
</html>