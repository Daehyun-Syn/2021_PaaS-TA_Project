<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="static poly.util.CmmUtil.nvl"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="poly.dto.ProjectsDTO"%>

<!DOCTYPE html>
<html>
<!-- 컨토롤러에서 실행된 로직들의 결과값을 가져온다 == rlist에 담아진 값들  -->
<%
   List<ProjectsDTO> rList = (List<ProjectsDTO>) request.getAttribute("rList");
%>

<head>


<meta charset="utf-8">
<title>AII FOR YOU</title>
<link
   href="${pageContext.request.contextPath}/resource/css/food_johns.css"
   typs="text/css" rel="stylesheet">
<!--이거 지우면 안됨-->
<link
   href="${pageContext.request.contextPath}/resource/css/food_styl.css"
   typs="text/css" rel="stylesheet">
<link rel="stylesheet" href="/resource/css/style.css">
<script
   src="${pageContext.request.contextPath}/resource/js/jquery-3.3.1.js">
</script>
<script
   src="${pageContext.request.contextPath}/resource/js/foodisotope.pkgd.js">
</script>
<script>
$(document).ready(function(e) {
    //메인 메뉴에 마우스 올리면 서브메뉴 나옴
   $('.nav > ul > li').hover(function(){
      $('.sub').stop().slideDown();
      $('.sub_bg').stop().slideDown();
   },
   function(){
      $('.sub').stop().slideUp();
      $('.sub_bg').stop().slideUp();
   });
   
   //버튼 누르면 색 고정
   $('button').click(function(){
      $('button').removeClass('active');
      $(this).addClass('active');
   });
});
</script>

<style>
#google_translate_element > div > div {
   position: relative;
   min-width: 150px;
   height:30px;
}
   .height{
      width:100%;
      height:410px !important;
      margin-bottom:20px !important;
   }
</style>

</head>

