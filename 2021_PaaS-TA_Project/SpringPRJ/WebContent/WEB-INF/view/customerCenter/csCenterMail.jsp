<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="poly.dto.ProjectsDTO"%>    
<%@ page import="poly.util.CmmUtil" %>
<!DOCTYPE html>
<html>
<% 
   String user_name = CmmUtil.nvl((String)session.getAttribute("id"));    
%>

<head>

<meta charset="UTF-8">
<title>AII FOR YOU</title>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
   integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
   crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script><!-- 항상 최신버전의 JQuery를 사용가능하다. -->
   
<!-- Bootstrap CSS -->
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
   integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
   crossorigin="anonymous">
   <link rel="stylesheet" href="/resource/css/style.css">
   

<title>Customer Center</title>

<style type = "text/css">
body {
   padding-top: 70px;
   padding-bottom: 30px;
}
<pre><c:out value="${content}" /></pre>
</style>

</head>
<body>


   <a href="/index.do"><img src="/resource/img/logo.png" class="img_size"
      alt="올포유 로고" /></a>
   <br>
   <br>

   <article>


      <div class="container" role="main">

         <h2 align="center">고객센터</h2>

         <form name="form" id="form" role="form" method="post"
            action="/customerCenter/csCenterMails.do">

            <div class="mb-3">

               <label for="title">제목</label> <input type="text"
                  class="form-control" name="title" id="title"
                  placeholder="제목을 입력하세요.">

            </div>

            <div class="mb-3">

               <label for="reg_id">주의사항</label> <input type="text"
                  class="form-control" id="reg_id"
                  placeholder="양식에 맞추어 작성해주세요." readonly>

            </div>

            <div class="mb-3">

               <label for="content">내용</label>

               <textarea class="form-control" rows="7" name="contents" id="content">
               
이름 : 
전화번호 : 
이메일 : 

내용 : 
</textarea>

            </div>


            <button type="submit" class="btn btn-sm btn-primary button_color" id="trans">문의하기</button>
<button type="button" onclick="location.href='/index.do'" class="btn btn-sm btn-primary button_color">이전페이지</button>
         </form>

      </div>

   </article>
</body>
</html>