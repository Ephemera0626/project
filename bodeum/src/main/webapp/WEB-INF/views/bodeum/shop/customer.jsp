<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>
    
<script>
//ios10 축소확대기능 끄기
    document.documentElement.addEventListener('touchstart', function (event) { 
    if (event.touches.length > 1) { 
        event.preventDefault();
        } 
    }, false);
</script>
<!-- Q&A 여닫기 -->
<script>
    //FAQ jquery
    //Accordian Action
    var action = 'click';
    var speed = "500";


    //Document.Ready
    $(document).ready(function(){
      //Question handler
    $('.faqAccodion li.q').on(action, function(){
      //gets next element
      //opens .a of selected question
    $(this).next().slideToggle(speed)
        //selects all other answers and slides up any open answer
        .siblings('.faqAccodion li.a').slideUp();

      //Grab img from clicked question
var img = $(this).children('img');
//Remove Rotate class from all images except the active
$('img').not(img).removeClass('rotate');
//toggle rotate class
img.toggleClass('rotate');

});//End on click

});//End Ready

</script>
<link rel="stylesheet" href="../../../resources/css/customer.css">
<script type="text/javascript">
    function search() {
        if (search_form.search_order.value == "") {
            alert("검색할 내용을 입력해주세요.");
            search_form.search_order.focus();
        } else {
            search_form.submit();
        }
    }
</script>

