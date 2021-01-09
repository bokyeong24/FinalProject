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
<title>회원 상세 정보</title>

<link rel="stylesheet" href="<%=cp %>/css/bootstrap.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/js/bootstrap.min.js"></script>

<style type="text/css">
	table, th, td
	{
		text-align: left;
	}
	.container
	{
		width:500px;
		display: inline-flex;
	}
	.contents
	{
		margin-left: 50px;
	}
	.text_wrap {
	    float: left;
	    margin-top: 15px;
	    margin-bottom: 30px;
	    width: 670px;
	    height: 170px;
	    border: 1px solid #e3e3e3;
	}
</style>

</head>
<body>
<div class="container">

	<div class="contents">
		<h1>회원 상세 정보</h1>
		
		<div style="margin-bottom: 70px;">
			<h3>회원 정보</h3>
			<span>회원등록코드 : 1234569</span>
			<table class="table" style="margin-top: 15px; width:500px;">
				<tr>
					<th style="width: 130px;">회원고유코드</th>
					<td>M1234569</td>
				</tr>
				<tr>
					<th>펫시터코드</th>
					<td></td>
				</tr>
				<tr>
					<th>아이디</th>
					<td>rnlcksg77</td>
				</tr>
				<tr>
					<th>닉네임</th>
					<td>아롱이누나</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>1995-07-16</td>
				</tr>
				<tr>
					<th>성별</th>
					<td>여</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>010-1212-2321</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>rnlcksg77@naver.com</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>[01270] 서울특별시 광진구 구의동 123-123</td>
				</tr>
				<tr>
					<th>회원가입일</th>
					<td>2020-12-31 11:38:42</td>
				</tr>
				<tr>
					<th>인기도</th>
					<td>0</td>
				</tr>
				<tr>
					<th>펫시터 평점</th>
					<td>0</td>
				</tr>
				<tr>
					<th style="vertical-align: middle;">프로필사진코드</th>
					<td>
						<ul class="list-unstyled">
							<li><a href="">P1655427</a></li>		
							<li><a href="">P1655432</a></li>		
							<li><a href="">P1655433</a></li>
						</ul>
					</td>
				</tr>
			</table>
			
			
			<a href="javascript:window.close();" class="btn btn-default" style="float: right;">닫기</a>
			
			
		</div>
	</div><!-- .contents end -->
</div><!-- .container end -->
	
</body>
</html>