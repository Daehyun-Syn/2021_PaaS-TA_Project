<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="poly.util.CmmUtil" %>
<%
String jspRes = CmmUtil.nvl((String)request.getAttribute("res"), "0");

String toMail = CmmUtil.nvl(request.getParameter("toMail"));
String title = CmmUtil.nvl(request.getParameter("title"));
String contents = CmmUtil.nvl(request.getParameter("contents"));

 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일 발송 결과 보기</title>
</head>
<body>
<% 
if (jspRes.equals("1")){
%>		
	<script>
	alert('<%=toMail%> 로 임시비밀번호를 발송하였습니다.')
	document.location.href="/user/login.do"
	</script>

<% 
} else{
%>
	<script>
	alert('<%=toMail%> 로 임시비밀번호 발송에 실패했습니다.\n 관리자에게 문의해주세요.')
	document.location.href="/user/login.do"
	</script>
<%
}
%>	
</body>
</html>