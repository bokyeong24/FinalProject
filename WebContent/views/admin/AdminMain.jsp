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
<title>관리자 | 메인</title>

<link rel="stylesheet" href="<%=cp %>/css/bootstrap.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/js/bootstrap.min.js"></script>

<style type="text/css">
	table, th, td
	{
		text-align: center;
	}
	.left_side
	{
		width: 200px;
		height: 100%;
    	float: left;
    	left: 0px;
    	position: fixed;
    	background-color: white;
	}
	#header
	{
		width: 100%;
		height: 100px;
    	left: 0px;
    	background-color: #ccc;
	}
	.footer
	{
		width: 100%;
		height: 100px;
    	left: 0px;
    	background-color: #ccc;
	}
	.container
	{
		width:1300px;
		display: inline-flex;
	}
	.contents
	{
		margin-left: 220px;
	}
	#tbl1 td:nth-child(7), #tbl2 td:nth-child(9), #tbl3 td:nth-child(9)
	{
		padding-top: 3px;
		padding-bottom: 3px;
		vertical-align: middle;
	}
</style>

<script type="text/javascript">
	
	function petsitterDetail()
	{
		window.open("PetSitterApplicationDetail.jsp", "", "width=800, height=720, top=300, left=400");
	}

	function userDetail()
	{
		window.open("UserInfoDetail.jsp", "", "width=650, height=720, top=300, left=400");
	}
	
</script>

</head>
<body>

<div id="header">
		<c:import url="AdminHeader.jsp"></c:import>
</div>




