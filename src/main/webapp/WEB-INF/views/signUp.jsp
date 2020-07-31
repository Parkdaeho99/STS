<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<title>Sign-Up</title>
</head>

<body>

<div>
     <section class="signup">
    	<div>
		<form name="signupForm" method="post">
			<div class="inputbox"><label for="id">User ID</label><input type="text" name="mberId" id="id" class="input_text" tabindex="1" maxlength="8" /></div>
			<div class="inputpwbox"><label for="pw">Password</label><input type="password" name="passwd" id="pw" class="input_text" tabindex="2" maxlength="7" /></div>
			<div class="inputpwbox"><label for="cpw">Confirm password</label><input type="password" name="cpasswd" id="cpw" class="input_text" tabindex="3" maxlength="7" /></div>
			<input type="button" id="btnSignup" value="Sign-up"/>
			<input type="button" id="btnReset" value="Reset"/>
		</form>
		</div>
	 </section>
	 <input type="hidden" id="message" value="<c:out value='${_message}'/>" />

</div>

<script type="text/javascript">
	$(function(){
		$('#btnSignup').click(function(){
			fn_signup();
		});
		function fn_signup() {
		    document.signupForm.action="<c:url value='./userSignup.do'/>";
			document.signupForm.submit();
		};
	});
</script>

</body>
</html>