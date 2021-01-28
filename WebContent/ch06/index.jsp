<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>checkbox의 데이터 전송 시</h3>
	<form action="process_checkbox.jsp" method="post">
		<label>취미 : </label><br>
		<input type="checkbox" id="reading" name="reading" value="독서">
		<label for="reading">독서</label><br>
		<input type="checkbox" id="exercise" name="exercise" value="운동">
		<label for="exercise">운동</label><br>
		<input type="checkbox" id="movie" name="movie" value="영화">
		<label for="movie">영화</label><br><br>
		
		<button type="submit">전송</button>
	</form>
	<br><hr><br>
	<h3>radio box의 데이터 전송 시</h3>
	<form action="process_radiobox.jsp" method="post">
		<label>취미 : </label>
		<input type="radio" id="read" name="hobby" value="독서">
		<label for="read">독서</label><br>
		<input type="radio" id="exe" name="hobby" value="운동">
		<label for="exe">운동</label><br>
		<input type="radio" id="mov" name="hobby" value="영화">
		<label for="mov">영화</label><br><br>
		
		<button type="submit">전송</button>
	</form>
</body>
</html>