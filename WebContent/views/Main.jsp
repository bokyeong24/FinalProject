<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>pettopia</title>
<link rel="stylesheet" href="<%=cp%>/css/main_master.css">
<link rel="stylesheet" type="text/css"
   href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet"
   href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://kit.fontawesome.com/d0c252d761.js"
   crossorigin="anonymous"></script>
<!--아이콘 링크 -->

</head>
<body>

   <header id="main-header">

      <nav class="header_inner">

         <div class="header_menu">
            <!--헤더 메뉴-->

            <div class="logo">
               <a href="main.html"> <img src="<%=cp%>/images/logo3.png" width="280"
                  alt="Logo" id="logo">
               </a>
            </div>


            <!----검색버튼 누른후 회색 화면 -->
            <div id="myOverlay" class="overlay">


               <div class="overlay-content">
                  <p class="closebtn" onclick="closeSearch()" title="Close Overlay">X</p>
                  <input type="text" placeholder="Search.." name="search">
                  <button type="submit">
                     <i class="fas fa-search"></i>
                  </button>


               </div>

            </div>
            <!----검색버튼 누른후 회색 화면 닫기-->



            <!-- 로그인 -->
            <ul class="head_btn">



               <li><a href="mypage.html"> <span>마이페이지</span></a></li>
               <li><a href="join.html"> <span>회원가입</span></a></li>
               <li><a href="login.html"> <span>로그인</span></a></li>
               <li class="button">
                  <button class="openBtn" onclick="openSearch()">
                     <i class="fas fa-search"></i>
                  </button>

               </li>
            </ul>
            <!-- 로그인 닫기-->




            <!-- 서브메뉴 -->
            <ul class="head_sub">


               <li><a href=""> <span>자유 게시판</span></a></li>
               <li><a href=""> <span>펫시터 찾기</span></a></li>
               <li><a href=""> <span>펫 다이어리</span></a></li>
               <li><a href=""> <span>강아지 산책</span></a></li>
            </ul>
            <!-- 서브메뉴 닫기-->


         </div>
         <!--헤드인-->
         <!--헤더 메뉴닫기-->
         <!--헤더닫기-->

      </nav>
   </header>


   <div id="main">

      <!-- 키 이미지 산책  -->
      <div id="image">

         <div class="work">
            <p class="work_name">
               혼자 산책하기 외로울때는<br> <strong class="box_name">산책모임</strong>에서 쉽게
               찾고<br> 새로운 강아지들도 만나보세요
            </p>
            <a href="#"><div class="work_text">산책모임 바로가기</div></a>
         </div>
      </div>


      <!-- 펫 다이어리 -->
      <div id="diary">
         <p class="diary_text">펫 다이어리</p>
         <div class="diary_image">
         <img src="<%=cp%>/images/Diary.jpg"
            style="border: 0.6px solid #44704D; border-radius: 10px; margin-top: 30px; float: left;">
         </div>
         <div class="diary_content">다이어리를 생성해서<br> 내 반려견의 활동을<br> 기록해보세요
         <a href="#">
            <p class="diary_go">펫 다이어리 만들기</p>
         </a>
         </div>
      </div>


      <section class="module parallax parallax-1">
         <div class="container_parallox"></div>
      </section>




      <div class="main_best">
         <!--메인_베스트-->
         <a href="">
            <div class="sub_best">
               <p class="garden_info_text">BEST 펫시터</p>
         </a>

         <ul class="best">
            <section class="autoplay">

               <div class="qwe">
                  <img src="<%=cp%>/images/a12.jpg"> <strong class="best_name">
                     <span class="best_product_name">강정강정</span>
                  </strong>
               </div>


               <div class="qwe">
                  <img src="<%=cp%>/images/a12.jpg"> <strong class="best_name">
                     <span class="best_product_name">강정강정</span>
                  </strong>
               </div>

               <div class="qwe">
                  <img src="<%=cp%>/images/a12.jpg"> <strong class="best_name">
                     <span class="best_product_name">강정강정</span>
                  </strong>
               </div>

               <div class="qwe">
                  <img src="<%=cp%>/images/a12.jpg"> <strong class="best_name">
                     <span class="best_product_name">강정강정</span>
                  </strong>
               </div>

               <div class="qwe">
                  <img src="<%=cp%>/images/a12.jpg"> <strong class="best_name">
                     <span class="best_product_name">강정강정</span>
                  </strong>
               </div>

               <div class="qwe">
                  <img src="<%=cp%>/images/a12.jpg"> <strong class="best_name">
                     <span class="best_product_name">강정강정</span>
                  </strong>
               </div>

            </section>




         </ul>


      </div>
      <!--베스트상품 div닫기-->
   </div>



   <div id="diary_info">
      <p class="diary_text">핫 한 게시글</p>



      <div class="info_info">
         <p class="garden_info_name">가장 인기글</p>
         <div class="garden_info">
            <i class="fas fa-bone"></i>
            <tt class="number1">001</tt>
            <br> <strong class="subject">반려견 알약 먹이는 꿀팁!!</strong> <br>
            <div class="line"></div>
            <br>


            <div class="d">
               <i class="fas fa-bookmark"></i>
               <tt class="price"> 평상시에 먹는 밥이나 간식에 타블렛 형태의 알약을 섞어줄 때 잘 먹는다면
                  괜찮을 것이다. 하지만,한 번 약의 쓴 맛을 알게 되면 이후 경계하고 꾀가 생겨 알약만 쏙 남기고는 한다. </tt>
               <br>
               <br> <a href=""><span class="plus">더 보기</span></a>
            </div>

         </div>
      </div>


      <div class="sudden_sale">
         <p class="garden_info_name">인기글</p>

         <table class="sudden_sale_list">
            <tr>
               <a href="#">
                  <td colspan="3" class="sudden"><tt class="sudden_sale_add">자유게시판</tt>
                     <tt class="sudden_sale_add1">청라호수공원 반려견 산책 짱짱!!</tt> <a href="#"><i
                        class="fas fa-plus-circle"></i></a></td>
               </a>
            </tr>
            <tr>
               <td colspan="3" class="sudden"><tt class="sudden_sale_add">자유게시판</tt>
                  <tt class="sudden_sale_add1">청라호수공원 반려견 산책 짱짱!!</tt> <a href="#"><i
                     class="fas fa-plus-circle"></i></a></td>
            </tr>
            <tr>
               <td colspan="3" class="sudden"><tt class="sudden_sale_add">자유게시판</tt>
                  <tt class="sudden_sale_add1">청라호수공원 반려견 산책 짱짱!!</tt> <a href="#"><i
                     class="fas fa-plus-circle"></i></a></td>
            </tr>
            <tr>
               <td colspan="3" class="sudden"><tt class="sudden_sale_add">자유게시판</tt>
                  <tt class="sudden_sale_add1">청라호수공원 반려견 산책 짱짱!!</tt> <a href="#"><i
                     class="fas fa-plus-circle"></i></a></td>
            </tr>
            <tr>
               <td colspan="3" class="sudden"><tt class="sudden_sale_add">자유게시판</tt>
                  <tt class="sudden_sale_add1">청라호수공원 반려견 산책 짱짱!!</tt> <a href="#"><i
                     class="fas fa-plus-circle"></i></a></td>
            </tr>
         </table>
      </div>


   </div>





   <div id="line"></div>

   <!--푸터-------------->


   <div id="footer">
      <div class="footer_inner">
         <div class="copyright">
            <img src="<%=cp%>/images/logo3.png" width="250" style="float: left;"><br>
            <br>
            <dt>SHOP NAME : PetToPia
               &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
               OWNER : 강정우</dt>
            <dt>Fax. 02-2222-2222
               &emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;TEL:
               02-2222-2222</dt>
            <dt>사업자등록번호 : 2222-22-222222</dt>
            <dt>소재지: 서울특별시 마포구 월드컵대로</dt>
         </div>



         <div class="copyright1">
            <dd>
               <i class="fas fa-phone-alt"></i>&ensp;02-2222-2222
            </dd>
            <dt>MON - FRI : PM 1:00 ~ PM 6:00</dt>
            <dt>(SAT,SUN,HOLIDAY CLOSED)</dt>
            <br>
            <br>
            <br>
            <dt class="last">Copyright (c) PetToPia All Rights Reserved</dt>
         </div>

         <div class="copyright2">
            <dd class="follow">follow</dd>
            <a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
               class="fab fa-instagram"></i></a> <a href="#"> <i
               class="fab fa-twitter"></i></a>



         </div>

      </div>
   </div>


   <!--푸터-------------->
   </div>
   <!-- end container -->

   <!-- 제이쿼리,스크립트 -->
   <script src="js/jquery-3.1.1.min.js"></script>
   <script src="js/scripts.js"></script>
   <script type="text/javascript"
      src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
   <script type="text/javascript">
      $('.autoplay').slick(
      {
         slidesToShow : 4,
         slidesToScroll : 1,
         autoplay : true,
         autoplaySpeed : 2000,
      });
   </script>
</body>
</html>