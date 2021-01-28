<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%
		request.setCharacterEncoding("UTF-8");
		
		/* Enumeration 은 배열이라고 생각하면 됨 */
		/* request 객체가 가지고 있는 모든 파라미터의 이름을 가져옴 */
		Enumeration paraNames = request.getParameterNames();
		
		/*
		반복문을 통해서 배열에 저장된 모든 내용을 확인
		배열에 남은 내용을 없을때까지 반복 실행하면서 확인
		*/
		while (paraNames.hasMoreElements()) {
			/* 배열에 저장된 데이터를 하나 출력 */
			String name = (String) paraNames.nextElement();
			out.println("<tr><td>" + name + "</td>");
			/* 출력된 name을 가지고 request 객체에서 값을 하나 출력함 */
			String paramValue = request.getParameter(name);
			out.println("<td>" + paramValue + "</td></tr>");
		}
		%>
	</table>
</body>
</html>