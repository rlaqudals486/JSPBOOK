<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="request01_process.jsp" method="post">
		<label for="userID">User ID : </label>
		<input type="text" id="userID" name="userID" >
		<br>
		<label for="userPW">User PW : </label>
		<input type="password" id="userPW" name="userPW" >
		<br>
		<button type="submit">전송</button>
	</form>
	<input type="text" name="userEmail">
	
	
	<form action="request03.jsp" method="get">
		<input type="text" name="id" ><br>
		<input type="email" name="email" > <br>
		<button type="submit">request03으로 이동</button>
	</form>
	
</body>
</html>