<div id="wrapper" class="customer">
    <div class="containerWrap">
        <div class="content">
            <div class="inner-contents cs-main">
                <div class="section">
                    <div class="page-cs-title"><strong>고객센터</strong></div>
                    <div class="cs-container">
                        <div class="col-70">
                            <div class="mypageGrayBox cscenterBox mb-50">
                                <div class="faqDiv">
                                    <form name="search_form" method="get" action="faqList.php">
                                        <div class="divWrap">
                                            <input type="text" class="fullInput" name="search_order"
                                                placeholder="궁금하신 내용을 검색해 보세요." />
                                            <div class="srchBtn">
                                                <a href="javascript:search();">검색</a>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <div class="faqBtnList">
                                <ul>
                                    <li class="on"><a href="?">TOP10</a></li>
                                    <li><a href="faqList.php?category=영상교육">영상교육</a></li>
                                    <li><a href="faqList.php?category= 오프라인레슨"> 오프라인레슨</a></li>
                                    <li><a href="faqList.php?category= 상품문의"> 상품문의</a></li>
                                    <li><a href="faqList.php?category= 주문/배송"> 주문/배송</a></li>
                                    <li><a href="faqList.php?category= 교환/반품"> 교환/반품</a></li>
                                </ul>
                            </div>
                            <div class="faqList">
                                <ul class="faqAccodion">
                                    <li class="q">솔루션 종료 후 연장이 가능한가요?<img src="../../../resources/Bodeum_files/menu-arrow.png">
                                    </li>
                                    <li class="a">
                                        365일 솔루션의 경우 1년 단위로 연장이 가능합니다. <br />
                                        강의 완료 1달 전 시점부터 "마이페이지" -> "나의 강의실"에 형성되는 "연장하기" 버튼을 이용하여 48만 원에 서비스 연장이 가능합니다.
                                        <br />
                                        ※ 연장 후 남아있는 수강권의 기간 연장은 고객센터로 전화 주시면 도움드리겠습니다. <br />
                                        <br />
                                        초기 솔루션의 수강 날짜가 종료된 후 연장을 희망하시는 분께서는 고객센터로 전화 주시면 도움드리겠습니다. <br />
                                        단, 수강 날짜 종료 후 연장에는 3개월 단위로 가격 인상이 있으며 <br />
                                        ※ 종료 후 6개월 이상 경과한 경우에는 새로운 솔루션로 가입해주셔야 합니다.<br />
                                        ※ 솔루션 종료 후 연장 시 결제일로부터 1년 연장됩니다.<br />
                                        ※ 솔루션 연장 시 잔여 수강권 기간연장, 온라인 수강, 오프라인 수업신청 자격을 유지합니다.<br />
                                        ※ 솔루션 연장 시 수강 기간 내 1회, 최대 30일까지 기존 일시 정지 기능이 초기화되어 신청할 수 있습니다.<br />
                                        (신청방법 : 마이페이지>내 강의> 솔루션-강의 리스트 보기 상단)
                                    </li>
                                    <li class="q">오프라인 레슨은 어떻게 신청하나요?<img src="../../../resources/Bodeum_files/menu-arrow.png">
                                    </li>
                                    <li class="a">
                                        매주 월요일 업데이트 되는 `교육신청` 페이지에서 그룹 레슨, 개인 레슨 강좌를 신청하실 수 있습니다. 그룹 레슨은 신청 접수 후 선착순
                                        기준으로 반려견 조합을 고려하여 승인 여부를 안내드립니다. </li>
                                    <li class="q">품절상품 재입고 일정은 알 수 없나요 ?<img
                                            src="../../../resources/Bodeum_files/menu-arrow.png"></li>
                                    <li class="a">
                                        입고 일정은 상품마다 매우 상이하며, 입고 여부가 정해져 있지 않은 경우도 있습니다.<br />
                                        <br />
                                        게시판에 문의 글 작성 또는 보듬숍 고객센터로 문의해주시면 안내해드리겠습니다.
                                    </li>
                                    <li class="q">A/S나 수선이 가능한가요 ?<img src="../../../resources/Bodeum_files/menu-arrow.png"></li>
                                    <li class="a">
                                        상세페이지에 기재되어 있듯 별도의 A/S나 수선은 불가합니다.<br />
                                        <br />
                                        또한, 부속품만 별도로 판매하고 있지 않습니다. <br />
                                        <br />
                                        <br />
                                        보듬에서는 구매일 기준 90일 이내 제품이 파손된 보호자님을 위하여 가슴줄에 한하여 ‘가슴줄 보상판매’를 시행하고 있습니다. <br />
                                        <br />
                                        구매 30일 이내 제품 파손 시 30% 할인, 구매 90일 이내 제품 파손 시 20% 할인된 금액으로 새 제품을 구매하실 수 있습니다.
                                        <br />
                                        <br />
                                        <br />
                                        * 보상판매를 원하실 시 게시판에 문의 글 작성 또는 보듬숍 고객센터로 문의하시기 바랍니다.
                                    </li>
                                    <li class="q">배송은 언제 시작되나요 ?<img src="../../../resources/Bodeum_files/menu-arrow.png"></li>
                                    <li class="a">
                                        평일(월~금) 오전 10시 이전 주문/결제 완료 건에 한하여 당일 출고되며, 이후 주문 건은 익일 발송됩니다.<br />
                                        <br />
                                        배송의 경우는 평균적으로 1~2일 내 상품 수령이 가능합니다.<br />
                                        <br />
                                        단, 택배사의 사정(연휴 기간, 기상 등)에 따라 배송기간은 차이가 있을 수 있으니 양해부탁드립니다.
                                    </li>
                                    <li class="q">기기 변경 횟수가 초과되었다고 나와요.<img src="../../../resources/Bodeum_files/menu-arrow.png">
                                    </li>
                                    <li class="a">
                                        디바이스 종류(데스크톱, 노트북, 태블릿, 모바일 등)와 무관하게 한 아이디 당 기기 3대까지 이용하실 수 있습니다.<br />
                                        수강 기기 변경 및 초기화를 원하시면 고객센터로 연락주시거나, 마이페이지 내 1:1 문의를 남겨주시기 바랍니다. </li>
                                    <li class="q">솔루션 회원이 아니면 오프라인 레슨에 참여 못하나요?<img
                                            src="../../../resources/Bodeum_files/menu-arrow.png"></li>
                                    <li class="a">
                                        홈페이지 교육신청> "비회원 수업 신청 페이지"에서 솔루션 회원이 아니더라도 참여 가능하니 참고바랍니다.<br />
                                        바로가기 링크 복사 ▶▶ https://bit.ly/3EyWGFs </li>
                                    <li class="q">방문해서 구매/수령 가능한 곳이 있나요?<img
                                            src="../../../resources/Bodeum_files/menu-arrow.png"></li>
                                    <li class="a">
                                        보듬숍은 별도의 오프라인 매장을 운영하지 않아, 방문 수령 및 방문 구매는 불가합니다.<br />
                                        <br />
                                        온라인(자사 홈페이지 쇼핑몰과 네이버 스토어팜)을 통해서만 구매 가능하신 점 양해 부탁드립니다. <br />
                                        <br />
                                        * 보듬 오남 캠퍼스는 ㈜보듬컴퍼니의 교육장으로 방문하셔도 제품 착용, 방문 수령 및 방문 구매는 불가합니다.
                                    </li>
                                    <li class="q">교환/반품 접수는 어떻게 하나요 ?<img src="../../../resources/Bodeum_files/menu-arrow.png">
                                    </li>
                                    <li class="a">
                                        자사 쇼핑몰에서 구매 ><br />
                                        <br />
                                        마이페이지 - 1:1 문의에서 문의 글 작성 후, 교환/반품 접수<br />
                                        <br />
                                        <br />
                                        스토어팜(네이버)에서 구매 ><br />
                                        <br />
                                        네이버페이 - 결제내역(PC버전)에서 교환/반품 접수<br />
                                        <br />
                                        <br />
                                        * 위탁판매 상품은 보듬숍 고객센터(1800-6358)를 통한 전화로 교환/반품 접수가 가능합니다.
                                    </li>
                                    <li class="q">'솔루션'과 '나 혼자 한다 패키지'는 무엇이 다른가요?<img
                                            src="../../../resources/Bodeum_files/menu-arrow.png"></li>
                                    <li class="a">
                                        '솔루션'은 보듬교육의 모든 영상강의와 더불어 오프라인 레슨에 참가할 수 있는 자격이 주어지며, 보듬훈련사를 직접 만나 다양한 주제의 교육을
                                        받을 수 있습니다. 또한 비공개 커뮤니티에 초대되어 보듬훈련사에게 교육에 대한 피드백을 받을 수 있습니다.<br />
                                        '나 혼자 한다 패키지'는 보듬교육의 모든 영상강의가 제공되며, 오프라인 수업은 참가할 수 없습니다. </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-30">
                            <div class="cs-main-right">
                                <div class="csDiv csDiv01">
                                    <h4><img src="../../../resources/Bodeum_files/ex-1.png">공지사항</h4>
                                    <div class="txt">보듬의 <span class="blue">새로운 소식</span>을 공지사항을 통해 확인하세요.</div>
                                    <ul class="ulList">
                                        <li><a href="notice.php?mode=v&idx=27095">개인 정보 처리방침 안내 (2022.11.08 ~
                                                2023.02.07)</a></li>
                                        <li><a href="notice.php?mode=v&idx=27059">[보듬교육]홈페이지 상담 신청하기 이벤트 "01월 당첨...</a>
                                        </li>
                                        <!-- <li>보듬 공식 유투브 채널이 오픈되었습니다!</li> -->
                                    </ul>
                                    <div class="btn">
                                        <a href="notice.php" class="roundBtn">공지사항 더보기</a>
                                    </div>
                                </div>
                                <div class="csDiv csDiv02">
                                    <h4><img src="../../../resources/Bodeum_files/ex-2.png">상담신청</h4>
                                    <div class="txt">아직 <span class="blue">어떤 프로그램</span>을 들어야 할지 모르시나요?</div>
                                    <div class="btn">
                                        <a href="counsel.php" class="roundBtn">상담신청하기</a>
                                    </div>
                                </div>
                                <div class="csDiv csDiv03">
                                    <h4><img src="../../../resources/Bodeum_files/ex-3.png">고객센터</h4>
                                    <div class="number">1800-6358</div>
                                    <div class="hours">
                                        <h5>보듬교육 고객센터</h5>
                                        <div>
                                            <span>업무시간 : 10:00 - 18:00</span><span class="lunch">점심시간 : 13:00 -
                                                14:00</span>
                                        </div>
                                        <div>토요일, 일요일, 공휴일 <span class="blue">휴무</span>입니다.</div>
                                    </div>
                                    <div class="hours">
                                        <h5>보듬숍 고객센터</h5>
                                        <div>
                                            <span>업무시간 : 10:00 - 18:00</span><span class="lunch">점심시간 : 13:00 -
                                                14:00</span>
                                        </div>
                                        <div>토요일, 일요일, 공휴일 <span class="blue">휴무</span>입니다.</div>
                                    </div>
                                </div>
                                <div class="csDiv csDiv04">
                                    <h4><img src="../../../resources/Bodeum_files/customerIcon.png">Kollus Player FAQ</h4>
                                    <div class="txt">영상 관련 자주 묻는 질문을 안내해드립니다.</div>
                                    <div class="btn">
                                        <a href="http://info.kollus.com/faq/" target="_blank" class="roundBtn">FAQ
                                            보러가기</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- footer Start -->

