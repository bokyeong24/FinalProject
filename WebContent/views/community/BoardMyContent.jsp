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
						<span class="con_title_btn">
							<a href="#a" class="back_btn" style="width:56px; text-align:center;">목록</a>
						</span>
					</h1>
					
					<p class="qs_title" style="margin-top:30px">
						<em>[일상]</em>
						<span>첫 생일파티 했어요ㅎㅎ</span>
					</p>
					<div class="qs_info_wrap">
						<span class="qs_id">
							<a href="#a">꿀비누나</a>
						</span>
						<div class="qs_info">
							<p><img src="<%=cp%>/img/eye_cnt.png">20</p>
							<p class="last"><img src="<%=cp%>/img/date_cnt.png">2020.12.25</p>
						</div><!-- .qs_info end -->
					</div><!-- .qs_info_wrap end --> 
					
					<div class="qs_text">
						<p>그저께 생일파티 했습니다!</p>
						<p>케익도 먹고 아주 행복한 하루를 보냈어요</p>
						<p>이제 1살이니까 더 의젓한 꿀비가 될거예요~!</p>
						<p><br></p>
						<p><br></p>
					</div>
					<div class="qs_empathy_wrap">
						<div class="empathy_info">
							<a href="#a"><img src="<%=cp%>/img/empathy_btn_off.png"></a>
							<p><a href="#a"><span class="recomref">0</span>&nbsp;명</a></p>
						</div>
						<form id="frmRecommend" method="post" action=""></form>
						<!-- action="/Community/Free/211483/recommend" -->
					</div>
					
					
					<div class="qs_btn">
						<!-- 내가 작성한 글일때, 수정 삭제 버튼 -->
						<ul>
							<li><a href="#a"><img src="<%=cp%>/img/modify_btn.png"></a></li>
							<!-- 게시글/modify 로 url 요청 -->
							<li><a href="javascript:void(0)" onclick="WEBBOARD.deleteArticle(211897)"><img src="<%=cp%>/img/delete_btn.png"></a></li>
							<form id="frmDelete" method="post" action="<!-- 현재페이지 url -->">
								<input type="hidden" name="no" value="<!-- 게시물번호 -->">
								<input type="hidden" name="redirectTo" value="/Board.jsp">
							</form>
						</ul>
					</div><!-- .qs_btn end -->
					
					
					<div id="ajaxRefresh">
						<script>
						    var attachType = 1;
						    var $createForm;
						    var $currentUnit;
						    $(document).ready(function (e) {
						        
						        bindUnitButtonEvent();

						        //하단 등록 버튼 (댓글전용)
						        $('.bottom_txar_wrap .txar_right_btn a').bind('click', function (e) {
						            e.preventDefault();
						            if (COMMON.isLogin)
						                WEBBOARD.createComment(0, 0, '', this);
						            else {
						                if (COMMON.isChannelingNotAgree)
						                    alert('제3자 제공동의가 필요합니다.');
						                else
						                    alert('로그인이 필요합니다.');
						            }
						        });
						        //취소 버튼
						        $(".reply_cancle").bind('click', function (e) {
						            e.preventDefault();
						            var txt_area = $(this).parent("li").parent("ul").parent(".txar_right_btn").parent(".txar_btn").parent(".txar_wrap");
						            txt_area.find("textarea").text("");
						            txt_area.hide();
						            txt_area.parent("div").find(".reply_text").show();
						            txt_area.parent("div").find(".reply_btn_wrap").show();
						        });
						        //더보기 버튼
						        $(".reply_more a").bind('click', function (e) {
						            e.preventDefault();
						            WEBBOARD.getRecommentList(e.currentTarget);
						        });
						    });

						    function bindUnitButtonEvent() {
						        //답글 버튼 (Form 오픈)
						        $(".reply_btn, .reply_btn_gray").unbind('click').bind('click', function (e) {

						            e.preventDefault();

						            //숨겨져 있는 이전 unit의 본문 영역이 있으면 다시 노출
						            if ($currentUnit) {
						                $currentUnit.find('.reply_btn_wrap').show();
						                $currentUnit.find('.reply_text').show();
						            }

						            //새로 선택된 unit
						            $currentUnit = $(e.currentTarget).closest('.reply');
						            if ($currentUnit.length == 0) {
						                $currentUnit = $(e.currentTarget).closest('.reply_gray');
						            }

						            //본문 내용 추출
						            var comment_sn = $currentUnit.find('input[name=comment_sn]').val();
						            var parent_comment_sn = $currentUnit.find('input[name=parent_comment_sn]').val();
						            var comment_writer_name = $currentUnit.find('input[name=comment_writer_name]').val();

						            //편집창 노출
						            $createForm = $('.txar_wrap');
						            $createForm.appendTo($currentUnit);
						            //내용 비움
						            $createForm.find('textarea[name=comment]').val('');
						            //답글 버튼(생성)
						            $createForm.find('.txar_right_btn a:eq(0)').unbind('click').bind('click', function (e) {
						                if (parent_comment_sn == '0')
						                    WEBBOARD.createComment(comment_sn, comment_sn, comment_writer_name, e.currentTarget);       //댓글의 답글
						                else
						                    WEBBOARD.createComment(parent_comment_sn, comment_sn, comment_writer_name, e.currentTarget);    //답글의 답글
						            });
						            if (attachType == 1) {
						                $(".emoticon_wrap").hide();
						                $('.emoticon_sum').remove();
						            }
						            if (attachType == 2) {
						                $('.emoticon_sum input[name=image_sn]').val(0);
						                $('.emoticon_sum').hide();
						            }
						            $createForm.show();
						        });
						        //수정 버튼 (Form 오픈)
						        $(".modify_reply").unbind('click').bind('click', function (e) {

						            e.preventDefault();

						            //숨겨져 있는 이전 unit의 본문 영역이 있으면 다시 노출
						            if ($currentUnit) {
						                $currentUnit.find('.reply_btn_wrap').show();
						                $currentUnit.find('.reply_text').show();
						            }
						            //새로 선택된 unit
						            $currentUnit = $(e.currentTarget).closest('.reply');
						            if ($currentUnit.length == 0) {
						                $currentUnit = $(e.currentTarget).closest('.reply_gray');
						            }

						            //편집창을 보이기 위해 본문 영역을 가림
						            $currentUnit.find('.reply_btn_wrap').hide();
						            $currentUnit.find('.reply_text').hide();

						            //본문 내용 추출
						            var comment = $currentUnit.find('textarea[name=comment_content]').val();
						            var comment_sn = $currentUnit.find('input[name=comment_sn]').val();
						            var parent_comment_sn = $currentUnit.find('input[name=parent_comment_sn]').val();
						            var comment_writer_name = $currentUnit.find('input[name=comment_writer_name]').val();
						            var emoticon_no = $currentUnit.find('input[name=emoticon_no]').val();
						            var image_sn = $currentUnit.find('input[name=image_sn]').val();

						            //편집창 노출
						            $createForm = $('.txar_wrap');
						            $createForm.appendTo($currentUnit);
						            //내용 채움
						            $createForm.find('textarea[name=comment]').val(comment);
						            //답글 버튼(수정)
						            $createForm.find('.txar_right_btn a:eq(0)').unbind('click').bind('click', function (e) {
						                WEBBOARD.modifyComment(comment_sn, e.currentTarget);
						            });
						            //이모티콘 노출
						            if (attachType == 1) {
						                $(".emoticon_wrap").hide();
						                if (emoticon_no != '0') {
						                    $('.emoticon_sum').remove();
						                    var image = 'https://ssl.nx.com/s2/game/maplestory/renewal/common/sum_emoticon' + emoticon_no + '.png';
						                    var emoticon = $('<span class="emoticon_sum"></span>');
						                    emoticon.append($('<img src="' + image + '" alt="">'));
						                    emoticon.append($('<em></em>')
						                        .append($('<a href="#a" onclick="del_emoticon(this)"></a>')
						                            .append($('<img src="https://ssl.nx.com/s2/game/maplestory/renewal/common/sum_emoticon_del.png" alt="삭제">'))));
						                    emoticon.appendTo('.txar_btn');
						                }
						                else {
						                    $('.emoticon_sum').remove();
						                }
						            }
						            //첨부이미지 노출
						            if (attachType == 2) {
						                if (image_sn != '0') {
						                    $('.txar_wrap .emoticon_sum input[name=image_sn]').val(image_sn);
						                    $('.txar_wrap .emoticon_sum').show();
						                }
						                else {
						                    $('.txar_wrap .emoticon_sum input[name=image_sn]').val(0);
						                    $('.txar_wrap .emoticon_sum').hide();
						                }
						            }
						            $createForm.show();
						        });
						        //삭제 버튼
						        $('.delete_reply').unbind('click').bind('click', function (e) {
						            e.preventDefault();
						            $currentUnit = $(e.currentTarget).closest('.reply');
						            if ($currentUnit.length == 0) {
						                $currentUnit = $(e.currentTarget).closest('.reply_gray');
						            }
						            var comment_sn = $currentUnit.find('input[name=comment_sn]').val();
						            WEBBOARD.deleteComment(comment_sn);
						        });
						        //신고 버튼
						        $('.reply_btn_wrap .report a').unbind('click').bind('click', function (e) {
						            e.preventDefault();
						            if (COMMON.isLogin) {
						                var url = $(e.currentTarget).attr('href');
						                var pop = window.open(url, 'badUserReport', 'width = 700, height = 680');
						                if (pop == null) {
						                    alert('팝업을 허용해 주세요.');
						                }
						            }
						            else {
						                if (COMMON.isChannelingNotAgree)
						                    alert('제3자 제공동의가 필요합니다.');
						                else
						                    alert('로그인이 필요합니다.');
						            }
						        });
						    }
						</script>
						
						<div class="reply_wrap">
							<!-- 리플 -->
							
							<div class="reply_title">
								<h2>
									댓글
									<span>1</span>	
								</h2>
							</div>
							<input type="hidden" name="comment_page" value="1">
							<ul class="reply_ul">
								<li>
									<!-- 댓글 -->
									<div class="reply">
										<p class="common_id">
											<a href="#a">토르누나</a>
											<span>2020.12.26 오전 10:36:00 </span>
										</p>
										<ul class="reply_btn_wrap">
											<li class="reply_btn"><a href="javascript:void(0)">답글</a></li>
											<li class="report">
												<a href="#a"><img src="<%=cp%>/img/report_btn.png"></a>
											</li>
										</ul>
										<div class="reply_text">
											우리 토르도 얼마전에 생일파티 했는데 ㅎㅎ 꿀비 축하해~~
										</div>
										<div class="txar_wrap ctracker" style="display: none;">
											<textarea name="comment" rows="10" cols="30" class="txar"></textarea>
											<div class="txar_btn">
												<div class="txar_right_btn">
													<span class="glist_number">(<em>0</em>/200)</span>
													<ul>
														<li><a href="#a"><img src="<%=cp%>/img/reply_btn01.png"></a></li>
														<li><a href="#a" class="reply_cancle"><img src="<%=cp%>/img/reply_btn02.png"></a></li>
													</ul>
												</div>
											</div>
										</div>
										
									</div>
								</li>
							</ul>
							
						</div><!-- /reply_wrap end -->
						
						<div class="page_numb2">
							<span class="cm_prev">
								<a><img src="<%=cp%>/img/re_prev_off.png"></a>
							</span>
							<a class="active">1</a>
							<span class="cm_next">
								<a><img src="<%=cp%>/img/re_next_off.png"></a>
							</span>
							
							
						</div>
						
						<div class="bottom_txar_wrap">
							<!-- 등록 -->
							<div class="bottom_txar ctracker">
								<textarea name="comment" rows="10" cols="30" class="txar"></textarea>
								<div class="bottom_txar_btn">
									<div class="txar_right_btn">
										<span class="glist_number">(<em>0</em>/200)</span>
										<span><a class="btn01_g" href="#a">등록</a></span>
									</div>
								</div>
							</div>
						
						</div><!-- .bottom_txar_wrap end -->
					</div><!-- #ajaxRefresh end -->
					
					<div class="page_move">
						<ul>
							<li>
								<span class="page_move_btn">
									<a href="#a"><img src="<%=cp%>/img/page_up.png">이전글</a>
								</span>
								<p class="title">
									<span><a href="#a">[후기]</a></span>
									<a href="#a">수제 껌 만들기</a>
									<ul class="page_move_info">
										<li><img src="<%=cp%>/img/date_cnt.png">2020.12.25</li>
									</ul>
								</p>
							</li>
							<li>
								<span class="page_move_btn">
									<a href="#a"><img src="<%=cp%>/img/page_down.png">다음글</a>
								</span>
								<p class="title">
									<span><a href="#a">[묻고답하기]</a></span>
									<a href="#a">강아지 처음 키워보는데..</a>
									<ul class="page_move_info">
										<li><img src="<%=cp%>/img/date_cnt.png">2020.12.25</li>
									</ul>
								</p>
							</li>
						</ul>
					
					</div><!-- .page_move end -->
	
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