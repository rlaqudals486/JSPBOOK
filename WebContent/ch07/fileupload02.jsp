<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./fileupload02_process.jsp" method="post" enctype="multipart/form-data" name="fileForm">
		<label for="name1">이 름1 : </label>
		<input type="text" name="name1" id="name1"><br>
		<label for="subject1">제 목1 : </label>
		<input type="text" name="subject1" id="subject1"><br>
		<label for="filename1">파 일1 : </label>
		<input type="file" name="filename1" id="filename1"><br><br>
		
		<label for="name2">이 름2 : </label>
		<input type="text" name="name2" id="name2"><br>
		<label for="subject2">제 목2 : </label>
		<input type="text" name="subject2" id="subject2"><br>
		<label for="filename2">파 일2 : </label>
		<input type="file" name="filename2" id="filename2"><br><br>
		<label for="name3">이 름3 : </label>
		<input type="text" name="name3" id="name3"><br>
		<label for="subject3">제 목3 : </label>
		<input type="text" name="subject3" id="subject3"><br>
		<label for="filename3">파 일3 : </label>
		<input type="file" name="filename3" id="filename3"><br><br>
		<button type="submit">파일 업로드</button>
		
	</form>
</body>
</html>