</div>
<script type="text/javascript" src="../../../resources/JSflies/jquery.min.js"></script>
<script type="text/javascript" src="../../../resources/heyModal.min.js"></script>
<script src="../../../resources/JSflies/jquery-1.11.2.min.js"></script>
<script src="../../../resources/JSflies/datepicker.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        var myModal = heyModal(document.querySelector('.modal-layerPopup'));
    });
</script>
<script>
    $('#minDatePick').dcalendarpicker();
    $('#maxDatePick').dcalendarpicker();
	//creates the calendar
</script>
<script type="text/javascript">
    jQuery("document").ready(function ($) {
        var nav = $('#m_header');
        var pos = nav.offset().top;

        $(window).scroll(function () {
            var fix = ($(this).scrollTop() > pos) ? true : false;

            nav.toggleClass("fixed", fix);
            $('body').toggleClass("fix-body", fix);
        });
    });
</script>
<script type="text/javascript">
    jQuery("document").ready(function ($) {
        var nav = $('#header');
        var pos = nav.offset().top;

        $(window).scroll(function () {
            var fix = ($(this).scrollTop() >= pos) ? true : false;
            nav.toggleClass("fixed", fix);
        });
        $(window).scroll(function () {
            if ($(window).scrollTop() > pos) {
                $('#header.pcVer').addClass('fixed');
            } else {
                $('#header.pcVer').removeClass('fixed');
            };
        });
    });