<body>
   <div class="wrap">


      <section>

         <h2 class="fppd_h2">
            <a href="/index.do"><img src="/resource/img/logo.png"
               class="img_size2" alt="logo"></a>
         </h2>
         <h2 class="h2_seat2">
            <code class="h2_seat_color" >음식 게시판</code>
         </h2>
      
               
         
         <div class="siub">

            <!--<div class="siud_menu">
               <!--<ul class="menu_li">
                   <li><a href="siub_style.html">전체메뉴</a></li>
                    <li><a href="siub_style2.html">베스트메뉴</a></li>
                    <li><a href="#">사이드메뉴</a></li>
                    <li><a href="#">추가토핑</a></li>
                </ul>
            </div>-->

            <div class="filters button-group js-radio-button-group">
            
               <button class="button is-checked button_first" data-filter="*">전체</button>
               <button class="button" data-filter=".a1">주메뉴</button>
               <button class="button" data-filter=".a2">반찬</button>
               <button class="button" data-filter=".a3">육류</button>
            </div>


            <div class="grid">
               <div class="element-item transition metal a1 height"
                  data-category="transition">
                  <a href="#"><img src="/resource/img/food/bibimbap.jpg">
                  </a>
                  <div class=".a1">
                     <h3>비빔밥</h3>
                     <p>
                        흰밥에 고기볶음, 나물, 채소 등의 여러 종류의 반찬을 섞어 비벼 먹도록 만든 음식
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>쇠고기, 달걀, 콩</p>
                  </div>
               </div>
               <div class="element-item metalloid a1 a3 height" data-category="metalloid">
                  <a href="#"><img src="/resource/img/food/bulgogi.jpg"></a>
                  <div class="a1a2a3">
                     <h3>불고기</h3>
                     <p>
                        쇠고기 등을 얇게 저며서 양념에 재웠다가 불에 구워 먹는 음식
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>쇠고기, 돼지고기, 콩</p>
                  </div>
               </div>
               <div class="element-item post-transition metal a2 height"
                  data-category="post-transition">
                  <a href="#"><img src="/resource/img/food/cabbagekimchi.jpg"></a>
                  <div class="a2">
                     <h3>배추김치</h3>
                     <p>
                            소금에 절인 배추에 무채, 고춧가루, 다진 마늘, 파, 젓갈 등을 넣고 버무린 속을 넣어 담근 음식
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>밀, 새우</p>
                  </div>
               </div>
               <div class="element-item post-transition metal a1 a3"
                  data-category="post-transition">
                  <a href="#"><img src="/resource/img/food/chicken.jpg"></a>
                  <div class="c1 c3">
                     <h3>프라이드치킨</h3>
                     <p>닭고기를 튀김가루를 묻혀 튀긴 음식</p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>닭고기, 밀, 우유</p>
                  </div>
               </div>
               <div class="element-item transition metal a2 height"
                  data-category="transition">
                  <a href="#"><img src="/resource/img/food/cucumber.jpg"></a>
                  <div class="c1 c2">
                     <h3>오이소박이</h3>
                     <p>
                        오이에 파, 마늘, 생강, 고춧가루를 섞은 소에 담가 만든 김치
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>생선</p>
                  </div>
               </div>
               <div class="element-item alkali metal a2" data-category="alkali">
                  <a href="#"><img src="/resource/img/food/fern.jpg"></a>
                  <div class="c1">
                     <h3>고사리나물</h3>
                     <p>
                         말린 고사리 등을 데친 후 물에 담가 양념하고 볶은 나물
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>콩</p>
                  </div>
               </div>
               <div class="element-item alkali metal a1" data-category="alkali">
                  <a href="#"><img src="/resource/img/food/gimbap.jpg"></a>
                  <div class="c1">
                     <h3>김밥</h3>
                     <p>
                         밥 위에 음식을 펴 바르고, 여러 가지 반찬에 말아 썰어 먹는 음식
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>
                        쇠고기,콩
                     </p>
                  </div>
               </div>
               <div class="element-item transition metal a2 height"
                  data-category="transition">
                  <a href="#"><img src="/resource/img/food/greenonion.jpg"></a>
                  <div class="c1 c2">
                     <h3>파김치</h3>
                     <p>파로 담근 김치</p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>생선</p>
                  </div>
               </div>
               <div class="element-item alkaline-earth metal a1 height"
                  data-category="alkaline-earth">
                  <a href="#"><img src="/resource/img/food/greenPancake.jpg"></a>
                  <div class="c1 c2">
                     <h3>파전</h3>
                     <p>
                        파를 듬뿍 깔고 밀가루 반죽을 얹어서 기름 두른 프라이팬에 지진 요리
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>갑각류, 쇠고기, 밀, 콩</p>
                  </div>
               </div>
               <div class="element-item transition metal a1 height"
                  data-category="transition">
                  <a href="#"><img src="/resource/img/food/kimchipancake.jpg"></a>
                  <div class="c1">
                     <h3>김치전</h3>
                     <p>
                        밀가루 반죽에 잘 익은 김치를 송송 썰어 넣고 부친 전이다. 잘게 썬 돼지고기나 오징어, 조갯살 등을 섞어 부치기도 한다
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>갑각류, 밀, 콩</p>
                  </div>
               </div>
               <div class="element-item post-transition metal a1"
                  data-category="post-transition">
                  <a href="#"><img src="/resource/img/food/kimchirice.jpg"></a>
                  <div class="c1 c2">
                     <h3>김치볶음밥</h3>
                     <p>
                        김치를 잘게 썰어 밥과 함께 프라이팬에 올린 뒤 볶은 음식이다. 식성에 따라 소고기나 돼지고기, 채소 등을 함께 넣고 볶아 먹는다
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>달걀, 돼지고기, 콩</p>
                  </div>
               </div>
               <div class="element-item metalloid a2" data-category="metalloid">
                  <a href="#"><img src="/resource/img/food/kimchistew.jpg"></a>
                  <div class="c1">
                     <h3>김치찌개</h3>
                     <p>잘 익은 김치에 돼지고기, 두부, 파 등을 넣고 얼큰하게 끓인 음식</p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>돼지고기, 콩</p>
                  </div>
               </div>
               <div class="element-item transition metal a1 height"
                  data-category="transition">
                  <a href="#"><img src="/resource/img/food/noodles.jpg"></a>
                  <div class="c1">
                     <h3>잔치국수</h3>
                     <p>
                        삶은 국수에 계란지단 등으로 고명을 얹고 멸치장국을 부어낸 국수
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>갑각류, 밀, 콩</p>
                  </div>
               </div>
               <div class="element-item lanthanoid metal inner-transition a2 height" 
                  data-category="lanthanoid">
                  <a href="#"><img src="/resource/img/food/pumpkinstirfried.jpg"></a>
                  <div class="c1">
                     <h3>애호박볶음</h3>
                     <p>
                        기름을 두른 팬에 애호박과 다진 마늘, 파, 새우젓을 넣고 볶은 나물
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>새우</p>
                  </div>
               </div>
               <div class="element-item noble-gas nonmetal a1 a3 height"
                  data-category="noble-gas">
                  <a href="#"><img src="/resource/img/food/ribsteamed.jpg"></a>
                  <div class="c1 c2">
                     <h3>갈비찜</h3>
                     <p>소를 물에 담가 핏물을 없애고 지방을 제거하여 당근과 밤, 은행 등을 섞어 간장을 비롯한 갖은 양념을 하여 부드럽게 조려낸 음식</p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>쇠고기, 콩</p>
                  </div>
               </div>
               <div class="element-item diatomic nonmetal a2"
                  data-category="diatomic">
                  <a href="#"><img src="/resource/img/food/radishkimchi.jpg"></a>
                  <div class="c1">
                     <h3>깍두기</h3>
                     <p>
                        사각형으로 썬 무를 소금에 절였다가 물기를 빼고 고춧가루, 새우젓, 미나리, 쪽파, 다진 마늘, 다진 파 등을 넣고 버무린 음식
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>콩</p>
                  </div>
               </div>
               <div class="element-item actinoid metal inner-transition a1 a3 height"
                  data-category="actinoid">
                  <a href="#"><img src="/resource/img/food/samgyetang.jpg"></a>
                  <div class="c1">
                     <h3>삼계탕</h3>
                     <p>
                      닭의 뱃속에 찹쌀과 마늘, 대추, 인삼을 넣고 물을 부어 오래 끓인 음식
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>닭고기</p>
                  </div>
               </div>
               <div class="element-item actinoid metal inner-transition a1 a2 height"
                  data-category="actinoid">
                  <a href="#"><img src="/resource/img/food/RiceSoup.jpg"></a>
                  <div class="c1">
                     <h3>떡만둣국</h3>
                     <p>육수에 만두와 얇게 썬 가래떡을 함께 넣어 끓여 먹는 음식</p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>밀, 돼지고기, 달걀</p>
                  </div>
               </div>
               <div class="element-item actinoid metal inner-transition a1 a3 height"
                  data-category="actinoid">
                  <a href="#"><img src="/resource/img/food/seasoningchicken.jpg"></a>
                  <div class="c1">
                     <h3>양념치킨</h3>
                     <p>
                        적당한 크기로 자른 닭고기를 밑간하여 식용유에 튀겨 간장이나 고추장 등으로 만든 양념에 버무린 음식
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>닭고기, 콩, 토마토, 우유</p>
                  </div>
               </div>
               <div class="element-item actinoid metal inner-transition a2"
                  data-category="actinoid">
                  <a href="#"><img src="/resource/img/food/SeaweedSoup.jpg"></a>
                  <div class="c1">
                     <h3>미역국</h3>
                     <p>
                        소고기나 홍합, 멸치 국물에 미역을 넣고 끓인 맑은 국
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>콩</p>
                  </div>
               </div>
               <div class="element-item actinoid metal inner-transition a1"
                  data-category="actinoid">
                  <a href="#"><img src="/resource/img/food/songpyeon.jpg"></a>
                  <div class="c1">
                     <h3>송편</h3>
                     <p>
                        멥쌀가루를 반죽하여 깨, 콩, 밤, 팥 등의 소를 넣고 모양을 빚어서 찐 떡
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>콩</p>
                  </div>
               </div>
               <div class="element-item actinoid metal inner-transition a1 a3 height"
                  data-category="actinoid">
                  <a href="#"><img src="/resource/img/food/SpicyChicken.jpg"></a>
                  <div class="c1">
                     <h3>닭갈비</h3>
                     <p>
                        닭고기를 고추장 양념장에 재웠다가 뜨겁게 달군 팬에 기름을 두르고 양배추, 고구마, 당근, 떡과 함께 볶아 먹는 강원도 춘천의 향토 음식
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>닭고기, 밀, 콩</p>
                  </div>
               </div>
               <div class="element-item actinoid metal inner-transition a2 height"
                  data-category="actinoid">
                  <a href="#"><img src="/resource/img/food/spinach.jpg"></a>
                  <div class="c1">
                     <h3>시금치나물</h3>
                     <p>
                        끓는 물에 데친 시금치를 소금, 다진 파 · 마늘, 참기름, 깨소금으로 무친 것
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>생선</p>
                  </div>
               </div>
               <div class="element-item actinoid metal inner-transition a1 a3 height"
                  data-category="actinoid">
                  <a href="#"><img src="/resource/img/food/steamedchicken.jpg"></a>
                  <div class="c1">
                     <h3>찜닭</h3>
                     <p>
                        토막 낸 닭에 채 썬 각종 채소와 양념을 넣고 끓이다가 당면을 섞어 조려 낸 음식
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>콩, 닭고기</p>
                  </div>
               </div>
               <div class="element-item actinoid metal inner-transition a1 a3 height"
                  data-category="actinoid">
                  <a href="#"><img src="/resource/img/food/stirfriedmeat.jpg"></a>
                  <div class="c1">
                     <h3>제육볶음</h3>
                     <p>
                        돼지고기를 얇게 썰고 매콤한 양념장에 무쳐서 볶은 음식
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>
                        콩, 돼지고기
                     </p>
                  </div>
               </div>
               <div class="element-item actinoid metal inner-transition a1 a3 height"
                  data-category="actinoid">
                  <a href="#"><img src="/resource/img/food/tteokgalbi.jpg"></a>
                  <div class="c1">
                     <h3>떡갈비</h3>
                     <p>
                        갈비살을 곱게 다져 간장, 다진 마늘 등으로 갖은 양념하여 치댄 뒤 갈비뼈에 도톰하게 붙여 남은 양념장을 발라가며 구워 먹는 음식
                     </p>
                     <p class="p1" style="margin:2% 0 1% 0; font-weight:600;">알레르기 정보</p>
                     <p>쇠고기, 돼지고기, 콩</p>
                  </div>
               </div>

            </div>
      </section>
      <div class="div_button">
         <button type="button" onclick="location.href='/index.do' "
            class="btn button_FA6862 button_FA6862_seat"
            style="width: 120px; margin-right: 10px;">이전 페이지</button>
      </div>
   </div>



   <script>
