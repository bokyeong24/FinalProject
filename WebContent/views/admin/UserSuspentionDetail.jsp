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
<title>관리자 | 경고 회원</title>

<link rel="stylesheet" href="<%=cp %>/css/bootstrap.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/js/bootstrap.min.js"></script>

<style type="text/css">
	table, th, td
	{
		text-align: center;
	}
	.container
	{
		width:720px;
		display: inline-flex;
	}
	.contents
	{
		margin-left: 50px;
	}
</style>

</head>
<body>
<div class="container">

	<div class="contents">
		<h1>영구정지 회원 상세내역</h1>
		
		<div style="margin-bottom: 70px;">
			<h3>누적 경고 상세 내역</h3>
			<div style="margin-bottom: 40px;">
				<p>접수코드 : <span style="font-weight: bold;">WU451228</span></p>
				<table class="table" style="margin-top: 15px; width:670px;">
					<tr>
						<th>아이디</th>
						<th>닉네임</th>
						<th>경고일시</th>
						<th>사유</th>
						<th>신고회원</th>
						<th>처리담당</th>
						<th>첨부자료</th>
					</tr>
					<tr>
						<td>ksd1026</td>
						<td>쩌리잇</td>
						<td>2020-12-31 13:02:15</td>
						<td>욕설</td>
						<td>rkekdms719</td>
						<td>운영자1</td>
						<td><a href="#a">캡처.png</a></td>
					</tr>
					
				</table>
				
				<div>
					<p class="mark" style="font-weight: bold;">상세내용</p>
					<textarea class="form-control">2020.12.31 오후 12시 30분 경 모임방에서 본인을 비롯한 다른 회원들에게 욕설과 폭언을 사용했습니다.</textarea>
				</div>
				
			</div>
			
			<hr>
			
			<div style="margin-bottom: 40px;">
				<p>접수코드 : <span style="font-weight: bold;">WU451219</span></p>
				<table class="table" style="margin-top: 15px; width:670px;">
					<tr>
						<th>아이디</th>
						<th>닉네임</th>
						<th>경고일시</th>
						<th>사유</th>
						<th>신고회원</th>
						<th>처리담당</th>
						<th>첨부자료</th>
					</tr>
					<tr>
						<td>ksd1026</td>
						<td>쩌리잇</td>
						<td>2020-12-29 17:13:01</td>
						<td>욕설</td>
						<td>rlaqhrud123</td>
						<td>운영자2</td>
						<td><a href="#a">쩌리잇.png</a></td>
					</tr>
					
				</table>
				
				<div>
					<p class="mark" style="font-weight: bold;">상세내용</p>
					<textarea class="form-control">모임방에서 다른 이용자들에게 시비를 걸고 욕함</textarea>
				</div>
				
			</div>
			
			<hr>
			
			<div style="margin-bottom: 40px;">
				<p>접수코드 : <span style="font-weight: bold;">WU451211</span></p>
				<table class="table" style="margin-top: 15px; width:670px;">
					<tr>
						<th>아이디</th>
						<th>닉네임</th>
						<th>경고일시</th>
						<th>사유</th>
						<th>신고회원</th>
						<th>처리담당</th>
						<th>첨부자료</th>
					</tr>
					<tr>
						<td>ksd1026</td>
						<td>쩌리잇</td>
						<td>2020-12-28 11:34:24</td>
						<td>광고 홍보물</td>
						<td>pepero03</td>
						<td>운영자1</td>
						<td><a href="#a">광고111.png</a></td>
					</tr>
					
				</table>
				
				<div>
					<p class="mark" style="font-weight: bold;">상세내용</p>
					<textarea class="form-control">중복적으로 광고 게시글을 올림</textarea>
				</div>
				
			</div>
			
			<a href="javascript:window.close();" class="btn btn-default" style="float: right;">닫기</a>
		</div>
	</div><!-- .contents end -->
</div><!-- .container end -->
	
</body>
</html>