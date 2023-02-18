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


<title>교육상품정보</title>
</head>
<body>
	<div id="wrapper">
		<div class="containerWrap">
			<div class="content">
			<c:forEach items="${edusingleitem }" var="list">
				<div class="inner-contents bg_line">
					<div class="section prdDetail topic-detail">

						<div class="contents" id="fixed-parent">
							<div id="prdInfoWrap">
								<div class="prdInfoWrap" id="theFixed" style="top: 110px;">
									<div class="imgArea">
										<div class="ratio thumbnail-wrapper">
											<div class="thumbnail">
												<img src="/data/trainerImages/1613981288_TRAINER.png">
											</div>
										</div>
									</div>
									<div class="prdInfo">
										<p class="prd-title">${list.title }</p>
										<dl>
											<dt>적립금</dt>
											<dd class="point">
												<strong>${list.point }</strong><span>P</span>
											</dd>
										</dl>
										<dl class="total-price">
											<dt>수강료</dt>
											<dd>
												<strong class="sale_price">${list.edupic }</strong><span>원</span>
												<p>개인레슨 수강권 사용가능</p>
											</dd>
										</dl>
									</div>
									<div class="btn">
										<a href="javascript:alert('현재 운영중인 상품이 아닙니다.');"
											class="roundBtn blueBtn">신청마감</a>
									</div>
								</div>
							</div>
							<div id="prdDetail2">
								<div class="prdDetailExp-1">
									<div class="title">${list.title }</div>
									<div class="prd_desc">
										${list.content1 }
									</div>
									<div class="request-info">
										<ul>
											<li><span>유형</span>${list.type }</li>
											<li><span>강사</span>${list.name }훈련사</li>
											<li><span>시간</span>${list.time }</li>
											<li><span>장소</span>${list.place }</li>
											<li><span>일시</span>${list.edudate }</li>
										</ul>
									</div>
									<div>
										<p class="title">준비물</p>
										<p class="txt">${list.prepare }</p>
									</div>
									<div class="edu-movieBox">
										<div>
											
										</div>
									</div>
									<div class="precautions">
										<p class="title">주의사항</p>
										<p class="txt">
											${list.content2 }
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="inner-contents">
					<div class="videoReview scrollStop">
						<div class="videoReviewWrap">
							<div class="page-sub-title">
								<strong>교육후기</strong>
							</div>
							<div class="container">
								<div class="row">
									<div class="col-33">
										<div class="pannel">
											<p class="title">
												<a
													href="/html/edu_movie/community/community_review.php?mode=v&amp;bbs_data=aWR4PTIxMTgzJnN0YXJ0UGFnZT0mbGlzdE5vPSZ0YWJsZT0mY29kZT0mc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||">기적
													같은 개인레슨 후에</a>
											</p>
											<div class="txt">
												<a
													href="/html/edu_movie/community/community_review.php?mode=v&amp;bbs_data=aWR4PTIxMTgzJnN0YXJ0UGFnZT0mbGlzdE5vPSZ0YWJsZT0mY29kZT0mc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||">
													버벅이던 리드워크와 주니어클래스 때 그리가 하기 싫어하는 앉아/엎드려&amp;기다려를 훈련 받았어요.
													리드워크는 익숙해지도록 복습하고 있지만 능숙하게 하려면 아직 멀은 것 같아요ㅎㅎㅎ 훈련 받는 동안 가장
													기적은 엎드려와 기다려였습니다. 엎드려는 해도 기다려는 1~2 발자국 이상 멀어지지 못 했거든요. 그마저도
													태반이 일어나서 다시 엎드려시키는 게 많았어요. 할 수 있는데도 엎드려 잠깐하고 관심 가는 것도 많아서
													가만히 있는 걸 싫어했거든요. 고집을 어찌 꺾나 싶었는데. 결국 개인 훈련 때 혼나서 주눅들긴 했지만 점차
													잘 듣는 모습보니 속시원하면서도 예뻐서 기분 좋았습니다. 이젠 앉아&amp;기다려도 전보다 잘해요~ 이래서
													보듬 훈련하나봐요! 앞으로 같이 살 날이 많은데, 다니길 정말 잘한거 같아요~ㅎㅎㅎ </a>
											</div>
											<div class="profile">
												<div class="thumb">
													<div class="ratio4 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<img src="../../common/img/reviewThum.png"
																	class="landscape">
															</div>
														</div>
													</div>

												</div>
												<p class="name">김정현님</p>
											</div>
										</div>
									</div>
									<div class="col-33">
										<div class="pannel">
											<p class="title">
												<a
													href="/html/edu_movie/community/community_review.php?mode=v&amp;bbs_data=aWR4PTEyMTA4JnN0YXJ0UGFnZT0mbGlzdE5vPSZ0YWJsZT0mY29kZT0mc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||">가족으로서
													함께 잘하고파~ 보듬에 왔...</a>
											</p>
											<div class="txt">
												<a
													href="/html/edu_movie/community/community_review.php?mode=v&amp;bbs_data=aWR4PTEyMTA4JnN0YXJ0UGFnZT0mbGlzdE5vPSZ0YWJsZT0mY29kZT0mc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||">
													과연 우리 강아지 알로는 우리와 함께 하면서 행복할 수 있을까?&nbsp;알로를 만난지 어느 새 4개월이
													지나갑니다.마음으로, 바램으로 반려견과 함께 생활을 꿈꿔오던 우리집에드디어 알로라는 친구를 만나 함께 하게
													되었습니다.&nbsp;하지만 모든게 처음인 우리 가족은,무서움도 많고 두려움도 많고. 걱정도
													많았습니다.하지만 긍정의 마음과 즐거움, 행복의 마음도 컸습니다.&nbsp;좀더 잘 지내고
													싶었습니다.주인이 아니라, 가족구성원으로 교감하며 나누며 잘 지내고 싶어 보듬을 찾게 되고, 함께 시작을
													해보았습니다.&nbsp;나름 교육을 전공한 엄마의 이론이 강아지에게도 실행되어 지지만,과연 이것이 옳은가?
													하며 전문 교육을 받고 싶은 생각이 가득했습니다.&nbsp;첫 시작은 모든 가족구성원이 함께 하면
													좋겠다~싶은 마음에보듬을 찾아온 우리 가족.찾아오는 길. 옛~건물로 가서 다시 돌아오는 에피소드가
													발생했지만,10분지각과 함께 두근거리는 마음으로 보듬에 입학을 했습니다.&nbsp;현관에서 먼저
													알아봐주시고 맞이해주시는 강사님 덕분에 기분도 좋아졌습니다.왠지 준비된 느낌이다라는 신뢰가 더
													깊어가고.&nbsp;가족이 들어가서 받을 수 있는 교육실에서 우리 알로는 달달달달..초 긴장을 하며 교육을
													시작하였습니다.&nbsp;알로에 대해 관찰하시고, 가정에서의 알로를 지켜보시고,가장 기본적으로 알로와
													행해야 할 기초훈련과 알로에 대한 조언을 해 주신 첫 시간이 참 소중했습니다.&nbsp;어떤 분은 정말
													1번의 교육으로 우리 강아지의 문제행동과 개선행동이 나아지리라 기대하고 오실분도 계시겠지만,저는 오히려
													그런 임팩트한 교육보다는 강아지를 위해 가족구성원의 역할이 어떻게 해야하고,하나하나 단계적으로 접근해
													주시는 잔잔한 교육이 참 마음에 들었습니다.어쩌면 저희가정의&nbsp;교육철학과 맞다고
													해야할까요?&nbsp;시작이 참 좋아서인지지금까지 알로가 참 잘지내줍니다.&nbsp;알로와 지내면서 느끼는
													점은,점점 강아지도 우리와 같다는 생각이 듭니다.아가키우는 마음으로..우리 돌보는 마음으로 함께 됨이
													참으로 신기하고 놀랍답니다.&nbsp;첫 시작이 좋았으니 꾸준히 교육을 받으며, 잘 지내보렵니다.알로가
													훗날, 나 정말 행복했어요!할 수있도록요.&nbsp;다시한번 반갑게 맞이 해 주신 강사님께,그리고 이렇게
													좋은 프로그램을 기획하고 고안한 강형욱선생님께 깊은 감사를 드립니다.앞으로 자주 뵙도록 하지요.
													고맙습니다.&nbsp; </a>
											</div>
											<div class="profile">
												<div class="thumb">
													<div class="ratio4 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<img src="../../common/img/reviewThum.png"
																	class="landscape">
															</div>
														</div>
													</div>

												</div>
												<p class="name">이주연님</p>
											</div>
										</div>
									</div>
									<div class="col-33">
										<div class="pannel">
											<p class="title">
												<a
													href="/html/edu_movie/community/community_review.php?mode=v&amp;bbs_data=aWR4PTc4NzMmc3RhcnRQYWdlPSZsaXN0Tm89JnRhYmxlPSZjb2RlPSZzZWFyY2hfaXRlbT0mc2VhcmNoX29yZGVyPQ==||">우리
													아이(포니)가 정말 많이 달라졌...</a>
											</p>
											<div class="txt">
												<a
													href="/html/edu_movie/community/community_review.php?mode=v&amp;bbs_data=aWR4PTc4NzMmc3RhcnRQYWdlPSZsaXN0Tm89JnRhYmxlPSZjb2RlPSZzZWFyY2hfaXRlbT0mc2VhcmNoX29yZGVyPQ==||">
													주변 소리, 달리는 오토바이, 자전거, 걷거나 달리는 사람, 상대방 모든 강아지에 무조건 달려들면서 짖거나
													못하게 하면 이빨을 들어내면 흥분을 해서 산책이 불가능 할 정도 였습니다. 첫 개인 교육 후 훈련사님의
													조언를 기억하면서 산책시 적용하였습니다. 일주일이 지난 지금은 너무 많이 달라졌습니다. 주변 소음,
													오토바이, 자전거, 사람에게는 달려들면서 짖는 행동이 없어졌습니다 간혹 고개를 돌리면서 약간에 흥분을
													보이긴 하나 잘 적응하고 있는 중입니다 그리고 어제까지 다른 강아지에게 흥분하면서 짖었는데 오늘 새벽
													산책에서 네,다섯마리의 강아지와 처음으로 잘 지냈습니다. 아직도 갈 길은 멀지만 더 열심히 해야겠습니다.
													희망이 보입니다. 교육에 힘도 대단하지만 보듬 훈련사님들의 연구가 더 대단하다고 생각이 듭니다. 아울러
													이용선 훈련사님 다시 한 번 감사드립니다. 또 뵙겠습니다. </a>
											</div>
											<div class="profile">
												<div class="thumb">
													<div class="ratio4 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<img src="../../common/img/reviewThum.png"
																	class="landscape">
															</div>
														</div>
													</div>

												</div>
												<p class="name">홍성준님</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="btn">
								<a href="../community/community_review.php" class="whiteBtn">후기
									더보기</a>
							</div>
						</div>
					</div>
				</div>
			   </c:forEach>
			</div>
		</div>
	</div>

</body>
</html>