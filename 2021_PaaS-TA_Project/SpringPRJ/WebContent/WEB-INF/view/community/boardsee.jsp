<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="poly.dto.ProjectsDTO"%>
<%@ page import="poly.dto.CommentDTO"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>

<%
   ProjectsDTO pDTO = (ProjectsDTO)request.getAttribute("rDTO");
   String user_id = (String)session.getAttribute("id");
   List<CommentDTO> rList = (List<CommentDTO>) request.getAttribute("rList");
%>


<html lang="en">
<head>
<style>   
   h2{
      font-weight: bolder
   }
   
   .div_button2{
   height:30px;
   line-height: 30px;
   border-radius: 5px 5px;
   margin-right:10px;
}
   .div_button3{
   float: right;
   font-size:10px;
   }
   .content_bot{
   float: right;
   width:10%;
   border:0.1px solid;
   border-left:0;
   outline:0;
   }
   .inline-div {
    display:inline-block;
   }
   .inline-txtarea {
       resize: none;
       height:80px;
   }
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Post Details</title>
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">
<link rel="stylesheet" href="/resource/css/style.css">
</head>
<body>
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
      integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
      crossorigin="anonymous"></script>
   <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
      crossorigin="anonymous"></script>
   <div class="container">
      <h2><a href="/index.do"><img src="/resource/img/logo.png" class="img_size2"
      alt="올포유 로고"></a></h2>
      <h2 class="h2_seat">
         <code class="h2_seat_color">커뮤니티 게시판</code>
      </h2>

      

      <table class="table table-striped table_reading">
         <thead class="thead_color ">
            <tr>
               <th class="thead_th">제목 :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=pDTO.getBoard_title()%></th>
               <th class="thead_th">작성자 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=pDTO.getBoard_writer()%></th>
            </tr>
         </thead>
         <tbody>
            <tr>
               <td colspan="2"><%=pDTO.getBoard_contents()%></td>
            </tr>
         </tbody>
      </table>
     
     <div class="div_button2"">
      <% if(user_id.equals(pDTO.getUser_id())) {%>
      <button type="button" class="btn button_FA6862 button_FA6862_seat" onclick="location.href='/community/boardupdate.do?number=<%=pDTO.getBoard_seq()%>'">수정</button>
      <button type="button" class="btn button_FA6862 button_FA6862_seat" onclick="location.href='/community/boarddelete.do?number=<%=pDTO.getBoard_seq()%>'" style="margin-right:10px;">삭제</button>
      <%} %>
      <button type="button"
            onclick="location.href='/index.do'"
            class="btn button_FA6862 button_FA6862_seat" style="width:120px; margin-right: 10px;">이전페이지</button>
      </div>
     
     <!-- 댓글 시작 -->
   <div>
    <h3>댓글</h3>
   
         <%
               for (CommentDTO p : rList) {
            %>
             <div style="padding:14px 0 14px 0; border-top: 1px solid #999;">
            <div>
            <div><b>작성자 : <%=p.getComment_id() %></b></div>
            <div><b>작성일 : <%=p.getComment_rdt() %></b></div>
            <div><b>댓글 : <%=p.getComment_contents() %></b>
      <div class="div_button2 div_button3">
                     <% if(user_id.equals(p.getComment_id())) { %>
                <button type="button" class="btn" onclick="location.href='/community/commentdelete.do?number=<%=p.getComment_seq()%>'" style="margin-right:10px;">삭제</button>
                      <% } %> 
      </div> 
   </div>
            </div>
           <br>
               
            <%
               }
            %>
            
 
    <!--- 댓글 입력 폼 -->
    <div>
        <form action="/comment/write.do" method="post">
            <input type="hidden" name="comment_id" id="" class="" size="15" value="<%=user_id %>">
            <div style="margin-top:10px; margin-top:10px; margin-bottom:10px; float:left; width:100%;" class="inline-div">
                <textarea name="contents" class="inline-txtarea" id="content" style="width:90%;"></textarea>
                <button id="" class="content_bot inline-txtarea" type="submit">댓글</button>
            </div>
        </form>
       </div>
   </div>
   <!-- 댓글 끝 -->
      
</html>