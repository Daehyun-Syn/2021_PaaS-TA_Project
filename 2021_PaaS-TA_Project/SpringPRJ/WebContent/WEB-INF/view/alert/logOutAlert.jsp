<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<% 
String user_name = (String)session.getAttribute("name"); 	
%>
<head>
<meta charset="UTF-8">
<title>AllForYou</title>
</head>
<body>

<script>
alert('로그아웃에 성공하였습니다..')
document.location.href="/user/login.do"
</script>

</body>
</html>