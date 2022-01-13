<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="">
<head>

<script type="text/javascript">
   //회원가입 정보의 유효성 체크하기
   function doRegUserCheck(f){
      if(f.id.value==""){
         alert("아이디를 입력해주세요.");
         f.id.focus();
         return false;
      }if(f.name.value==""){
         alert("이름을 입력해주세요.");
         f.name.focus();
         return false;
      }if(f.pwd.value==""){
         alert("비밀번호를 입력해주세요.");
         f.pwd.focus();
         return false;
      }if(f.year.value=="year"){
         alert("생년월일 : 출생년도를 입력해주세요.");
         f.year.focus();
         return false;
      }if(f.month.value=="month"){
          alert("생년월일 : 출생월을 입력해주세요");
          f.month.focus();
          return false;
    }if(f.date.value=="date"){
        alert("생년월일 : 출생일을 입력해주세요");
        f.date.focus();
        return false;
    }if(f.lang.value=="language"){
       alert("지역을 선택해주세요.");
       f.lang.focus();
       return false;
   }
   }
 
</script>
<!-- meta charset -->
<meta charset="utf-8">
<!-- site title -->
<title>AII FOR YOU</title>
<!-- meta description -->
<meta name="description" content="">
<!-- mobile viwport meta -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- fevicon -->
<link rel="shortcut icon" type="image/x-icon"
   href="/resource/favicon.ico">

<!-- ================================
        CSS Files
        ================================= -->
<link
   href="https://fonts.googleapis.com/css?family=Libre+Baskerville:400,400i|Open+Sans:400,600,700,800"
   rel="stylesheet">
<link rel="stylesheet" href="/resource/css/themefisher-fonts.min.css">
<link rel="stylesheet" href="/resource/css/bootstrap.min.css">
<link rel="stylesheet" href="/resource/css/main.css">
<link rel="stylesheet" href="/resource/css/style.css">
<link id="color-changer" rel="stylesheet"
   href="/resource/css/colors/color-0.css">
</head>

