<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="fileupload03_process.jsp" method="post" enctype="multipart/form-data">
		<label for="filename">파 일 : </label>
		<input type="file" name="filename" id="filename"><br><br>
		<button type="submit">파일 업로드</button>
	</form>
</body>
</html>