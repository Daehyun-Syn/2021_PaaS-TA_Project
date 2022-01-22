<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="poly.util.CmmUtil" %>
<%
String jspRes = CmmUtil.nvl((String)request.getAttribute("res"), "0");
 %>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>AllForYou</title>

</head>
<body>
<% 
if (jspRes.equals("1")){
%>		
	<script>
	alert("문의가 정상적으로 등록되었습니다.\n 관리자가 검토후 친절하게 답변드리겠습니다.")
	document.location.href="/index.do"
	</script>

<% 
} else{
%>
	<script>
	alert('문의 등록에 실패하였습니다. 다시 한번 시도해주세요.')
	document.location.href="/index.do"
	</script>
<%
}
%>	

</div>

</body>
</html>
