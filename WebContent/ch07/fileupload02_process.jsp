<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<!-- 파일 업로드에 필요한 라이브러리 -->
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File UpLoad</title>
</head>
<body>
	<%
	/* 내장 객체 request에 의해서 전송된 파일 데이터를 저장하기 위한 외부 라이브러리 클래스 */
	MultipartRequest multi = new MultipartRequest(request, "C:\\java102\\upload", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	
	String name1 = multi.getParameter("name1");
	String subject1 = multi.getParameter("subject1");
	
	String name2 = multi.getParameter("name2");
	String subject2 = multi.getParameter("subject2");
	
	String name3 = multi.getParameter("name3");
	String subject3 = multi.getParameter("subject3");
	
	/* request 내장 객체에 저장된 파일명 모두 불러오기 */
	Enumeration files = multi.getFileNames();
	
	/* Enumeration 클래스의 객체 files에 저장된 순서가 거꾸로임 */
	String file3 = (String) files.nextElement();
	String filename3 = multi.getFilesystemName(file3);
	
	String file2 = (String) files.nextElement();
	String filename2 = multi.getFilesystemName(file2);
	
	String file1 = (String) files.nextElement();
	String filename1 = multi.getFilesystemName(file1);
	%>
	
	<table border=1>
		<thead>
			<tr>
				<th width="100">이름</th>
				<th width="100">제목</th>
				<th width="100">파일</th>
			</tr>
		</thead>
		<tbody>
			<%
			out.print("<tr><td>" + name1 + "</td>");
			out.print("<td>" + subject1 + "</td>");
			out.println("<td>" + filename1 + "</td></tr>\n");
			
			out.print("<tr><td>" + name2 + "</td>");
			out.print("<td>" + subject2 + "</td>");
			out.println("<td>" + filename2 + "</td></tr>\n");
			
			out.print("<tr><td>" + name3 + "</td>");
			out.print("<td>" + subject3 + "</td>");
			out.println("<td>" + filename3 + "</td></tr>\n");
			%>
		</tbody>
	</table>
</body>
</html>