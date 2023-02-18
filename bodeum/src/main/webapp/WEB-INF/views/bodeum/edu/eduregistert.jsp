<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="../../../resources/css/main.css" rel="stylesheet"
	type="text/css">
<link href="../../../resources/css/common.css" rel="stylesheet"
	type="text/css">
<link href="../../../resources/css/slick.css" rel="stylesheet"
	type="text/css">
<link href="../../../resources/css/slick-theme.css" rel="stylesheet"
	type="text/css">
<link href="../../../resources/css/slider.css" rel="stylesheet"
	type="text/css">

<title>커뮤니티</title>
</head>
<body>
	<div id="wrapper">
		<div class="containerWrap">
			<div class="page-title-top community-page-title">
				<h2 class="page-title">강형욱 칼럼</h2>
			</div>
			<div class="page-title-menu  education-page-menu">
				<ul>
					<li class="on"><a href="community_list.php">강형욱 칼럼</a></li>
					<li><a href="community_interview.php">보호자 인터뷰</a></li>
					<li><a href="community_review.php">교육후기</a></li>
				</ul>
			</div>


			<div class="content">
				<div class="inner-contents bg_gray">
					<div class="section columnList">
					
					
					<form role="form" method="post" action="post">
						<!-- 게시판 삽입 시작 -->
						<div class="communityDetail">
							<div class="listDetail">
								<div class="listTitle">
									<div class="title">
									<label >글 제목</label> <input name="title" ></div>
								</div>
								
								<div>내용</div>
								<div class="listEditor">
							
									<textarea rows="30"  cols="150" class="form-control" name="content"></textarea>

								</div>
								<div>
								</div>
						
								<div class="inputArea">
									
								
								</div>
								<!-- 이전글,다음글 -->


								<div class="list-movement">
									<ul>
										<li class="prev"><strong>이전글</strong><a
											href="?code=community_column&amp;idx=2384&amp;bbs_data=aWR4PTIzODQmc3RhcnRQYWdlPSZsaXN0Tm89MTk4JnRhYmxlPSZjb2RlPWNvbW11bml0eV9jb2x1bW4mc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||&amp;mode=v">[생활/기타]
												열정을 증명해보세요.</a></li>
										<li class="next"><strong>다음글</strong></li>
									</ul>
								</div>

								<!-- 이전글,다음글 //-->
								<div class="btn">
								<a class="roundBtn whiteBtn">게시글 등록 </a>
									<a
										href="?mode=l&amp;bbs_data=aWR4PTIzMzI0JlBhZ2VOdW1iZXI9MSZsaXN0Tm89MTk4JnRhYmxlPWlkX2Jic19kYXRhJmNvZGU9Y29tbXVuaXR5X2NvbHVtbiZzZWFyY2hfaXRlbT0mc2VhcmNoX29yZGVyPQ==||"
										class="roundBtn whiteBtn">목록으로</a>
								</div>
								

							</div>
							<!-- 게시판 삽입 종료 -->

						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">




</script>
</html>