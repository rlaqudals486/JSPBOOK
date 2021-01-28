<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="response01_process.jsp" method="post">
		<label for="userID">ID : </label>
		<input type="text" id="userID" name="userID" placeholder="아이디를 입력해 주세요"><br>
		<label for="userPW">PW : </label>
		<input type="password" id="userPW" name="userPW" placeholder="비밀번호를 입력해 주세요"><br>
		<button type="submit">전송</button>
		<button type="reset">취소</button>
	</form>
</body>
</html>