</script>
<script>
    //상세페이지 정보

    $(document).ready(function (e) {
        var navWrap = $('body'),
            item = $('.prdInfoWrap'),
            gap = $("#header").height(),
            paddingGap = 60,
            startPosition = 0,
            stopPosition = $(".scrollStop").offset().top - item.outerHeight(true) - gap - paddingGap;
        $(window).on("resize", function (e) {
            if ($(window).width() < 990) {
                gap = 50;
                stopPosition = $(".scrollStop").offset().top - item.outerHeight(true) - gap - paddingGap;
            } else {
                gap = $("#header.pcVer").height();
                stopPosition = $(".scrollStop").offset().top - item.outerHeight(true) - gap - paddingGap;
            }

            $(document).trigger("scroll");
        })
        $(window).trigger("resize");
        $(window).scroll(function () {
            //stick nav to top of page
            var st = $(this).scrollTop();
            if (st > startPosition) {
                item.addClass("sticky-fixed");
                item.css({ top: gap });
                if (st > stopPosition) {
                    item.removeClass("sticky-fixed");
                    item.addClass("sticky-abs");
                    item.css({ top: stopPosition - paddingGap });
                } else {
                    item.addClass("sticky-fixed");
                    item.removeClass("sticky-abs");
                }
            } else {
                item.removeClass("sticky-fixed");
                item.css({ top: gap + paddingGap });
                console.log("gap+paddingGap===", gap + paddingGap);
            }
        });
    })
