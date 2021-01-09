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
<title>펫시터 신청 상세</title>

<link rel="stylesheet" href="<%=cp %>/css/bootstrap.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/js/bootstrap.min.js"></script>

<style type="text/css">
	table, th, td
	{
		text-align: center;
	}
	table p
	{
		text-align: left;
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
		<h1>펫시터 신청 상세내역</h1>
		
		<div style="margin-bottom: 70px;">
			<h3>신청내역</h3>
			<span>펫시터신청코드 : PST1234516</span>
			<table class="table" style="margin-top: 15px; width:670px;">
				<tr>
					<th>회원고유코드</th>
					<th>아이디</th>
					<th>닉네임</th>
					<th>나이</th>
					<th>성별</th>
					<th>신청일자</th>
				</tr>
				<tr>
					<td>M1234555</td>
					<td>tkaruq_2</td>
					<td>오늘의돌보미</td>
					<td>32세</td>
					<td>여</td>
					<td>2020-12-28 11:38:42</td>
				</tr>
			</table>
			
			<table class="table" style="margin-top: 15px; width:670px;">
				<tr>
					<th style="width: 130px;">경력소개</th>
					<td>
						<p>말티숑 뽀숑이와 4년을 동고동락 중인 예비 펫시터입니다.</p>
						<p>애견샵에서 근무경력 2년이 있고 누구보다 강아지를 사랑하는 마음을 가지고 있습니다.</p>
					</td>
				</tr>
				<tr>
					<th>증빙서류<br>첨부내역</th>
					<td style="text-align: left;">
						<ul class="list-unstyled">
							<li><a href="">경력증명서(애견샵).png</a></li>		
							<li><a href="">애견미용자격증.png</a></li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="8">
						<ul class="list-inline" style="float: middle;">
							<li class="list-inline-item"><a href="#a" class="btn btn-primary" role="button">승인</a></li>
							<li class="list-inline-item"><a href="#a" class="btn btn-default reply" role="button">반려</a></li>
						</ul>
					</td>
				</tr>
			</table>
			
			<script type="text/javascript">
				
				$().ready(function()
				{					
					$(".reply").click(function()
					{
						if($(".text_wrap").css("display") == "none")
							$(".text_wrap").show();
						else
						{
							$(".text_wrap").css("display", "none");
						}
					});
				});
			
			</script>
					
			<div class="text_wrap" style="display: none;">
				<p><span style="font-weight: bold;">반려사유</span></p>
				<textarea rows="10" cols="30" style="width: 660px; height: 100px;"></textarea>
				<a href="#a" class="btn btn-primary" style="float: right;">입력완료</a>
			</div>	
			
		</div>
	</div><!-- .contents end -->
</div><!-- .container end -->
	
</body>
</html>