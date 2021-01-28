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
		try {
			String num1 = request.getParameter("num1");
			String num2 = request.getParameter("num2");
			int a = Integer.parseInt(num1);
			int b = Integer.parseInt(num2);
			int c = a / b;
		}
		
		catch (NumberFormatException e) {
			/* RequestDispatcher : request 내장 객체에 담긴 정보를 저장하고 있다가 그 다음 페이지에서도 해당 정보를 확인할 수 있도록 계속 저장하는 기능 */
			/* 만약 RequestDispatcher 클래스를 사용하지 않고 다른 페이지로 이동 시 request 내장객체가 가지고 있는 정보를 잃어버림 */
			
			/* 다음에 이동할 페이지의 주소를 입력 */
			RequestDispatcher dispatcher = request.getRequestDispatcher("tryCatch_error.jsp");
			/* 설정할 페이지로 이동 시 가지고 이동할 내장객체 설정 */
			dispatcher.forward(request, response);
		}
	%>
</body>
</html>