<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>

<link rel="stylesheet" href="<%=cp %>/css/bootstrap.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="<%=cp%>/css/board.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

</head>
<body>

	<div id="wrap"><!-- 바디 전체 -->
		
		<div class="header" style="background-color: #ccc; height: 100px;">
			헤더 영역
		</div>

		<div id="container">
			
			<!-- 게시판 공통사항 -->
			<div class="div_inner">
				<div class="contents_wrap">
					<!-- 게시글 -->
					<h1 class="con_title">
						자유게시판
						<div class="board_search_wrap" style="float:right; margin-right:0px">
							<span class="word_input" style="margin-top:0;"> 
								<input type="text" name="search_text" class> 
								<span class="btn"> 
									<a href="#a">
										<img src="<%=cp%>/img/search_btn.png"></a>
								</span>
							</span>
							
							<span class="sort_wrap" style="margin-top:0;"> 
								<select name="search_type">
									<option value="title">제목</option>
									<option value="name">작성자</option>
									<option value="titleAndContent">제목+내용</option>
								</select>
							</span> 
							<span class="sort_wrap" style="margin-top:0;">
								<select name="search_board">
									<option value="t">전체</option>
									<option value="i">꿀팁 정보</option>
									<option value="d">일상</option>
									<option value="r">후기</option>
									<option value="q">묻고답하기</option>
								</select>
							</span> 
						</div>
						
						
					</h1>
					
					<div class="board">
					<ul>
						<li>
							<p class="list_title">
								<a href="#a" style="color: rgb(51, 51, 51);"><span class="category">[꿀팁 정보]</span>
									<span class="title">간단 수제간식 만들기</span>
									<img class="new" src="<%=cp %>/img/new.png">
								</a>
							</p>
							<div class="board_other_info">
								<span class="user_name"> <a href="">황금손</a>
								</span>
								<ul>
									<li class="like_cnt">0</li>
									<li class="date_cnt">2020.12.25</li>
									<li class="eye_cnt">20</li>
								</ul>
							</div>
						</li>
						<li>
							<p class="list_title">
								<a href="#a" style="color: rgb(51, 51, 51);"><span class="category">[일상]</span>
									<span class="title">우리 바비 보고가세용</span>
									<img class="new" src="<%=cp %>/img/new.png">
								</a>
							</p>
							<div class="board_other_info">
								<span class="user_name"> <a href="">babiluv</a>
								</span>
								<ul>
									<li class="like_cnt">0</li>
									<li class="date_cnt">2020.12.25</li>
									<li class="eye_cnt">20</li>
								</ul>
							</div>
						</li>
						<li>
							<p class="list_title">
								<a href="#a" style="color: rgb(51, 51, 51);"><span class="category">[일상]</span>
									<span class="title">다들 글 쓰실 때 조심하세여ㅠㅠ</span>
									<img class="new" src="<%=cp %>/img/new.png">
								</a>
							</p>
							<div class="board_other_info">
								<span class="user_name"> <a href="">핑키엄마</a>
								</span>
								<ul>
									<li class="like_cnt">0</li>
									<li class="date_cnt">2020.12.25</li>
									<li class="eye_cnt">20</li>
								</ul>
							</div>
						</li>
						<li>
							<p class="list_title">
								<a href="#a" style="color: rgb(51, 51, 51);"><span class="category">[묻고답하기]</span>
									<span class="title">산책하기 싫은건가요??</span>
									<img class="new" src="<%=cp %>/img/new.png">
								</a>
							</p>
							<div class="board_other_info">
								<span class="user_name"> <a href="">두부맘</a>
								</span>
								<ul>
									<li class="like_cnt">0</li>
									<li class="date_cnt">2020.12.25</li>
									<li class="eye_cnt">20</li>
								</ul>
							</div>
						</li>
						<li>
							<p class="list_title">
								<a href="#a" style="color: rgb(51, 51, 51);"><span class="category">[묻고답하기]</span>
									<span class="title">강아지 마취</span>
									<img class="new" src="<%=cp %>/img/new.png">
								</a>
							</p>
							<div class="board_other_info">
								<span class="user_name"> <a href="">하이루</a>
								</span>
								<ul>
									<li class="like_cnt">0</li>
									<li class="date_cnt">2020.12.25</li>
									<li class="eye_cnt">20</li>
								</ul>
							</div>
						</li>
						<li>
							<p class="list_title">
								<a href="#a" style="color: rgb(51, 51, 51);"><span class="category">[후기]</span>
									<span class="title">흡수패드 추천 : 여러 패드 사용 후기</span>
									<img class="new" src="<%=cp %>/img/new.png">
								</a>
							</p>
							<div class="board_other_info">
								<span class="user_name"> <a href="">콩이땅이</a>
								</span>
								<ul>
									<li class="like_cnt">0</li>
									<li class="date_cnt">2020.12.25</li>
									<li class="eye_cnt">20</li>
								</ul>
							</div>
						</li>
						<li>
							<p class="list_title">
								<a href="#a" style="color: rgb(51, 51, 51);"><span class="category">[꿀팁 정보]</span>
									<span class="title">산책 준비 전 필수사항 꿀팁</span>
									<img class="new" src="<%=cp %>/img/new.png">
								</a>
							</p>
							<div class="board_other_info">
								<span class="user_name"> <a href="">오지오지</a>
								</span>
								<ul>
									<li class="like_cnt">0</li>
									<li class="date_cnt">2020.12.25</li>
									<li class="eye_cnt">20</li>
								</ul>
							</div>
						</li>
						<li>
							<p class="list_title">
								<a href="#a" style="color: rgb(51, 51, 51);"><span class="category">[후기]</span>
									<span class="title">포메 곰돌이컷 후기~♡</span>
									<img class="new" src="<%=cp %>/img/new.png">
								</a>
							</p>
							<div class="board_other_info">
								<span class="user_name"> <a href="">딸랑구</a>
								</span>
								<ul>
									<li class="like_cnt">0</li>
									<li class="date_cnt">2020.12.25</li>
									<li class="eye_cnt">20</li>
								</ul>
							</div>
						</li>
						<li>
							<p class="list_title">
								<a href="#a" style="color: rgb(51, 51, 51);"><span class="category">[묻고답하기]</span>
									<span class="title">강아지 처음 키워보는데..</span>
									<img class="new" src="<%=cp %>/img/new.png">
								</a>
							</p>
							<div class="board_other_info">
								<span class="user_name"> <a href="">rnlcksgdk</a>
								</span>
								<ul>
									<li class="like_cnt">0</li>
									<li class="date_cnt">2020.12.25</li>
									<li class="eye_cnt">20</li>
								</ul>
							</div>
						</li>
						<li>
							<p class="list_title">
								<a href="#a" style="color: rgb(51, 51, 51);"><span class="category">[일상]</span>
									<span class="title">첫 생일파티 했어요ㅎㅎ</span>
									<img class="new" src="<%=cp %>/img/new.png">
								</a>
							</p>
							<div class="board_other_info">
								<span class="user_name"> <a href="">꿀비누나</a>
								</span>
								<ul>
									<li class="like_cnt">0</li>
									<li class="date_cnt">2020.12.25</li>
									<li class="eye_cnt">20</li>
								</ul>
							</div>
						</li>
					</ul>
					
					<span class="write">
						<a class="btn02" href="/create">글작성</a>
						<!-- <a class="btn02" href="javascript:void(0)" onclick="alert('로그인이 필요합니다.')">글작성</a> -->
					</span>
					
					
					<div class="page_num">
						<!-- 게시글 페이징 -->
						<span class="all_prev">
							<a>
								<img src="<%=cp%>/img/all_prev.png">
							</a>
						</span>
						<span class="prev">
							<a>
								<img src="<%=cp%>/img/prev.png">
							</a>
						</span>
						<a class="active">1</a>
						<a href="#a">2</a>
						<a href="#a">3</a>
						<a href="#a">4</a>
						<a href="#a">5</a>
						<a href="#a">6</a>
						<a href="#a">7</a>
						<a href="#a">8</a>
						<a href="#a">9</a>
						<a href="#a">10</a>
						<span class="next">
							<a href="#a">
								<!-- 현재 페이지 +1 -->
								<img src="<%=cp%>/img/next.png">
							</a>
						</span>
						<span class="all_next">
							<a href="#a">
								<!-- 마지막 페이지 -->
								<img src="<%=cp%>/img/all_next.png">
							</a>
						</span>
		
					</div><!-- .page_num end -->
					
				</div><!-- .board end -->
	
				</div><!-- .contents_wrap end -->
				
				<div class="right_aside">
					<!-- 우측 사이드 -->
					
					<div class="side_board_info">
						<h2>
							공지사항
							<span class="side_more_btn">
								<a href="#a">
									<img src="<%=cp%>/img/side_board_more_on.png">
								</a>
							</span>
						</h2>
						
						<ul class="side_board_wrap">
							<li><a href="#a"><span class="color1">공지</span>연휴 고객센터 운영 중단 안내</li>
							<li><a href="#a"><span class="color1">공지</span>모임 에티켓 안내</li>
							<li><a href="#a"><span class="color1">공지</span>로그인 문제 해결방법을 확인해보세요</li>
							<li><a href="#a"><span class="color1">공지</span>12/24(목) 03:00~05:00 서버점검 안내</li>
							<li><a href="#a"><span class="color1">공지</span>테스트 서비스 운영기간 안내</li>
						</ul>
						
						<div class="side_banner_wrap">
							<div class="side_bn_img_wrap">
								<ul>
									<li><a href="#a" target="_black"><img src="<%=cp%>/img/ad_img3.png"></a></li>
								</ul>
							</div>
							<div class="side_bn_txt">
								<p id="event_current_text">
									<span style="display: block;">new! 애견샴푸</span>
								</p>
								<!-- 
								<div class="side_bn_control">
								
								</div>
								-->
							</div>
						</div>
					</div>
				</div>
				
			</div>

		</div>

		<div id="footer" style="background-color: darkGray;">
			<div class="div_inner">
				<div class="footer_info">
					<ul>
						<li>프로젝트소개</li>
						<li>이용약관</li>
						<li>사이트맵</li>
					</ul>
					<br>
					<p>
						<span>펫토피아</span>
						<span style="margin-left:5px;">강정우 김보경 박민하 박해진 정의진</span><br>
						<span>쌍용강북교육센터</span>
						<span style="margin-left:5px;">서울 마포구 월드컵북로 21 2층 풍성빌딩(서교동 447-5)</span>
					</p>
					<br>
					<span class="copyright">ⓒ 펫토피아 All Rights Reserved.</span>
				</div><!-- .footer_info end -->
			</div><!-- .div_inner end -->

		</div><!-- #footer end -->

	</div>

</body>
</html>