// init Isotope
var $grid = $('.grid').isotope({
  itemSelector: '.element-item',
  layoutMode: 'fitRows',
  getSortData: {
    name: '.name',
    symbol: '.symbol',
    number: '.number parseInt',
    category: '[data-category]',
    weight: function( itemElem ) {
      var weight = $( itemElem ).find('.weight').text();
      return parseFloat( weight.replace( /[\(\)]/g, '') );
    }
  }
});

// filter functions
var filterFns = {
  // show if number is greater than 50
  numberGreaterThan50: function() {
    var number = $(this).find('.number').text();
    return parseInt( number, 10 ) > 50;
  },
  // show if name ends with -ium
  ium: function() {
    var name = $(this).find('.name').text();
    return name.match( /ium$/ );
  }
};

// bind filter button click
$('.filters').on( 'click', 'button', function() {
  var filterValue = $( this ).attr('data-filter');
 
  filterValue = filterFns[ filterValue ] || filterValue;
  $grid.isotope({ filter: filterValue });
});

$('.button-group').each( function( i, buttonGroup ) {
  var $buttonGroup = $( buttonGroup );
  $buttonGroup.on( 'click', 'button', function() {
    $buttonGroup.find('.is-checked').removeClass('is-checked');
    $( this ).addClass('is-checked');
  });
});
  
</script>
</body>
</html>