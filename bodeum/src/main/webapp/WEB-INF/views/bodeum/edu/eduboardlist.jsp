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

<title>칼럼</title>
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

						<!-- 게시판 삽입 시작 -->


						<script language="javascript">
						<!--
							function searchCheck(box) {
								if (box.checked == false) {
									bbs_search_form.search_item.value = eval(bbs_search_form.search_item.value)
											- eval(box.value);
								} else {
									bbs_search_form.search_item.value = eval(bbs_search_form.search_item.value)
											+ eval(box.value);
								}
							}

							function search() {
								if (bbs_search_form.search_order.value == "") {
									alert("검색할 내용을 입력해 주십시오.");
									bbs_search_form.search_order.focus();
								} else {
									bbs_search_form.submit();
								}
							}

							function search2() {
								if (bbs_search_form2.search_order.value == "") {
									alert("검색할 내용을 입력해 주십시오.");
									bbs_search_form2.search_order.focus();
								} else {
									bbs_search_form2.submit();
								}
							}
						//-->
						</script>

						<form class="board_search" name="bbs_search_form" method="post"
							action="/html/edu_movie/community/community_list.php?code=community_column&amp;search_item='+this.value">
							<div class="srchFilter mb-40 pc-tabletVer">
								<select id="select" class="w145" name="search_item">
									<option value="1" selected="">제목</option>
									<option value="2">내용</option>
								</select> <input type="text" name="search_order">
								<div class="srchBtn">
									<a href="javascript:search();">검색</a>
								</div>
							</div>
						</form>
						<!--모바일에서 검색필터-->
						<form class="board_search" name="bbs_search_form2" method="post"
							action="/html/edu_movie/community/community_list.php?code=community_column&amp;search_item='+this.value">
							<div class="mobileVer srchFilter">
								<div id="select" class="selectMobile select-wrapper">
									<i class="icon select-down"></i> <input type="button"
										class="select-button" value="검색하기">
								</div>
								<div class="searchFilter-m">
									<select id="select-m" class="w145" name="search_item">
										<option value="7">전체</option>
										<option value="1">제목</option>
										<option value="2">내용</option>
									</select> <input type="text" name="search_order">
									<div class="srchBtn">
										<a href="javascript:search2();">검색</a>
									</div>
								</div>
								<script>
									$(document)
											.ready(
													function() {
														$(
																".selectMobile.select-wrapper")
																.click(
																		function() {
																			$(
																					".searchFilter-m")
																					.toggleClass(
																							"on");
																		});
													});
								</script>
								<!--//모바일에서 검색필터-->
							</div>
						</form>

						<div class="communityList media-list">
							<div class="container">
								<div class="row">
								
								<c:forEach items="${list }" var="list">
									<div class="col-25">
										<div class="white-pannel"
											onclick="${path}/bodeum/edu/Eduboardview?boardnum=${list.boardnum}">
											<div class="ratio3 thumbnail-wrapper">
												<div class="thumbnail">

													<a href="${path}/bodeum/edu/Eduboardview?boardnum=${list.boardnum}" class="img-thum">
													<img src=""></a>
												</div>
											</div>

											<div class="title">
												<a href="${path}/bodeum/edu/Eduboardview?boardnum=${list.boardnum}">
													
													<span class="titleSpan">${list.title }</span>
												</a>
											</div>
											<div class="count">조회수: ${list.cnt }</div>
										</div>
									</div>
								</c:forEach>
									
									

						<div class="paging">
							<ol>
								<li class="active"><a href="#">1</a></li>
								<li><a
									href="?code=community_column&amp;category=&amp;PageNumber=2&amp;goods_idx=&amp;search_order=">2</a></li>
								<li><a
									href="?code=community_column&amp;category=&amp;PageNumber=3&amp;goods_idx=&amp;search_order=">3</a></li>
								<li><a
									href="?code=community_column&amp;category=&amp;PageNumber=4&amp;goods_idx=&amp;search_order=">4</a></li>
								<li><a
									href="?code=community_column&amp;category=&amp;PageNumber=5&amp;goods_idx=&amp;search_order=">5</a></li>
								<li><a
									href="?code=community_column&amp;category=&amp;PageNumber=6&amp;goods_idx=&amp;search_order=">6</a></li>
								<li><a
									href="?code=community_column&amp;category=&amp;PageNumber=7&amp;goods_idx=&amp;search_order=">7</a></li>
								<li><a
									href="?code=community_column&amp;category=&amp;PageNumber=8&amp;goods_idx=&amp;search_order=">8</a></li>
								<li><a
									href="?code=community_column&amp;category=&amp;PageNumber=9&amp;goods_idx=&amp;search_order=">9</a></li>
								<li><a
									href="?code=community_column&amp;category=&amp;PageNumber=10&amp;goods_idx=&amp;search_order=">10</a></li>
								<li class="etc">…</li>
								<li><a
									href="?code=community_column&amp;category=&amp;PageNumber=25&amp;goods_idx=&amp;&amp;search_order=">25</a></li>
							</ol>
							<p>
								<a href="#prev" class="arrow_l">Prev</a>
							</p>
							<p class="last">
								<a
									href="?code=community_column&amp;category=&amp;PageNumber=2&amp;goods_idx=&amp;search_order=">Next</a>
							</p>
						</div>

						<!-- 게시판 삽입 종료 -->

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">

function edulist(){
	self.location="/bodeum/edu/edulist";
}


function edugroup(){
	self.location="/bodeum/edu/edugroup";
}


function edusingle(){
	self.location="/bodeum/edu/edusingle";
}



function eduitem(itemnum){
	
	
	self.location="/bodeum/edu/eduitem?itemnum="+itemnum;
}




</script>
</html>