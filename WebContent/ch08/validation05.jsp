<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function checkMember() {

		/* 정규 표현식 */
		/* 시작문자가 영어 소문자, 영어 대문자, 한글만 가능(숫자, 특수문자 불가능) */
		var regExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		/* 시작글자가 한글이고, 끝 글자도 한글이며, 0번 이상 반복되는 글자 */
		var regExpName = /^[가-힣]*$/;
		/* 시작문자가 숫자이며, 숫자가 0번 이상 반복되며, 숫자로 끝남 */
		/*\d : 숫자, {n} : n회 반복, {3,4} 3회이상 4회 이하 */
		/*   /^[0-9]{3}-[0-9]{3,4}-[0-9]{4}$/   */
		var regExpPasswd = /^[0-9]*$;
			/* 첫번째는 숫자가 3번 반복, 중간은 숫자가 3번 혹은 4번 반복, 마지막은 숫자가 4번 반복 */
			var regExpPhone = /^\d{3}-\d{3,4}-\d{4}/;
			/* 시작 문자는 숫자와 영문자 1자 이상의 문자, 이후의 글자는 특수문자 -_\, 와 숫자나 영문자 0번 이상 반복 */
			/* 이후에 @ 문자가 반드시 포함되며 그 이후의 문자는 특수문자 -_\, 와 숫자, 영문자가 0번 이상 반복 */
			/* 이후에 . 문자가 반드시 포함되며, 영문자가 2자 혹은 3자로 끝남 */
		var regExpEmail = /^[0-9a-zA-Z]([-_\,]?0-9a-zA-Z[])*@[0-9a-zA-Z]([-_\,]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

		var form = document.Member;

		var id = form.userid.value;
		var name = form.username.value;
		var passwd = form.userpw.value;
		var phone form.phone.value + "-" + form.phone2.value + "-" + form.phone3.value;
		var email = form.eamil.value;

		if (!regExpId.test(id)) {
			alert("아이디는 문자로 시작해주세요");
			form.userid.select();
			return;
		}
		if (!regExpName.test(name)) {
			alert("이름은 한글만 입력해주세요");
			return;
		}

		if (!regExpPasswd.test(passwd)) {
			alert("비밀번호를 숫자만 입력해주세요");
			return;
		}
	
		if (!regExpEmail.test(email)) {
			alert("이메일 입력을 확인 해 주세요");
			return;
		}

		form.submit();	
	}
</script>
</head>
<body>
	<h3>회원 가입</h3>
   <form action="validation05_process.jsp" name="Member" method="post">
      <label for="id">아이디 : </label>
      <input type="text" id="id" name="id"><br>
      <label for="pw">비밀번호 : </label>
      <input type="password" id="pw" name="pw"><br>
      <label for="username">이름 : </label>
      <input type="text" id="username" name="username"><br>
      <label for="phoen">연락처 : </label>
      <select id="phone" name="phone">
         <option value=010>010</option>
         <option value=011>011</option>
         <option value=016>016</option>
         <option value=017>017</option>
         <option value=019>019</option>
      </select> - <input type="text" maxlength="4" size="4" name="phone2"> -
      <input type="text" maxlength="4" size="4" name="phone3"><br>
      <label for="email">이메일 : </label>
      <input type="text" id="email" name="email"><br><br>
      <button type="button" onclick="checkMember()">가입하기</button>
   </form>
</body>
</html>