<div class="container">
	<div class="left_side">
		<c:import url="AdminLeftSide.jsp"></c:import>
	</div><!-- .left_side end -->
	
	<div class="contents">
		<h1>관리자 메인</h1>
		
		<div style="margin-bottom: 70px;">
			<h3>신규 가입회원 목록 <small>2020-12-31</small></h3>
			<p>총 회원수 : 100명  /  가입 : 3명  /  탈퇴 : 1명</p>
			<p>
				<span style="color: gray;">업데이트 시간 :  2020-12-31 16:12:39</span>
				<a href="#a" class="glyphicon glyphicon-refresh" style="margin-left: 10px;"></a>
			</p>
			<table class="table">
				<tr>
					<th></th>
					<th>회원등록코드</th>
					<th>아이디</th>
					<th>닉네임</th>
					<th>주민번호</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>주소</th>
				</tr>
				<tr>
					<td>3</td>
					<td>1234569</td>
					<td>rnlcksg77</td>
					<td>아롱이누나</td>
					<td>950716-2******</td>
					<td>010-1212-2321</td>
					<td>rnlcksg77@naver.com</td>
					<td>[01270] 서울특별시 광진구 구의동 123-123</td>
				</tr>
				<tr>
					<td>2</td>
					<td>1234568</td>
					<td>gugu81</td>
					<td>구구81</td>
					<td>990801-1******</td>
					<td>010-3785-4682</td>
					<td>gugu81@naver.com</td>
					<td>[26655] 경기도 안양시 동안구 관양동 32-12</td>
				</tr>
				<tr>
					<td>1</td>
					<td>1234567</td>
					<td>ba__bo__</td>
					<td>순돌맘</td>
					<td>871222-2******</td>
					<td>010-7845-7845</td>
					<td>ba__bo__@gmail.com</td>
					<td>[35002] 서울특별시 송파구 송파동 101-55</td>
				</tr>
			</table>
			<a href="#a" class="btn btn-default" role="button">회원 전체보기</a>
		</div>
		
		
		<div style="margin-bottom: 70px;">
			<h3>펫시터 신청 목록 <small>2020-12-31</small></h3>
			<p>
				<span style="color: gray;">업데이트 시간 :  2020-12-31 16:12:39</span>
				<a href="#a" class="glyphicon glyphicon-refresh" style="margin-left: 10px;"></a>
			</p>
			<table class="table" id="tbl1">
				<tr>
					<th><input type="checkbox"></th>
					<th></th>
					<th>펫시터신청코드</th>
					<th>아이디</th>
					<th>닉네임</th>
					<th>나이</th>
					<th>심사결과</th>
					<th>처리일시</th>
					<th>처리담당</th>
				</tr>
				<tr>
					<th><input type="checkbox"></th>
					<td>5</td>
					<td><a href="javascript:petsitterDetail();">PST1234516</a></td>
					<td><a href="javascript:userDetail()">tkaruq_2</a></td>
					<td>오늘의돌보미</td>
					<td>32세</td>
					<td>
						<a href="javascript:petsitterDetail();" class="btn btn-default" role="btn">신청내역 보기</a>
					</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<th><input type="checkbox"></th>
					<td>4</td>
					<td><a href="#a">PST1234515</a></td>
					<td><a href="#a">hatnim1315</a></td>
					<td>햇님</td>
					<td>28세</td>
					<td>
						<a href="javascript:petsitterDetail();" class="btn btn-default" role="btn">신청내역 보기</a>
					</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<th><input type="checkbox"></th>
					<td>3</td>
					<td><a href="#a">PST1234514</a></td>
					<td><a href="#a">55ekfhddl</a></td>
					<td>다롱다롱</td>
					<td>35세</td>
					<td>
						<a href="javascript:petsitterDetail();" class="btn btn-default" role="btn">신청내역 보기</a>
					</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<th><input type="checkbox"></th>
					<td>2</td>
					<td><a href="#a">PST1234513</a></td>
					<td><a href="#a">sorkqkfh257</a></td>
					<td>제2의강형욱</td>
					<td>28세</td>
					<td>
						<a href="#a">거절(사유)</a>
					</td>
					<td>2020-12-31 10:12:31</td>
					<td>운영자3</td>
				</tr>
				<tr>
					<th><input type="checkbox"></th>
					<td>1</td>
					<td><a href="#a">PST1234512</a></td>
					<td><a href="#a">1212fefe</a></td>
					<td>딸기가좋아</td>
					<td>43세</td>
					<td>
						승인
					</td>
					<td>2020-12-31 10:09:02</td>
					<td>운영자3</td>
				</tr>
			</table>
		</div>
	
		
		
		<div style="margin-bottom: 70px;">
			<h3>회원 신고 접수 내역 <small>2020-12-31</small></h3>
			<p>
				<span style="color: gray;">업데이트 시간 :  2020-12-31 16:12:39</span>
				<a href="#a" class="glyphicon glyphicon-refresh" style="margin-left: 10px;"></a>
			</p>
			<table class="table" id="tbl2">
				<tr>
					<th><input type="checkbox"></th>
					<th></th>
					<th>접수코드</th>
					<th>아이디</th>
					<th style="width: 150px;">신고내용</th>
					<th>첨부파일</th>
					<th>신고회원</th>
					<th>신고일시</th>
					<th>처리결과</th>
					<th>처리일시</th>
					<th>처리담당</th>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>4</td>
					<td>WU451231</td>
					<td>ksd1026</td>
					<td>욕설</td>
					<td><a href="#a">캡처.png</a></td>
					<td>wlals1004</td>
					<td>2020-12-31</td>
					<td>
						<a href="#a" class="btn btn-default">처리</a>
						<a href="#a" class="btn btn-default">제재불가</a>
					</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>3</td>
					<td>WU451230</td>
					<td>ksd1026</td>
					<td>욕설</td>
					<td><a href="#a">캡처.png</a></td>
					<td>wlals1004</td>
					<td>2020-12-31</td>
					<td>
						<a href="#a">제재불가(사유)</a>
					</td>
					<td>2020-12-31 13:06:28</td>
					<td>운영자1</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>2</td>
					<td>WU451229</td>
					<td>ksd1026</td>
					<td>욕설</td>
					<td><a href="#a">캡처.png</a></td>
					<td>wlals1004</td>
					<td>2020-12-31</td>
					<td>
						<a href="#a">제재불가(사유)</a>
					</td>
					<td>2020-12-31 13:05:33</td>
					<td>운영자1</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>1</td>
					<td>WU451228</td>
					<td>ksd1026</td>
					<td>욕설</td>
					<td><a href="#a">캡처.png</a></td>
					<td>wlals1004</td>
					<td>2020-12-31</td>
					<td>
						처리완료
					</td>
					<td>2020-12-31 13:02:15</td>
					<td>운영자1</td>
				</tr>
			</table>
		</div>
		
		<div style="margin-bottom: 70px;">
			<h3>게시글 신고 접수 내역 <small>2020-12-31</small></h3>
			<p>
				<span style="color: gray;">업데이트 시간 :  2020-12-31 16:12:39</span>
				<a href="#a" class="glyphicon glyphicon-refresh" style="margin-left: 10px;"></a>
			</p>
			<table class="table" id="tbl2">
				<tr>
					<th><input type="checkbox"></th>
					<th></th>
					<th>접수코드</th>
					<th>게시글코드</th>
					<th>작성회원</th>
					<th style="width: 150px;">신고내용</th>
					<th>신고회원</th>
					<th>신고일시</th>
					<th>처리결과</th>
					<th>처리일시</th>
					<th>처리담당</th>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>2</td>
					<td>WC751326</td>
					<td><a href="#a">211237</a></td>
					<td>cksgml787</td>
					<td>음란성 게시물</td>
					<td>gkfla_8_</td>
					<td>2020-12-31</td>
					<td>
						<a href="#a" class="btn btn-default">처리</a>
						<a href="#a" class="btn btn-default">제재불가</a>
					</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>1</td>
					<td>WC751325</td>
					<td><a href="#a">211218</a></td>
					<td>rheorka92</td>
					<td>스팸 게시물</td>
					<td>077wken</td>
					<td>2020-12-31</td>
					<td>
						처리완료
					</td>
					<td>2020-12-31 13:12:57</td>
					<td>운영자1</td>
				</tr>
			</table>
		</div>
	
		
		<div style="margin-bottom: 70px;">
			<h3>댓글 신고 접수 내역 <small>2020-12-31</small></h3>
			<p>
				<span style="color: gray;">업데이트 시간 :  2020-12-31 16:12:39</span>
				<a href="#a" class="glyphicon glyphicon-refresh" style="margin-left: 10px;"></a>
			</p>
			<table class="table" id="tbl3">
				<tr>
					<th><input type="checkbox"></th>
					<th></th>
					<th>접수코드</th>
					<th>댓글코드</th>
					<th>작성회원</th>
					<th style="width: 150px;">신고내용</th>
					<th>신고회원</th>
					<th>신고일시</th>
					<th>처리결과</th>
					<th>처리일시</th>
					<th>처리담당</th>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>5</td>
					<td>WR126880</td>
					<td><a href="#a">21121801</a></td>
					<td>rheorka92</td>
					<td>광고성 도배글</td>
					<td>077wken</td>
					<td>2020-12-31</td>
					<td>
						<a href="#a" class="btn btn-default">처리</a>
						<a href="#a" class="btn btn-default">제재불가</a>
					</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>4</td>
					<td>WR126884</td>
					<td><a href="#a">21124504</a></td>
					<td>song8song</td>
					<td>명예훼손</td>
					<td>kjinok1988</td>
					<td>2020-12-31</td>
					<td>
						처리완료
					</td>
					<td>2020-12-31 11:28:43</td>
					<td>운영자3</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>3</td>
					<td>WR126883</td>
					<td><a href="#a">21124502</a></td>
					<td>song8song</td>
					<td>명예훼손</td>
					<td>kjinok1988</td>
					<td>2020-12-31</td>
					<td>
						처리완료
					</td>
					<td>2020-12-31 11:27:09</td>
					<td>운영자3</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>2</td>
					<td>WR126882</td>
					<td><a href="#a">21124503</a></td>
					<td>kjinok1988</td>
					<td>욕설</td>
					<td>song8song</td>
					<td>2020-12-31</td>
					<td>
						처리완료
					</td>
					<td>2020-12-31 11:24:14</td>
					<td>운영자3</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>1</td>
					<td>WR126881</td>
					<td><a href="#a">21124501</a></td>
					<td>kjinok1988</td>
					<td>욕설</td>
					<td>song8song</td>
					<td>2020-12-31</td>
					<td>
						처리완료
					</td>
					<td>2020-12-31 11:22:05</td>
					<td>운영자3</td>
				</tr>
			</table>
		</div>
	</div><!-- .contents end -->
	
</div><!-- .container end -->
		
<div class="footer">
	푸터 영역
</div>

</body>
</html>