<body>


   <div class="preloader">
      <div class="loading-mask"></div>
      <div class="loading-mask"></div>
      <div class="loading-mask"></div>
      <div class="loading-mask"></div>
      <div class="loading-mask"></div>
   </div>

 

   <main class="site-wrapper">
      <div class="pt-table">
         <div class="pt-tablecell page-contact relative">
            <!-- .close -->
            <a href="./" class="page-close"><i class="tf-ion-close"></i></a>
            <!-- /.close -->

            <div class="container">
               <div class="row">
                  <div
                     class="col-xs-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8 ">
                     <div class="page-title text-center login_imgbiv clearing_gap">
                        <h2>
                           <a href="/index.do"><img src="/resource/img/logorm.png" class="login_logo"></a>
                           <!--<h2>All <span class="primary">for you</span><span class="title-bg">Welcome</span>-->
                        </h2>
                        <p>
                           All For You 서비스 사용을 위한 회원가입을 해주세요.<br> 당신을 위한, 안전한 먹거리를 위해 ALL FOR YOU
                        </p>
                     </div>
                  </div>
          
               </div>
               <!-- /.row -->

               <div class="row">

                  <div
                     class="col-xs-12 col-sm-7 col-md-7 col-md-offset-1 col-lg-offset-2 login_box">
                     <div class="section-title clear">
                             <div id="google_translate_element"></div>
                        <h3>회원가입</h3>
                        <span class="bar-dark"></span> <span class="bar-primary"></span>
                     </div>
                     <form name ="f" method ="post" action="/user/user/join.do" onsubmit="return doRegUserCheck(this);">
                        <div id="contact-form" class="row contact-form no-gutter">
                           <!-- <div class="col-xs-12 col-sm-6">
                                        <div class="input-field name">
                                            <span class="input-icon" id="name" ><i class="tf-profile-male"></i></span>
                                            <input type="text" class="form-control"  placeholder="Enter your name">
                                        </div>
                                    </div> -- ./col- -->
                           <div class="col-xs-12 col-sm-6 email_length">
                              <div class="input-field email">
                                 <span class="input-icon" id="email"><i
                                    class="tf-envelope2"></i></span> <input type="email"
                                    class="form-control" name="id"
                                    placeholder="사용하실 이메일을 입력해주세요.">
                              </div>
                           </div>
                           <!-- ./col- -->
                           <div class="col-xs-12 col-sm-12">
                              <div class="input-field">
                                 <span class="input-icon" id="subject"><i
                                    class="tf-ion-android-unlock"></i></span> <input type="password"
                                    class="form-control" name="pwd"
                                    placeholder="사용하실 비밀번호를 입력해주세요.">
                              </div>
                           </div>


                           <!-- ./col- -->
                           <div class="col-xs-12 col-sm-12">
                              <div class="input-field">
                                 <span class="input-icon" id="subject"><i
                                    class="tf-ion-person"></i></span> <input type=""
                                    class="form-control" name="name" placeholder="본인 이름을 입력해주세요.">
                              </div>
                           </div>
                           <!-- ./col- -->
                           <div class="col-xs-12 col-sm-12">
                              <div class="input-field message">
                                 <div class="check_styl">
                                    <p>나의 알레르기(복수선택)</p>
                                    <input type="checkbox" name="allergy1" value="갑각류"> 갑각류
                                    <input type="checkbox" name="allergy2" value="달걀"> 달걀
                                    <input type="checkbox" name="allergy3" value="땅콩"> 땅콩
                                    <input type="checkbox" name="allergy4" value="밀"> 밀
                                    <input type="checkbox" name="allergy5" value="생선"> 생선
                                    <input type="checkbox" name="allergy6" value="우유"> 우유
                                    <input type="checkbox" name="allergy7" value="조개"> 조개
                                    <input type="checkbox" name="allergy8" value="콩"> 콩
                                    
                                 </div>
                              </div>
                           </div>
                           <div class="col-xs-12 col-sm-12">
                              <div class="input-field message">
                                 <div class="check_styl check_styl2">
                                    <p>
                                       <span>성별</span> <input type="radio" name="gender"
                                          value="man" checked> 남자 <input type="radio"
                                          name="gender" value="woman" class="input_style">
                                       여자
                                    </p>

                                 </div>
                              </div>
                           </div>
                           <div class="col-xs-12 col-sm-12">
                              <div class="input-field message">
                                 <div class="check_styl check_styl2">
                                    <p>
                                       <span>생년월일</span> <select name="year"
                                          class="check_styl2_child">
                                          <option value="year">년</option>
                                          <option value="1985">1985</option>
                                          <option value="1986">1986</option>
                                          <option value="1987">1987</option>
                                          <option value="1988">1988</option>
                                          <option value="1989">1989</option>
                                          <option value="1990">1990</option>
                                          <option value="1991">1991</option>
                                          <option value="1992">1992</option>
                                          <option value="1993">1993</option>
                                          <option value="1994">1994</option>
                                          <option value="1995">1995</option>
                                          <option value="1996">1996</option>
                                          <option value="1997">1997</option>
                                          <option value="1998">1998</option>
                                          <option value="1999">1999</option>
                                          <option value="2000">2000</option>
                                          <option value="2001">2001</option>
                                          <option value="2002">2002</option>
                                          <option value="2003">2003</option>
                                       </select> <select name="month">
                                          <option value="month">월</option>
                                          <option value="01">1</option>
                                          <option value="02">2</option>
                                          <option value="03">3</option>
                                          <option value="04">4</option>
                                          <option value="05">5</option>
                                          <option value="06">6</option>
                                          <option value="07">7</option>
                                          <option value="08">8</option>
                                          <option value="09">9</option>
                                          <option value="10">10</option>
                                          <option value="11">11</option>
                                          <option value="12">12</option>

                                       </select> <select name="date">
                                          <option value="date">일</option>
                                          <option value="01">1</option>
                                          <option value="02">2</option>
                                          <option value="03">3</option>
                                          <option value="04">4</option>
                                          <option value="05">5</option>
                                          <option value="06">6</option>
                                          <option value="07">7</option>
                                          <option value="08">8</option>
                                          <option value="09">9</option>
                                          <option value="10">10</option>
                                          <option value="11">11</option>
                                          <option value="12">12</option>
                                          <option value="13">13</option>
                                          <option value="14">14</option>
                                          <option value="15">15</option>
                                          <option value="16">16</option>
                                          <option value="17">17</option>
                                          <option value="18">18</option>
                                          <option value="19">19</option>
                                          <option value="20">20</option>
                                          <option value="21">21</option>
                                          <option value="22">22</option>
                                          <option value="23">23</option>
                                          <option value="24">24</option>
                                          <option value="25">25</option>
                                          <option value="26">26</option>
                                          <option value="27">27</option>
                                          <option value="28">28</option>
                                          <option value="29">29</option>
                                          <option value="30">30</option>
                                          <option value="31">31</option>

                                       </select>
                                    </p>
                                 </div>
                              </div>
                           </div>
                           <div class="col-xs-12 col-sm-12">
                              <div class="input-field message">
                                 <div class="check_styl check_styl2">
                                    <p>
                                       <span>지역</span><select name="lang"
                                          class="check_styl2_child">
                                          <option value="language">지역</option>
                                          <option value="서울">서울</option>
                                          <option value="경기도">경기도</option>
                                          <option value="강원도">강원도</option>
                                          <option value="경상도">경상도</option>
                                          <option value="충청도">충청도</option>
                                          <option value="전라도">전라도</option>
                                          <option value="제주도">제주도</option>
                                       </select>
                                    </p>
                                 </div>
                              </div>
                           </div>

                           <!--<div class="col-xs-12 col-sm-12">
                                        <div class="input-field message">
                                            <span class= "input-icon" ><i class="tf-pricetags"></i></span>
                                            <textarea name="message" id="message" class="form-control" placeholder="Write your message"></textarea>
                                        </div>
                                    </div>  ./col- -->

                           <div class="col-xs-12 col-sm-12 ">
                              <div class="input-field div_margin2">
                                 <span class="btn-border email_length">
                                    <button type="submit"
                                       class="btn btn-primary btn-custom-border text-uppercase email_length">가입하기</button>
                                 </span>
                              </div>
                              <!--<div class="msg-success">Your Message was sent successfully</div> 
                              <div class="msg-failed">뭔가 잘못되었어요, 다시 시도해 보세요</div>-->
                           </div>
                        </div>
                        <!-- ./col- -->
                     </form>
                     <!-- /.row -->
                  </div>
                  <!-- /.col- -->
               </div>
               <!-- /.row -->
            </div>
            <!-- /.container -->

            <nav class="page-nav clear">
               <div class="container">
                  <div class="flex flex-middle space-between">
                     <span class="prev-page"><a href="/user/login.do"
                        class="link">&larr; 이전</a></span> <span class="copyright hidden-xs">Copyright
                        &copy; 2021 ALL FOR YOU, All Rights Reserved.</span>
                  </div>
               </div>
               <!-- /.page-nav -->
            </nav>
            <!-- /.container -->

         </div>
         <!-- /.pt-tablecell -->
      </div>
      <!-- /.pt-table -->
   </main>
   <!-- /.site-wrapper -->

   <!-- ================================
        JavaScript Libraries
        ================================= -->
   <script src="/resource/js/vendor/jquery-2.2.4.min.js"></script>
   <script src="/resource/js/vendor/bootstrap.min.js"></script>
   <script src="/resource/js/jquery.easing.min.js"></script>
   <script src="/resource/js/isotope.pkgd.min.js"></script>
   <script src="/resource/js/jquery.nicescroll.min.js"></script>
   <script src="/resource/js/owl.carousel.min.js"></script>
   <script src="/resource/js/jquery-validation.min.js"></script>
   <script src="/resource/js/form.min.js"></script>
   <script src="/resource/js/main.js"></script>
</body>
</html>