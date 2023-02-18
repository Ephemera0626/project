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
			<c:forEach items="${eduitem }" var="list">
				<div class="inner-contents">
					<div class="section prdDetail">

						<div class="contents" id="fixed-parent">
							<form method="post" name="goodsForm">
								<input type="hidden" name="gubun" value="package"> <input
									type="hidden" name="trade_method" value="4"> <input
									type="hidden" name="idx" value="66">
								<div id="prdInfoWrap">
									<div class="prdInfoWrap" id="theFixed" style="top: 110px;">
										<div class="imgArea">
											<div class="ratio thumbnail-wrapper">
												<div class="thumbnail">

													<img src="/data/thumbImages/THUMB1_PBL2020_0034.jpg">

												</div>
											</div>
										</div>

										<div class="prdInfo">
											<div class="icon">
												<span class="newItem">NEW</span> <span class="eventItem">EVENT</span>
											</div>
											<p class="prd-title">${list.title}</p>
											<dl>
												<dt>적립금</dt>
												<dd class="point">
													<strong>${list.point}</strong><span>P</span>
												</dd>
											</dl>
											<dl>
												<dt>수강료</dt>
												<dd class="price">
													<strong class="price">${list.edupic }</strong><span>원</span>
												</dd>
											</dl>
											<dl>
												<dt>할인가</dt>
												<dd>
													<strong class="sale_price">${list.picdisco }</strong><span>원</span>
												</dd>
											</dl>
										</div>
										<div class="btn">
											<a href="javascript:movieBuySendit(1);"
												class="roundBtn grayBtn">장바구니</a> <a
												href="/html/common_ui/order/order_insert.php?gubun=package&amp;package_idx=66&amp;trade_method=4"
												class="roundBtn blueBtn">결제하기</a>
										</div>
									</div>
								</div>
							</form>

							<div id="prdDetail2">
								<div class="prdDetailExp-1">
									<div class="title">${list.title}</div>
									<div class="prd_desc">
										${list.content1 }
									</div>
									<div class="request-info">
										<ul>
											<li><span>유형</span>${list.type}</li>
											<li><span>강사</span>${list.name }</li>
											<li><span>기간</span>${list.edudate }</li>
										</ul>
									</div>
									<div class="benefit">
										<p class="title">혜택 및 구성</p>
										<ul>
											<li>${list.content2 } </li>
										</ul>
									</div>

									<div class="sampleVideo">
										<p class="title">샘플영상</p>
										<div class="movieWrap">
											<div class="movieArea">
											
											<!--  	동양상 링크
													<iframe width="699" height="650"
													src="https://v.kr.kollus.com/s?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjdWlkIjoiIiwiZXhwdCI6MTY3NTkyNjA0MiwiYXd0YyI6bnVsbCwibWMiOlt7Im1ja2V5IjoiUk1TNHBsT0siLCJtY3BmIjoiIn1dfQ.EohJeIQvizqTFKcWWMKEhtE9TglAuCVdnArp22lIBNQ&amp;custom_key=2e6ee3018fe2a13268d90b7240aea6e34f3d9cac96c4fe7617ff395f0aac2b72"
													frameborder="0" allowfullscreen="" webkitallowfullscreen=""
													mozallowfullscreen=""></iframe>
													-->
											</div>
										</div>
									</div>
									<div class="precautions">
										<p class="title">주의사항</p>
										<p class="txt">
											${list.content3 }
										</p>
									</div>
									<div id="scrollStop"></div>
								</div>
							</div>

						</div>

					</div>
				</div>
				<div class="inner-contents">
					<div class="videoReview">
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
													href="/html/edu_movie/community/community_review.php?mode=v&amp;bbs_data=aWR4PTIwNDUyJnN0YXJ0UGFnZT0mbGlzdE5vPSZ0YWJsZT0mY29kZT0mc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||">절망
													속에서 지푸라기 잡는 심정으로 ...</a>
											</p>
											<div class="txt">
												<a
													href="/html/edu_movie/community/community_review.php?mode=v&amp;bbs_data=aWR4PTIwNDUyJnN0YXJ0UGFnZT0mbGlzdE5vPSZ0YWJsZT0mY29kZT0mc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||">
													안녕하세요,&nbsp;저는&nbsp;11개월&nbsp;된&nbsp;믹스견&nbsp;루나의&nbsp;보호자입니다.&nbsp;&nbsp;&nbsp;“예민하고&nbsp;겁이&nbsp;많은&nbsp;믹스견,&nbsp;루나”&nbsp;루나는&nbsp;작년&nbsp;3월,&nbsp;제가&nbsp;1개월간&nbsp;임시
													보호를&nbsp;하다&nbsp;입양하게&nbsp;되었습니다.&nbsp;당시&nbsp;루나는&nbsp;전염성&nbsp;질환(지알디아)를&nbsp;오래&nbsp;앓아&nbsp;다른&nbsp;개를&nbsp;만나기&nbsp;어려웠고,&nbsp;이&nbsp;때문에&nbsp;산책하러&nbsp;잘&nbsp;나가지&nbsp;못했습니다.원래&nbsp;겁이&nbsp;많은&nbsp;친구라는&nbsp;것은&nbsp;알고&nbsp;있었지만,&nbsp;당시&nbsp;거주하던&nbsp;곳은&nbsp;비교적&nbsp;조용한&nbsp;주택가였기&nbsp;때문에&nbsp;저의&nbsp;통제가&nbsp;안&nbsp;될&nbsp;정도의&nbsp;문제행동은&nbsp;없었습니다.&nbsp;지나가는&nbsp;사람,&nbsp;자동차나&nbsp;개를&nbsp;무서워하긴
													했지만,&nbsp;산책&nbsp;자체는&nbsp;정말&nbsp;좋아해서&nbsp;완치&nbsp;후에는&nbsp;산책을&nbsp;곧잘&nbsp;나갔습니다.&nbsp;그때는&nbsp;산책&nbsp;경험을&nbsp;계속&nbsp;쌓다
													보면&nbsp;무서워하는&nbsp;문제들이&nbsp;차츰&nbsp;나아지리라&nbsp;생각했습니다.&nbsp;&nbsp;&nbsp;“가장
													중요한&nbsp;산책에&nbsp;문제가&nbsp;생기다”&nbsp;*사진 : 현관문 열고 집안 산책 훈련중
													... 무서워하는 루나&nbsp;아파트로&nbsp;이사를&nbsp;하게&nbsp;되었습니다.
													16층에서&nbsp;로비까지&nbsp;내려가야&nbsp;하는&nbsp;엘리베이터에서의&nbsp;첫&nbsp;기억은&nbsp;엉망진창이었고,&nbsp;잦은&nbsp;택배와&nbsp;손님&nbsp;방문에&nbsp;루나의&nbsp;스트레스가&nbsp;극에&nbsp;달했던&nbsp;것&nbsp;같습니다.어렵사리&nbsp;나가도,&nbsp;집&nbsp;주변은&nbsp;예민한&nbsp;루나에게&nbsp;좋은&nbsp;산책길이&nbsp;아니었습니다.&nbsp;자동차가&nbsp;덜&nbsp;다니는&nbsp;밤에&nbsp;나갔지만,&nbsp;무서움에&nbsp;줄당김은&nbsp;예전보다&nbsp;더&nbsp;심해졌고&nbsp;낯선&nbsp;소리가&nbsp;조금이라도&nbsp;들리기라도&nbsp;하면&nbsp;소스라치게&nbsp;놀라&nbsp;핑핑&nbsp;튕겨
													나갔어요.집에&nbsp;방문하는&nbsp;낯선&nbsp;손님들과&nbsp;처음&nbsp;만나게&nbsp;하는&nbsp;방법도&nbsp;잘&nbsp;몰랐던&nbsp;저&nbsp;때문에&nbsp;루나가&nbsp;밤새&nbsp;낑낑거리며&nbsp;구토와&nbsp;설사&nbsp;증상까지&nbsp;보였던&nbsp;날,&nbsp;그&nbsp;때&nbsp;저는&nbsp;처음으로&nbsp;루나의&nbsp;교육을&nbsp;다시&nbsp;새로&nbsp;해야
													한다는&nbsp;심각성을&nbsp;느꼈던&nbsp;것&nbsp;같습니다.“결국&nbsp;보호자인 내가
													제대로 알아야겠다”걱정이&nbsp;앞서 병원에 문의도 했고, 급한
													마음에&nbsp;방문&nbsp;훈련사도&nbsp;알아보았습니다.&nbsp;언제&nbsp;방문할지,&nbsp;얼마나&nbsp;교육을&nbsp;받아야&nbsp;할지에&nbsp;대해서&nbsp;설명을&nbsp;들었지만&nbsp;확신이&nbsp;서지&nbsp;않았습니다.지푸라기를&nbsp;잡는&nbsp;심정으로&nbsp;보듬&nbsp;홈페이지를&nbsp;방문하게&nbsp;되었고,&nbsp;교육&nbsp;영상을&nbsp;보게&nbsp;되었습니다.&nbsp;상담&nbsp;신청을&nbsp;했는데,&nbsp;담당&nbsp;매니저님이&nbsp;정말&nbsp;빠르게&nbsp;답신을&nbsp;주셨고&nbsp;간략하게나마&nbsp;상담을&nbsp;하게&nbsp;되었습니다.&nbsp;'상황이
													어렵다고
													확신할&nbsp;수&nbsp;없는&nbsp;방문&nbsp;훈련사에게&nbsp;훈련을&nbsp;받기&nbsp;보다,&nbsp;정확한&nbsp;강의를&nbsp;보면서&nbsp;내가&nbsp;공부해서&nbsp;반려견과&nbsp;함께&nbsp;연습해보자.'&nbsp;방문&nbsp;훈련사에게&nbsp;훈련방법을&nbsp;배워도&nbsp;꾸준히&nbsp;연습시키는&nbsp;것은&nbsp;결국&nbsp;보호자인&nbsp;나의&nbsp;몫이라는&nbsp;결론에&nbsp;이르게&nbsp;되어&nbsp;영상교육&nbsp;시청을&nbsp;시작하게&nbsp;되었습니다.“지금까지의&nbsp;연습과&nbsp;발전의&nbsp;결과”&nbsp;*좌측
													: 현관문 닫은 채로 현관에서 노즈워크 중. 무서웠던 것을 잊고 무아지경으로 엎드리기!*우측 : 가장 최근
													사진. 15분 거리 공원에서 산책 중. 원래는 꼬리 없는 개였어요. 그래서 응아가 꼬리에 늘 묻어있는
													...&nbsp;무조건&nbsp;밖으로&nbsp;데려나가는&nbsp;것이&nbsp;전부가&nbsp;아니라,&nbsp;현관에서&nbsp;자기&nbsp;발로&nbsp;나갈&nbsp;수&nbsp;있는&nbsp;것부터가&nbsp;산책의&nbsp;시작이라는&nbsp;것.&nbsp;그리고&nbsp;스피츠&nbsp;계열&nbsp;믹스로&nbsp;추정되는&nbsp;제&nbsp;반려견이&nbsp;어떤&nbsp;성격을&nbsp;타고&nbsp;났는지에&nbsp;대해&nbsp;조금씩&nbsp;이해하기&nbsp;시작했습니다.현관에&nbsp;익숙해지는&nbsp;것부터&nbsp;다시&nbsp;연습하기로&nbsp;하고,&nbsp;외출복으로&nbsp;다&nbsp;갈아입은&nbsp;후&nbsp;집&nbsp;안에서&nbsp;목줄을&nbsp;하고&nbsp;집안&nbsp;산책을&nbsp;시작했습니다.&nbsp;집&nbsp;안에서부터&nbsp;현관까지&nbsp;끝없이&nbsp;왔다&nbsp;갔다를&nbsp;반복했고,&nbsp;좋아하는&nbsp;공놀이나&nbsp;터그놀이도&nbsp;현관&nbsp;앞에서&nbsp;했습니다.&nbsp;셀프&nbsp;훈련을&nbsp;시작한&nbsp;지&nbsp;거의&nbsp;한&nbsp;달,&nbsp;현관에&nbsp;오면&nbsp;굳어서&nbsp;보호자인&nbsp;저에게&nbsp;집중&nbsp;못&nbsp;하고&nbsp;심장이&nbsp;요동치며&nbsp;간식도&nbsp;못&nbsp;삼키던&nbsp;루나가&nbsp;지금은&nbsp;현관까지&nbsp;꼬리를&nbsp;흔들면서&nbsp;따라오고,&nbsp;매일&nbsp;아침밥을&nbsp;현관에서&nbsp;저와&nbsp;함께&nbsp;먹고&nbsp;있습니다.&nbsp;앉아(엎드려)도&nbsp;할&nbsp;수&nbsp;있게
													되었어요.당장 집 앞으로 산책은 여전히 나가지 못하고 있지만 ... 차를 타고 15분 거리에 있는 공원에서
													산책을 하는데놀랍게도 친구들에게 먼저 다가가려고 하기도 하고, 적극적인 친구들이 다가와도 피하지 않고 같이
													냄새를 맡기도 합니다.&nbsp;손님이 오셨을 때도, 루나와 억지로 바로 만나게 하지 않고&nbsp;방을
													분리를 한 다음&nbsp;숨을 수 있게 해주었습니다. (손님이 들어오시면 일단 구석으로 숨어버려요)그리고
													마음을 열 때까지&nbsp;2~3시간 이상&nbsp;기다려 주었더니&nbsp;이번 설 명절에 처음으로
													손님이 있는 거실에 제 발로 스스로 나오는 기적같은 일이 있었습니다 …(방법이 완벽하지 않을 수는 있지만,
													루나가 보호자에 대한 믿음을 회복하는 유의미한 사건이었다고 혼자 생각합니다
													...)물론&nbsp;지금부터&nbsp;현관문에서&nbsp;아파트&nbsp;복도,&nbsp;엘리베이터,&nbsp;로비에서&nbsp;바깥으로&nbsp;나가기까지&nbsp;험난한&nbsp;여정이&nbsp;남아&nbsp;있지만&nbsp;…&nbsp;훈련을&nbsp;하면&nbsp;더디더라도&nbsp;어떻게든&nbsp;성과가&nbsp;나타난다는&nbsp;훈련사님&nbsp;이야기를&nbsp;되새기며,&nbsp;반복되는&nbsp;좌절과&nbsp;절망&nbsp;속에(?)&nbsp;훈련을&nbsp;이어나가고&nbsp;있습니다.“영상&nbsp;교육을&nbsp;통해&nbsp;얻게&nbsp;된&nbsp;것들”*사진
													: 꾸준히 쓰려고 노력 중인
													훈련일지강아지를&nbsp;키우는&nbsp;사람이라면&nbsp;모를&nbsp;수&nbsp;없는&nbsp;강형욱&nbsp;훈련사님의&nbsp;TV영상을&nbsp;저도&nbsp;보아왔지만,&nbsp;수많은&nbsp;영상&nbsp;속에서&nbsp;내&nbsp;반려견에게&nbsp;당장&nbsp;필요한&nbsp;부분이&nbsp;정확하게&nbsp;어떤&nbsp;것인지&nbsp;파악하기가&nbsp;쉽지&nbsp;않았습니다.&nbsp;보듬&nbsp;영상교육에서는&nbsp;정리된&nbsp;메뉴얼&nbsp;속에서&nbsp;훈련사님의&nbsp;강의를&nbsp;반복해&nbsp;들으며&nbsp;지금&nbsp;저에게&nbsp;필요한&nbsp;부분이&nbsp;어떤&nbsp;것인지&nbsp;작은
													부분이라도&nbsp;캐치를&nbsp;할&nbsp;수&nbsp;있었습니다.막연히&nbsp;영상만&nbsp;보고&nbsp;따라하는&nbsp;것보다&nbsp;먼저&nbsp;내&nbsp;개에&nbsp;대한&nbsp;이해를&nbsp;조금이라도&nbsp;할&nbsp;수&nbsp;있고,&nbsp;지금&nbsp;하고&nbsp;있는&nbsp;훈련이&nbsp;제대로&nbsp;잘&nbsp;되고&nbsp;있는&nbsp;것인지에&nbsp;대해&nbsp;확신이&nbsp;서지&nbsp;않을&nbsp;때&nbsp;점검이&nbsp;되기도&nbsp;합니다.&nbsp;물론
													영상만으로는 100% 해결되지 않는 부분도 많습니다.하지만 훈련 방법은 이미 확실하고, 내가 내 개의
													상태를 잘 관찰해서 파악하고 이를 꾸준히 적용해서 훈련한다면언젠가 루나도 저에게 답을 줄 날이 있으리라
													기대해봅니다.&nbsp;정말&nbsp;지극히&nbsp;점진적이고&nbsp;매우&nbsp;더디지만&nbsp;…&nbsp;조금씩&nbsp;눈에&nbsp;보이는&nbsp;변화들에&nbsp;위로를&nbsp;얻으며&nbsp;더&nbsp;부지런한&nbsp;보호자가&nbsp;되려&nbsp;노력하고&nbsp;있습니다.&nbsp;앞으로&nbsp;남은&nbsp;시간&nbsp;더&nbsp;열심히&nbsp;영상을&nbsp;시청하며&nbsp;훈련을&nbsp;해서,&nbsp;편안한&nbsp;산책을&nbsp;할&nbsp;수&nbsp;있게&nbsp;되기를&nbsp;바라봅니다.&nbsp;&nbsp;&nbsp;**&nbsp;짧은
													시간이었지만 친절하게 상담해 주신 권지희 매니저님 감사드려요! </a>
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
												<p class="name">김민하님</p>
											</div>
										</div>
									</div>
									<div class="col-33">
										<div class="pannel">
											<p class="title">
												<a
													href="/html/edu_movie/community/community_review.php?mode=v&amp;bbs_data=aWR4PTExMTA2JnN0YXJ0UGFnZT0mbGlzdE5vPSZ0YWJsZT0mY29kZT0mc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||">저의
													첫 퍼피 키우기는 보듬 덕분에 ...</a>
											</p>
											<div class="txt">
												<a
													href="/html/edu_movie/community/community_review.php?mode=v&amp;bbs_data=aWR4PTExMTA2JnN0YXJ0UGFnZT0mbGlzdE5vPSZ0YWJsZT0mY29kZT0mc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||">
													안녕하세요. 9개월 보더콜리 루나를 반려하고 있는 보호자에요. 방금 보듬 유튜브에 댓글 남기다가 혹시
													영상교육 후기 작성란이 있나 싶어서 들어와봤더니 있네요^^ 퍼피세미나 영상 후기랑 같이 올릴게요! 이전엔
													별 행동문제가 없었던 골든리트리버 성견 아이를 4살에 만나 6살까지 반려했었고, 그 아이가 갑작스레 강아지
													별로 돌아간 뒤 제 생애 첫 퍼피가 루나에요. 루나를 데려오기로 확정 한 뒤부턴 집에 오는 날까지 퍼피
													관련 공부를 했어요. 여기저기 찾아다니다 보듬 영상교육이 있다는 걸 알게되었어요. 퍼피교육 세미나를
													신청했고, 보면서 ‘아 퍼피를 키우면 이렇구나’하는 전반적인 개념을 알게 되었어요. 펜스 없이 집 전체를
													퍼피프루프로 만들고, 산책 전까진 마당에 하루 6-10번씩 데리고 나갔어요. 저희부부 없는 시간엔 운좋게도
													시엄마가 와서 루나 봐주셨구요. 주 보호자는 제가 주 보호자에요. 이갈이 잘 지나가라고 집에선 일 가는
													시간/자는 시간 빼곤 노즈워크도 많이 해주고, 터그도 많이 해주고, 정말 혼신의 힘을 다해 놀아줬어요.
													엄청 큰 뼈 갉아먹게 두는 시간과 루나가 자는 시간만이 제 쉬는시간 이었어요^^ㅎㅎ 잠도 제대로 못 자고
													지금 생각하니 참 힘들었네요. 배변이 완전히 잡히던 4개월까진 제가 안방 바닥에 싱글 매트리스 놓고 루나랑
													같이 잤어요. 첫 2주는 바닥에서 같이 자라고 하셨던 것 같은데 하다보니 2달을 바닥에서 잤어요..ㅎㅎ
													배변훈련은 패드 여기저기 깔아놓고, 실수하면 그냥 잘 닦아주고, 패드에 싸면 칭찬해주고 하면서 자연스레
													하도록 했어요. 저희한테 오기 전 엄마한테 화장실 개념을 잘 배워와선지 금방 배변훈련이 됐고 루나가 결국
													마지막에 고른 화장실이 옷방과 중간계단이네요. 현재 그 두 군데가 화장실이에요. 저는 호주에 살고있고,
													저희 동네가 그당시 파보 크게 터졌다던 지역과 인접해 산책을 일찍 시작하지 못했어요. 다니던 병원에서 열은
													퍼피스쿨도 14주 되서야 시작했고, 백신 4차 끝나던 16주부터 산책을 시작할 수 있었어요. 퍼피스쿨에서
													처음 알아챈게 루나가 전반적으로 겁이 많고 다른 강아지들을 무서워 한다는 점이었어요. 그래서 산책 나가도
													이렇겠구나 걱정을 많이 했어요. 그리고 첫 산책을 나가니 예상한대로 딱 봐도 긴장된 모습이 역력했고(첫번째
													영상), 개는 무서워 한다는 걸 이미 알고 있었지만 지나가는 사람도 무서워하더라구요. 그간 집에 친구들도
													자주 초대했었고, 퍼피스쿨 때도 사람은 누굴 만나도 좋아서 난리였지 아무 문제 없었는데, 산책하다 마주치는
													사람은 무서워서 계속 짖었어요. 쭉 지켜보니 루나가 시각 반응성이 높더라구요. 보더콜리의 특성이기도
													하겠죠.. 타고난 면이 크니 이대로 두면 안되겠다 싶어 바로 방어적산책 영상교육 신청을 했고, 영상에서
													나온대로 훈련하려고 집에서 2분거리 작은 공원에 계속 갔어요. 퍼피세미나 영상에서 처음엔 산책 너무 멀리
													가지 말라는 것도 참고했구요. 집 앞 공원이 사람이 종종 지나다니고 루나랑 같이 뒤로 빠질 공간도 충분해서
													영상에서 본 대로 교육하기 딱 좋은 공원이었어요. 일반 산책은 아예 포기하고, 첫 2주는 이 공원만,
													나머지 2주는 5분거리의 또다른 한적한 공원 추가해서 총 4주간 사람만 타겟으로 집중훈련을 했어요. 하루에
													2-4회 나가서 훈련한 것 같아요. 두번째 첨부한 영상이 훈련 시작 딱 4주 뒤 영상인데, 엄청 침착하고
													몸도 릴렉스 되있고 저한테 집중도 잘 하는 모습이에요^^ 이 때부턴 무서웠던 감정이 긍정적인 호기심으로
													바뀌었는지, 지나가는 사람한테 좋다고 점프하는거 막느라고 난리였어요. 이렇게 근본적인 감정 자체가 바뀐거
													자체만으로도 너무 영상교육 보길 잘했다 싶었고, 이후 지나가는 사람한테 점프하지 않는 교육도 ‘하면
													되겠다!’ 하는 자신감이 처음으로 생겼어요. 보듬 교육은 아니지만, 개 교육에 대해 저 스스로 공부를
													시작하게 된 계기가 되었어요. 한국이었으면 정말 보듬 풀패키지 했을 것 같아요. 그리고 이후엔 개에 대한
													반응성을 교육했는데, 영상에서 배웠던 것 그리고 제가 따로 공부해서 배운 것들과 결합해서 쭉 교육했어요.
													유튜브로 counter condition과 Look At That game을 배웠는데, 사용 환경과 방법이
													조금씩 다를 뿐이지 그 원리 자체는 보듬교육과 다 관통하더라구요! 트리거와의 거리를 통해 안전하다는 느낌,
													피할 수 있단 느낌 주기 / 적절한 타이밍에 보상을 통해 근본적인 감정을 바꿔나가는 부분이요^^ 보듬교육
													덕분에 개인공부도 수월하게 해나갈 수 있었어요. 정말 한 달에 한두번은 너무 지치고 힘들고.. 해도해도
													변하지 않는 것 같아 울고는 했네요. 그래도 포기하지 않고 영상 보며 노트해놓은 것들 보고 또 보며
													훈련했고, 한 달 전부터는 그 눈물로 훈련한 것들이 다 돌아오기 시작하더라구요. 사람에 대한 반응성 훈련
													뒤에는 소형견을 대상으로 훈련했어요. 일단 대형견에 대한 반응성이 제일 높아서 대형견은 무조건 피했어요.
													소형견만 타겟으로 훈련 3개월을 했고, 이후 소형견이랑 많이 괜찮아 졌어요. 10번을 마주치면 8번은 안
													짖어요. 동네 말티즈, 푸들 친구들도 몇 생겨서 그 친구들이랑은 만나면 반갑게 인사해요. 그 뒤 소형견
													훈련은 유지하며 대형견을 타겟으로 정말 100m 거리에서부터 훈련을 시작했는데(처음엔 100m 거리에서도
													보면 바로. 짖었어요) 2달 지난 지금, 좀 바디랭귀지가 침착한 대형견이면 6-7미터까지 가까이서 지나갈
													수 있게 됐어요. 곧 10개월 되가는데 정말 꾸준한 교육을 통해 루나가 괜찮은 강아지로 거듭나고 있어 너무
													기뻐요. 강선생님께 너무 감사드리고요. 후기 남기러 온 김에 흥분 많은 강아지 교육과 3살 미만 강아지
													교육도 결제 했어요. 또 배우는 대로 열심히 훈련해서 몇 달 뒤에 후기 남길게요. 강선생님 그리고 보듬
													여러분 정말 감사드립니다^^ 정말 이 감사한 마음을 말로 다 표현할 방법이 없네요. 마지막은 루나 최근
													사진 하나 첨부하고 갈게요^_^ </a>
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
												<p class="name">Dayeong Lee님</p>
											</div>
										</div>
									</div>
									<div class="col-33">
										<div class="pannel">
											<p class="title">
												<a
													href="/html/edu_movie/community/community_review.php?mode=v&amp;bbs_data=aWR4PTkwNzUmc3RhcnRQYWdlPSZsaXN0Tm89JnRhYmxlPSZjb2RlPSZzZWFyY2hfaXRlbT0mc2VhcmNoX29yZGVyPQ==||">보듬
													교육으로 키우고 싶습니다</a>
											</p>
											<div class="txt">
												<a
													href="/html/edu_movie/community/community_review.php?mode=v&amp;bbs_data=aWR4PTkwNzUmc3RhcnRQYWdlPSZsaXN0Tm89JnRhYmxlPSZjb2RlPSZzZWFyY2hfaXRlbT0mc2VhcmNoX29yZGVyPQ==||">
													보듬 교육 365일 패키지 신청했습니다.루씨 입양하면서 큰 지출이 있었는지라 많이 망설였습니다만, 보듬
													교육을 지지하는 마음에서 또 한번 카드를 긁었습니다. ㅜㅜ&nbsp;새벽까지 영상 시청해보니.. 하루라도
													빨리 신청할껄 하는 생각이 드네요.이 시기에 알아야 하는 중요한 정보들이 담겨 있습니다. 그리고 외면하거나
													무시하고 싶었던 이야기도 많이 들려주십니다.&nbsp;보듬 교육이 더 널리 퍼질 수 있도록 문턱을 좀 더
													낮춰주셨으면 하는 마음 전하면서..계속 영상 보면서 공부해
													보겠습니다.&nbsp;고맙습니다.&nbsp;&nbsp; </a>
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
												<p class="name">조재욱님</p>
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