<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<html>
<head>
	<meta charset="utf-8">
	
	<script type="text/javascript" src="../../../resources/js/webslidemenu.js"></script>
	<script type="text/javascript" src="../../../resources/js/slider.js"></script>
	
	<link href="/resources/css/main.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/slick.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/slick-theme.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/slider.css" rel="stylesheet" type="text/css">

	<title>회원가입</title>
</head>


<body>


<div id="wrapper" class="main">
	<div class="containerWrap">
		<div class="content">
							<!-- 슬라이드 -->
			<div class="slider">
				<div class="slide-viewer">
					<div class="slide-group" style="left: 0px;">
						<div class="slide" style="background: url(&quot;../../../resources/img/BANNER1_1640322359.png&quot;) right top / cover no-repeat; height: 480px; display: block; left: 0px;">
							<div class="introWrap">
								<div class="slideTxt">
									<div class="txtWrap">
										<div class="txt">보듬교육이란?</div>
										<div class="sm-txt">혼내지 않아도 혼나지 않아도 되는</div>
										<div class="big-txt">반려견 교육</div>
										<div class="ex-txt">보듬은 보호자님과 반려견이 항상 행복하기를 바랍니다.</div>
										<div class="more-txt" onclick="video()">보듬교육 알아보기</div>									
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content section01"> <!-- 교육 문의 -->
			<div class="inner-contents">
				<div class="inner-contestsWrap">
					<div class="sectionTxt1">
						<div>
							<div>
								<p class="txt1">
									내 댕댕이는
									<strong>왜</strong>
									이런 행동을 할까?
								</p>
								<p class="txt2">
									반려견이 밥달라고 하는것
								</p>
								<div class="roundBtn blueBtn" onclick="company()">보듬교육 알아보기</div>
							</div>
						</div>
						<!-- 동영상 링크 -->
						<div class="movieWrap">
							<div class="movieArea">
								<iframe src="https://player.vimeo.com/video/247419618" 
									frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="">
								
								</iframe>
							</div>
						</div>
						<!-- 동영상 링크 끝 -->
					</div>
				</div>
			</div>
			<div class="inner-contents2">
				<div class="section">
					 <div class="txt1">세계 최고 수준의</div>
					 <div class="txt1">
				 		<strong>보듬훈련사와</strong>
				 		함께하는
					 </div>
					 <div class="txt1 mb-12">온.오프라인 교육</div>
					 <div class="txt2">
					 	현재 보듬의 노하우는 최고최고
					 </div>
				</div>
				<div class="section2">
					<ul>
						<li> <!-- 반려견 교육 링크 -->
							<a href="/">
								<div class="img"></div>
								<p class="txt1">영상 강의</p>
								<p class="txt2">시간이나 장소 제한 없이 배우는 반려견 교육</p>
								
							</a>	
						</li>
						<li> <!-- 그룹 레슨 링크 -->
							<a href="/">
								<div class="img"></div>
								<p class="txt1">그룹 레슨</p>
								<p class="txt2">다른 반려견과 함께하는 수업</p>
							</a>	
						</li>
						<li> <!-- 개인 레슨 링크 -->
							<a href="/">
								<div class="img"></div>
								<p class="txt1">개인 레슨</p>
								<p class="txt2">내 반려견을 위한 1대1 맞춤 훈련</p>
							</a>	
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="content section03"> <!-- 상담 문의 -->
			<div class="contactArea">
				<div class="container">
					<div class="row">
						<div class="clo-50">
							<div class="info"> 
								<h4>
								<strong>어떤 교육을</strong>
									 들어야 할지 고민이세요?
								</h4>
								<div class="row">
									<div class="col-50">
										<div class="infoWrap">
											<span class="image">
												<img src="../../../resources/img/mainIcon4.png">
											</span>
											<div>
												<span class="customer">보듬교육 고객센터</span>
													1800-6358
											</div>
										</div>
									</div>
									<div class="col-50">
										<div class="infoWrap">
											<span class="image">
											<img src="../../../resources/img/mainIcon5.png">
											</span>
											<div>
												<span class="time2">
													<span class="time">업무시간</span>
														10:00 ~ 18:00
												</span>
												<span class="pcVer bar"></span>
												<span class="time3">
													<span class="time">점심시간</span>
														13:00 ~ 14:00
												</span>
												<span class="mt-5">토요일, 일요일, 공휴일 휴무</span>
											</div>
										</div>
									</div>
									
									<!--  <div class="col-50">
										<h5>상담 신청하기</h5>
										<form name="writeForm" class="contact-form" method="post" action="/">
											<input type="hidden" name="userid" value="">
											<input type="hidden" name="gubun" value="main">
											<input type="text" name="name" placeholder="이름">
											<div class="number mb-20">
												<select class="w160" name="tell" id="">
													<option value="010" selected>010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>
													<option value="019">019</option>	
												</select>
												<span>-</span>
												<input type="text" name="te12" maxlength="4" placeholder="">
												<span>-</span>
												<input type="text" name="te13" maxlength="4" placeholder="">
											</div>
											
											<textarea name="content" >
												보듬교육 프로그램을 위한 상담입니다.
												효과적인 교육 추천을 위해 아래 사항을 자세하게 작성해주세요.
												
												관심프로그램(ex: 영상교육/그룹레슨/개인레슨 등):
												캠퍼스로 방문상담 희망 시 가능한 시간 (ex. 주중/주말 오후 2시) :
												반려견이름:
												나이:
												견종:
												중성화 여부:
												문제행동 :
												
											</textarea>			
											<div class="checkArea">
												<input name="agree" id="agree" type="checkbox">
											<label style="margin-top:-3px; color:#333; font-size:1em;" class="check f1" for="agree">
													동의
												</label>
												<span class="policy-btn" style="border-bottom:1px solid #333;">(개인정보 취급방법)</span>
											</div>	
											<div class="btn">
												<a href="javascript:counselSendit();" class="rounBtn blueBtn">상담신청</a>
											</div>							
										</form>
									</div> -->
									<script language="javascript">
		
		                                    function counselSendit() {
		                                        var regex = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|]+$/;
		                                        var form=document.writeForm;
		                                        if( form.name.value=="") {
		                                            alert("이름을 입력해주세요.");
		                                            form.name.focus();
		                                        }else if(!regex.test(form.name.value)){
		                                            alert("이름에 특수문자를 넣을 수 없습니다.");
		                                            form.name.focus();
		                                        } else if( form.tel2.value=="") {
		                                            alert("전화번호를 입력해주세요.");
		                                            form.tel2.focus();
		                                        } else if( form.tel3.value=="") {
		                                            alert("전화번호를 입력해주세요.");
		                                            form.tel3.focus();
		                                        } else if( form.content.value=="") {
		                                            alert("상담내용을 입력해주세요.");
		                                            form.content.focus();
		                                        }  else if( form.agree.checked==false) {
		                                            alert("개인정보 취급방침에 동의해주세요.");
		                                            form.agree.focus();
		                                        } else {
		                                            fbq('track',
		                                                'Purchase',{
		                                                    content_type : 'product',
		                                                    content_name : '상담신청',
		                                                    value:'1',
		                                                    currency:'KRW'
		                                                });
		                                            
		                                            form.submit();          
		                                        }
		                                    }
		                                
									</script>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content section02">
			<div class="inner-contents">
				<div>
					<h4>
						<strong>보듬교육</strong>
						을 통해 반려견을
						<strong>이해</strong>
						하게 됐어요
						<span class="italic">!</span>
					</h4>
					<p class="subtxt">보듬교육을 경험한 회원님들의 솔직 후기</p>
				</div>
				<!-- a태그 바꿀것 -->
				<div class="movieCarousel slider slick-initialized slick-slider slick-dotted" role="toolbar"><button type="button" data-role="none" class="slick-prev slick-arrow" aria-label="Previous" role="button" style="display: block;">Previous</button>
					<div aria-live="polite" class="slick-list draggable">
						<div class="slick-track" role="listbox" style="opacity: 1; width: 2934px; transform: translate3d(-489px, 0px, 0px);">
							<div class="item slick-slide slick-cloned" style="width: 469px;" tabindex="-1" role="option" aria-describedby="slick-slide03" data-slick-index="-1" aria-hidden="true">
								<div class="ratio7 thumbnail-wrapper">
									<div class="thumbnail">
										<a href="/html/edu_movie/community/community_interview.php?mode=v&amp;idx=1749" tabindex="-1">
											<img src="../../../resources/img/mainImg1.jpg">
										</a>
									</div>
								</div>
							</div>
							<div class="item slick-slide slick-current slick-active" style="width: 469px;" tabindex="-1" role="option" aria-describedby="slick-slide00" data-slick-index="0" aria-hidden="false">
								<div class="ratio7 thumbnail-wrapper">
									<div class="thumbnail">
										<a href="/html/edu_movie/community/community_interview.php?mode=v&amp;idx=12107" tabindex="0">
												<img src="../../../resources/img/mainImg1.jpg">
										</a>
									</div>
								</div>
							</div>
							<div class="item slick-slide slick-current slick-active" style="width: 469px;" tabindex="-1" role="option" aria-describedby="slick-slide00" data-slick-index="0" aria-hidden="false">
								<div class="ratio7 thumbnail-wrapper">
									<div class="thumbnail">
										<a href="/html/edu_movie/community/community_interview.php?mode=v&amp;idx=12107" tabindex="0">
											<img src="../../../resources/img/mainImg1.jpg">
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--  메인페이지 리뷰 시작 -->
				<div class="review">
					<div class="row">
						<!--  여기서 반복문 시작 -->
						<div class="col-50">
							<div class="reviewBox">
								<div class="img">
									<div class="ratio4 thumbnail-wrapper">
										<div class="thumbnail">
											<div class="centered">
												<img src="../../../resources/img/dogIcon1.png" class="landscape">
											</div>
										</div>
									</div>
								</div>
								<div class="info">
									<div class="title">
										<a href="/">강아지와 사람이 함께 교육이 되는 보...</a>
									</div>
									<div class="writer">
										<span class="line">
											작성자
										</span>
										<span>견종</span>
									</div>
								</div>
							</div>
						</div>
							<div class="col-50">
							<div class="reviewBox">
								<div class="img">
									<div class="ratio4 thumbnail-wrapper">
										<div class="thumbnail">
											<div class="centered">
												<img src="../../../resources/img/dogIcon1.png" class="landscape">
											</div>
										</div>
									</div>
								</div>
								<div class="info">
									<div class="title">
										<a href="/">강아지와 사람이 함께 교육이 되는 보...</a>
									</div>
									<div class="writer">
										<span class="line">
											작성자
										</span>
										<span>견종</span>
									</div>
								</div>
							</div>
						</div>
							<div class="col-50">
							<div class="reviewBox">
								<div class="img">
									<div class="ratio4 thumbnail-wrapper">
										<div class="thumbnail">
											<div class="centered">
												<img src="../../../resources/img/dogIcon1.png" class="landscape">
											</div>
										</div>
									</div>
								</div>
								<div class="info">
									<div class="title">
										<a href="/">강아지와 사람이 함께 교육이 되는 보...</a>
									</div>
									<div class="writer">
										<span class="line">
											작성자
										</span>
										<span>견종</span>
									</div>
								</div>
							</div>
						</div>
							<div class="col-50">
							<div class="reviewBox">
								<div class="img">
									<div class="ratio4 thumbnail-wrapper">
										<div class="thumbnail">
											<div class="centered">
												<img src="../../../resources/img/dogIcon1.png" class="landscape">
											</div>
										</div>
									</div>
								</div>
								<div class="info">
									<div class="title">
										<a href="/">강아지와 사람이 함께 교육이 되는 보...</a>
									</div>
									<div class="writer">
										<span class="line">
											작성자
										</span>
										<span>견종</span>
									</div>
								</div>
							</div>
						</div>
						<!--  여기서 반복문 끝-->
					</div>
					<a href="/" class="roundBtn blueBtn">더 많은 후기보기</a>
				</div>
			</div>
		</div>
	</div>
</div>


<script type="text/javascript">

function company(){
		self.location="/bodeum/edu/company";
		}
		
function video(){
			self.location="/bodeum/edu/video";
		}

function group(){
			self.location="/bodeum/edu/group";
		}

function single(){
			self.location="/bodeum/edu/single";
		}



</script>

</body>

</html>
