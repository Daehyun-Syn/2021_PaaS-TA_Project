<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="poly.util.CmmUtil" %>
<%
   String jspRes = CmmUtil.nvl((String)request.getAttribute("res"), "0");
   String boardseq= (String)session.getAttribute("no");	
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
   alert('댓글이 삭제되었습니다.')
   document.location.href="/community/boardsee.do?number=<%=boardseq%>"
   </script>

<% 
} else{
%>
   <script>
   alert('삭제 요청에 실패하였습니다. 관리자에게 문의해주세요')
   document.location.href="/community/boardsee.do?number=<%=boardseq%>"
   </script>
<%
}
%>   
</body>
</html>