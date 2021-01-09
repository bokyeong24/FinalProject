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
<title>관리자 | 펫시터</title>

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
    	float: left;
	}
	.container
	{
		width:1300px;
		display: inline-flex;
	}
	.contents
	{
		margin-left: 50px;
	}
	#search_tbl { text-align: left; }
	#search_tbl th
	{
		width: 150px;
		padding-left: 30px;
		text-align: left;
	}
	#search_tbl td { text-align: left; }
	.table > tbody > tr > td:nth-child(8)
	{
		padding-top: 3px;
		padding-bottom: 3px;
		vertical-align: middle;
	}
</style>

</head>
<body>

<div class="header" style="background-color: #ccc; height: 100px;">
	헤더 영역
</div>




<div class="container">
	<div class="left_side">
		<c:import url="AdminLeftSide.jsp"></c:import>
	</div><!-- .left_side -->
	
	<div class="contents">
		<h1>프로 펫시터 심사 관리</h1>
		
		<div style="margin-bottom: 70px;">
			<h3>검색 조건</h3>
			<form action="">
				<table  id="search_tbl" class="table">
					<tr>
						<th>검색어</th>
						<td>
							<div class="form-inline">
								<select class="form-control">
									<option value="">펫시터코드</option>
									<option value="">아이디</option>
									<option value="" selected="selected">닉네임</option>
									<option value="">처리담당</option>
								</select>
								<input type="text" class="form-control" style="width:600px;">
							</div>
						</td>
					</tr>
					<tr>
						<th>활동상태</th>
						<td>
							<div style="">
								<input type="checkbox" style="margin-right: 10px;" checked="checked">전체
								<input type="checkbox" style="margin-right: 10px;">정상
								<input type="checkbox" style="margin-right: 10px;">중지
							</div>
							
							<div style="float: right; text-align: center;">
								<input type="submit" class="btn btn-primary" value="검색">
								<a href="#a" class="btn btn-default" role="button">초기화</a>
							</div>
						</td>
					</tr>
				</table>
			</form>
		</div>
		
		<div style="margin-bottom: 70px;">
			<h3>심사 목록</h3>
			<p>검색 결과 : 3 건</p>
			<p>
				<span style="color: gray;">업데이트 시간 :  2020-12-31 16:12:39</span>
				<a href="#a" class="glyphicon glyphicon-refresh" style="margin-left: 10px;"></a>
			</p>
			<div style="float: right;">
				<select class="form-control" style="width:180px;">
					<option>펫시터코드 순</option>
					<option>아이디 순</option>
					<option>닉네임 순</option>
					<option>처리일시 순</option>
					<option>처리담당 순</option>
				</select>
			</div>
			<table class="table">
				<tr>
					<th><input type="checkbox"></th>
					<th></th>
					<th>펫시터코드</th>
					<th>아이디</th>
					<th>닉네임</th>
					<th>나이</th>
					<th>첨부파일</th>
					<th>심사결과</th>
					<th>처리일시</th>
					<th>처리담당</th>
				</tr>
				<tr>
					<th><input type="checkbox"></th>
					<td>3</td>
					<td>PST1234531</td>
					<td>55ekfhddl</td>
					<td>다롱다롱</td>
					<td>35세</td>
					<td><a href="#a">심사서류.zip</a></td>
					<td>
						<a href="#a" class="btn btn-default">승인</a>
						<a href="#a" class="btn btn-default">거절</a>
					</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<th><input type="checkbox"></th>
					<td>2</td>
					<td>PST1234529</td>
					<td>sorkqkfh257</td>
					<td>제2의강형욱</td>
					<td>28세</td>
					<td><a href="#a">프로펫시터.zip</a></td>
					<td>
						<a href="#a">거절(사유)</a>
					</td>
					<td>2020-12-31 10:12:31</td>
					<td>운영자3</td>
				</tr>
				<tr>
					<th><input type="checkbox"></th>
					<td>1</td>
					<td>PST1234512</td>
					<td>1212fefe</td>
					<td>딸기가좋아</td>
					<td>43세</td>
					<td><a href="#a">경력증명서.zip</a></td>
					<td>
						승인
					</td>
					<td>2020-12-31 10:09:02</td>
					<td>운영자3</td>
				</tr>
			</table>
			<a href="#a" class="btn btn-default" role="button" style="float:right;">심사목록 전체보기</a>
		</div>
		
		
	
	</div><!-- .contents end -->
	
</div><!-- .container end -->
		
<div class="footer" style="background-color: #ccc; height: 100px;">
	푸터 영역
</div>

</body>
</html>