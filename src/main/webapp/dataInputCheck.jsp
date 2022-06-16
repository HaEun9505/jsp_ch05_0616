<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function checkForm()
	{
		if(document.loginForm.id.value == "")
		//form의 name.input의 name(id) -> 아이디가 빈칸이면
		{
			alert("아이디는 필수 입력사항입니다.");
			loginForm.id.focus();	//아이디로 자동 포커스 지정(작동이 안되면 앞에 document)
			return;		//submit이 안되게 막음
		}
		if(document.loginForm.id.value.length <= 4 || document.loginForm.id.value.length >= 11)
		//form의 name.input의 name(id) - 아이디가 4칸이하, 11칸 이상일경우
		{
			alert("아이디는 5글자 이상이어야 합니다.");
			loginForm.id.focus();	//비밀번호로 자동 포커스 지정(작동이 안되면 앞에 document)
			return;		//submit이 안되게 막음
		}
		if(document.loginForm.pw.value == "")
		//form의 name(loginForm).input의 name(pw)  비밀번호가 빈칸이면
		{
			alert("비밀번호는 필수 입력사항입니다.");
			loginForm.pw.focus();	//비밀번호로 자동 포커스 지정(작동이 안되면 앞에 document)
			return;		//submit이 안되게 막음
		}
		if(document.loginForm.pw.value.length <= 4 || document.loginForm.pw.value.length >= 11)
		//form의 name(loginForm).input의 name(pw) - 비밀번호가 4칸이하, 11칸 이상일경우
		{
			alert("비밀번호는 5글자 이상이어야 합니다.");
			loginForm.pw.focus();	//비밀번호로 자동 포커스 지정(작동이 안되면 앞에 document)
			return;		//submit이 안되게 막음
		}
		if(isNaN(document.loginForm.age.value))	//숫자가 아니면 걸림
		//isNotaNumber
		//form의 name(loginForm).input의 name(age) - 비밀번호가 4칸이하, 11칸 이상일경우
		{
			alert("나이는 숫자만 입력됩니다.");
			loginForm.age.focus();	//비밀번호로 자동 포커스 지정(작동이 안되면 앞에 document)
			return;		//submit이 안되게 막음
		}
		document.loginForm.submit();	//if문이 거짓이면(아이디 입력되면)submit
	}
</script>
<title>데이터 입력 체크</title>
</head>
<body>
	<h2>회원 로그인</h2>
	<hr>
	<form action="loginOk.jsp" name="loginForm">
		아이디 : <input type="text" name="id"><br><br>
		비밀번호 : <input type="text" name="pw"><br><br>
		나이 : <input type="text" name="age"><br><br>
		<input type="button" value="로그인" onclick="checkForm()">
			<!-- 버튼을 누르면 onclick이 checkForm() 함수 호출 -->
	</form>
</body>
</html>