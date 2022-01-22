<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="poly.util.CmmUtil" %>
<%@ page import="poly.dto.CommentDTO" %>
<%
//Controller로 부터 전달받은 데이터
String msg = CmmUtil.nvl((String)request.getAttribute("msg"));
String boardseq= (String)session.getAttribute("no");
//Controller로부터 전달받은 웹(회원정보 입력화면)으로부터 입력받은 데이터()
CommentDTO uDTO = (CommentDTO)request.getAttribute("pDTO");
if (uDTO==null){
   uDTO= new CommentDTO();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AllForYou</title>
<script type="text/javascript">
   alert("<%=msg%>");
   document.location.href="/community/boardsee.do?number=<%=boardseq%>"
</script>
</head>
<body>

</body>
</html>