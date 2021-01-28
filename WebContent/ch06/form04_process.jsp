<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	/* 정확한 한글 출력을 위해서 문자셋 설정 */
	request.setCharacterEncoding("UTF-8");
	
	/* request 객체에 저장된 파라미터값을 불러옴 */
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	String name = request.getParameter("name");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String gender = request.getParameter("gender");
	/* form 태그에서 input type=checkbox 일 경우 name 속성을 통일하면 Enumeration 타입으로 데이터를 전송함 */
	String[] hobby = request.getParameterValues("hobby");
	/* String hobby1 = request.getParameter("hobby1");
	String hobby2 = request.getParameter("hobby2");
	String hobby3 = request.getParameter("hobby3"); */
	String comment = request.getParameter("comment");
	%>
	
	<p>아이디 : <%= id %></p>
	<p>비밀번호 : <%= pw %></p>
	<p>이름 : <%= name %></p>
	<p>연락처 : <%= phone1 %>-<%= phone2 %>-<%= phone3 %></p>
	<p>성별 : <%= gender %></p>
	<p>취미 : 
	<%
	if (hobby != null) {
		for (int i = 0; i < hobby.length; i++) {
			out.println(" " + hobby[i]);
		}
	}
	%>
	
	</p>
	<%-- <p>취미 : <%= hobby1 %> <%= hobby2 %> <%= hobby3 %></p> --%>
	<p>가입인사 : <%= comment %></p>
</body>
</html>