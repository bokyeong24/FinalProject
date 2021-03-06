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
<title>AdminHeader.jsp</title>
<style>
	* { margin: 0; padding: 0; }
	ul, li {
	    list-style: none;
	    padding-left: 0px;
	}
	a { text-decoration: none; }
	.wrapper { width: 1220px; }
	.logo {
		width: 220px;
		float: left;
	}
	.top_menu_wrap {
		/* width: 1000px; */
		float: right;
	}
	.top_menu li { float: left; } 
	.top_menu a { 
		line-height: 100px;
		padding: 0 15px;
		display: block; 
		/* font-family: "tvN 즐거운이야기 Bold", "tvN 즐거운이야기 Light", "tvN 즐거운이야기 Medium","Noto Sans KR Bold", "Noto Sans KR Light", "Noto Sans KR Medium", "Noto Sans KR Regular", "Noto Sans KR Thin"; */
		font-weight: bold;
   		font-size: 20px;  
	}
</style>

</head>
<body>
	<!------------------------------------------ 
	
	메인페이지에 추가 ↓↓
	url 경로 수정하기!
	
	<%-- <div id="header">
		<c:import url="AdminHeader.jsp"></c:import>
	</div> --%>
	
	------------------------------------------->
	
	<div class="wrapper">
		<div class="logo">
			<a href="#a"><img src="<%=cp%>/images/logo3.png"></a>
		</div>
		<div class="top_menu_wrap" role="group">
			<ul class="top_menu" style="top: 10px;">
				<li><a href="#a">펫시터 등록 처리</a></li>
				<li><a href="#a">회원 신고 처리</a></li>
				<li><a href="#a">게시글 신고 처리</a></li>
				<li><a href="#a">댓글 신고 처리</a></li>
				<li><a href="#a">공지사항 작성</a></li>
				<li><a href="#a">1:1 문의 처리</a></li>
			</ul>
		</div>
	</div>

</body>
</html>