<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="out02_process.jsp" method="post">
		<label for="userId">아이디 : </label>
		<input type="text" id="userId" name="userId" placeholder="아이디를 입력해주세요"><br>
		<label for="userPw">비밀번호 : </label>
		<input type="password" id="userPw" name="userPw" placeholder="비밀번호를 입력해주세요"><br>
		<button type="submit">확인</button>
	</form>
</body>
</html>