</script>
<script>
    //비회원 주문, 회원 주문
    $(document).ready(function (e) {
        var navWrap = $('body'),
            item = $('.order-prdInfoWrap'),
            gap = $("#header").height(),
            paddingGap = 60,
            startPosition = 0,
            stopPosition = $("#footer").offset().top - item.outerHeight(true) - gap - paddingGap;
        //console.log("startPosition===",startPosition,"stopPosition===",stopPosition);
        $(window).on("resize", function (e) {
            if ($(window).width() < 990) {
                gap = 50;
                stopPosition = $("#footer").offset().top - item.outerHeight(true) - gap - paddingGap;
            } else {
                gap = $("#header.pcVer").height();
                stopPosition = $("#footer").offset().top - item.outerHeight(true) - gap - paddingGap;
            }

            $(document).trigger("scroll");
        })
        $(window).trigger("resize");
        $(document).scroll(function () {
            //stick nav to top of page
            var st = $(this).scrollTop();
            if (st > startPosition) {
                item.addClass("sticky-fixed");
                item.css({ top: gap });
                if (st > stopPosition) {
                    item.removeClass("sticky-fixed");
                    item.addClass("sticky-abs");
                    item.css({ top: stopPosition - paddingGap });
                } else {
                    item.addClass("sticky-fixed");
                    item.removeClass("sticky-abs");
                }
            } else {
                item.removeClass("sticky-fixed");
                item.css({ top: gap + paddingGap });
            }
        });
    })
</script>
<script src="../../../resources/JSflies/jquery.simplePopup.js"></script>
<script type="text/javascript">
    //마이페이지 - 주문내역팝업
    $(document).ready(function () {
        $('.show').click(function () {
            $('#pop1').simplePopup();
        });
    });
</script>

<!-- Mobon Tracker v3.1 [공용] start -->
<script type="text/javascript">
        function mobRf(){
                var rf = new EN();
            rf.setSSL(true);
                rf.sendRf();
        }
    //-->
</script>
<script src="../../../resources/JSflies/enliple_min2.js" defer="defer" onload="mobRf()"></script>
<!-- Mobon Tracker v3.1 [공용] end -->

<!-- WIDERPLANET  SCRIPT START 2018.8.1 -->
<div id="wp_tg_cts" style="display:none;"></div>
<script type="text/javascript">
    var UserAgent = navigator.userAgent;
    var widerplanet_device = (UserAgent.match(/iPhone|iPod|iPad|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null
        || UserAgent.match(/LG|SAMSUNG|Samsung/) != null) ? "moblie" : "web";

    var wptg_tagscript_vars = wptg_tagscript_vars || [];
    wptg_tagscript_vars.push(
        (function () {
            return {
                wp_hcuid: "",   /*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
				*주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
                ti: "41304",	/*광고주 코드 */
                ty: "Home",	/*트래킹태그 타입 */
                device: widerplanet_device	/*디바이스 종류  (web 또는  mobile)*/

            };
        }));
</script>
<script type="text/javascript" async src="../../../resources/JSflies/wp_astg_4.0.js"></script>
<!-- // WIDERPLANET  SCRIPT END 2018.8.1 -->

<!-- NAVER SCRIPT -->
<script type="text/javascript" src="../../../resources/JSflies/wcslog.js"></script>
<script type="text/javascript">
    if (!wcs_add) var wcs_add = {};
    wcs_add["wa"] = "s_47fad347659f";
    if (!_nasa) var _nasa = {};
    if (window.wcs) {
        wcs.inflow("bodeum.co.kr");
        wcs_do(_nasa);
    }
</script>

<!-- NAVER SCRIPT END -->
</body>
</html>
<!-- footer End -->
<%@include file="../includes/footer.jsp" %>
