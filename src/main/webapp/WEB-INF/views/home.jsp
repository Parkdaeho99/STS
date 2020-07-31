<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>
<button id="signUpBtn">회원가입</button>
<%if(request.getAttribute("TEST") != null){ %>
<%=request.getAttribute("TEST") %>
<%} %>
</body>
</html>
<script>
$(function(){
	$("#signUpBtn").click(function(){
		console.log("Click");
		$(location).attr('href',"./signUp.do");
	});
});
</script>
