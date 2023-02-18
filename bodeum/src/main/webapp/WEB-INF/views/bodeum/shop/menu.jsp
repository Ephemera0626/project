<%@include file="../includes/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/menu.css">
</head>
<body>
<div id="wrapper" class="shopmain">
    <div class="containerWrap">
        <div class="home_menu">
            <ul id="menu_inner">
                <li style="width: 15px;"><a href="/html/shop/">
                <img src="../../../resources/Bodeum_files/icon_menu_home.svg" alt="" /></a></li>
                <li>&nbsp;&nbsp;&gt;&nbsp;&nbsp;
                    <a href="list.php?part_idx=3">패션</a>
                </li>
                <!--li>&nbsp;&gt;&nbsp;&nbsp;<a href="javascript:"></a>&nbsp;&nbsp;&gt;&nbsp;</li>
              <li><a href="javascript:">패션</a></li-->
            </ul>
        </div>
        <div class="content">
            <div class="inner-contents">
                <div class="list-section">
                    <div class="cate-title-wrap">
                        <div class="cate-title">
                            패션 </div>


                        <ol class="cate-mobile-2depth">
                            <!--li class="on"><a href="javascript:">2dep패션</a></li>
                            <li><a href="javascript:">2dep패션</a></li>
                            <li><a href="javascript:">2dep패션</a></li-->
                        </ol>
                    </div>

                    <script>
                        var $2depthli = $('.cate-3depth li');

                        $2depthli.on('click', function () {
                            $(this).addClass('on');
                        })
                    </script>
                    <div class="sort">
                        <ul>
                            <li><a href="?part_idx=3&search_sort=1">최근 등록 순</a></li>
                            <li><a href="?part_idx=3&search_sort=2">판매 수량 순</a></li>
                            <li><a href="?part_idx=3&search_sort=3">낮은 가격 순</a></li>
                            <li><a href="?part_idx=3&search_sort=4">높은 가격 순</a></li>
                        </ul>
                    </div>
                    <div class="m_sort">
                        <select name="msort" id="msort" onchange="if(this.value) location.href=(this.value);">
                            <option value="?part_idx=3&search_sort=1">최근 등록 순</option>
                            <option value="?part_idx=3&search_sort=2">판매 수량 순</option>
                            <option value="?part_idx=3&search_sort=3">낮은 가격 순</option>
                            <option value="?part_idx=3&search_sort=4">높은 가격 순</option>
                            <option value="?part_idx=3&search_sort=5">상품평 순</option>
                        </select>
                    </div>
                    <div class="prd-list-wrap">
                        <div class="container">
                            <div class="row">
                                <div class="col-25">
                                    <div class="prd-wrap">
                                        <div class="img">
                                            <div class="ratio2 thumbnail-wrapper">
                                                <div class="thumbnail">
                                                    <div class="centered">
                                                        <a href="specific.php?idx=1059&part_idx=29"><img
                                                                src="../../../resources/Bodeum_files/1667186511_IMAGES1.jpg"
                                                                data-pin-nopin="true"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="title"><a href="specific.php?idx=1059&part_idx=29"><!--[보듬]--> 보듬
                                                셰르파 강아지 패딩</a></div>
                                        <!--171031 추가-->
                                        <!--할인이 들어가는 제품일 경우 노출됩니다.-->
                                        <div class="priceWrap">
                                            <div class="saleprice"><span>109,000</span>원</div>
                                            <div class="price"><strong>76,300</strong>원</div>
                                        </div>
                                        <!--//171031 추가-->
                                        <div class="icon">
                                            <span class="bestItem">BEST</span> <span class="saleItem">SALE</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-25">
                                    <div class="prd-wrap">
                                        <div class="img">
                                            <div class="ratio2 thumbnail-wrapper">
                                                <div class="thumbnail">
                                                    <div class="centered">
                                                        <a href="specific.php?idx=962&part_idx=27"><img
                                                                src="../../../resources/Bodeum_files/1657159510_IMAGES1.jpg"
                                                                data-pin-nopin="true"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="title"><a href="specific.php?idx=962&part_idx=27"><!--[Mayfair]-->
                                                아이씨쿨 펫 넥밴드 강아지 쿨스카프</a></div>
                                        <!--171031 추가-->
                                        <!--할인이 들어가는 제품일 경우 노출됩니다.-->
                                        <div class="priceWrap">

                                            <div class="price"><strong>19,900</strong>원</div>
                                        </div>
                                        <!--//171031 추가-->
                                        <div class="icon">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-25">
                                    <div class="prd-wrap">
                                        <div class="img">
                                            <div class="ratio2 thumbnail-wrapper">
                                                <div class="thumbnail">
                                                    <div class="centered">
                                                        <a href="specific.php?idx=948&part_idx=109"><img
                                                                src="../../../resources/Bodeum_files/1656301191_IMAGES1.jpg"
                                                                data-pin-nopin="true"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="title"><a
                                                href="specific.php?idx=948&part_idx=109"><!--[REX SPECS]--> 렉스스펙스 V2
                                                프레임 반려견 고글</a></div>
                                        <!--171031 추가-->
                                        <!--할인이 들어가는 제품일 경우 노출됩니다.-->
                                        <div class="priceWrap">

                                            <div class="price"><strong>130,000</strong>원</div>
                                        </div>
                                        <!--//171031 추가-->
                                        <div class="icon">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-25">
                                    <div class="prd-wrap">
                                        <div class="img">
                                            <div class="ratio2 thumbnail-wrapper">
                                                <div class="thumbnail">
                                                    <div class="centered">
                                                        <a href="specific.php?idx=947&part_idx=109"><img
                                                                src="../../../resources/Bodeum_files/1656062962_IMAGES1.jpg"
                                                                data-pin-nopin="true"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="title"><a
                                                href="specific.php?idx=947&part_idx=109"><!--[REX SPECS]--> 렉스스펙스 교체
                                                렌즈 (V2 전용)</a></div>
                                        <!--171031 추가-->
                                        <!--할인이 들어가는 제품일 경우 노출됩니다.-->
                                        <div class="priceWrap">

                                            <div class="price"><strong>20,000</strong>원</div>
                                        </div>
                                        <!--//171031 추가-->
                                        <div class="icon">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-25">
                                    <div class="prd-wrap">
                                        <div class="img">
                                            <div class="ratio2 thumbnail-wrapper">
                                                <div class="thumbnail">
                                                    <div class="centered">
                                                        <a href="specific.php?idx=926&part_idx=27"><img
                                                                src="../../../resources/Bodeum_files/1653551327_IMAGES1.jpg"
                                                                data-pin-nopin="true"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="title"><a href="specific.php?idx=926&part_idx=27"><!--[시카로]--> 시카로
                                                슈프림프로 강아지 건조 가운</a></div>
                                        <!--171031 추가-->
                                        <!--할인이 들어가는 제품일 경우 노출됩니다.-->
                                        <div class="priceWrap">

                                            <div class="price"><strong>180,000</strong>원</div>
                                        </div>
                                        <!--//171031 추가-->
                                        <div class="icon">
                                            <span class="bestItem">BEST</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-25">
                                    <div class="prd-wrap">
                                        <div class="img">
                                            <div class="ratio2 thumbnail-wrapper">
                                                <div class="thumbnail">
                                                    <div class="centered">
                                                        <a href="specific.php?idx=925&part_idx=27"><img
                                                                src="../../../resources/Bodeum_files/1653546868_IMAGES1.jpg"
                                                                data-pin-nopin="true"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="title"><a href="specific.php?idx=925&part_idx=27"><!--[시카로]--> 시카로
                                                솔루션 강아지 건조 가운</a></div>
                                        <!--171031 추가-->
                                        <!--할인이 들어가는 제품일 경우 노출됩니다.-->
                                        <div class="priceWrap">

                                            <div class="price"><strong>219,000</strong>원</div>
                                        </div>
                                        <!--//171031 추가-->
                                        <div class="icon">
                                            <span class="bestItem">BEST</span> <span class="saleItem">SALE</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-25">
                                    <div class="prd-wrap">
                                        <div class="img">
                                            <div class="ratio2 thumbnail-wrapper">
                                                <div class="thumbnail">
                                                    <div class="centered">
                                                        <a href="specific.php?idx=864&part_idx=29"><img
                                                                src="../../../resources/Bodeum_files/1635147950_IMAGES1.jpg"
                                                                data-pin-nopin="true"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="title"><a href="specific.php?idx=864&part_idx=29"><!--[보듬]--> 보듬
                                                이지 뽀글이 자켓 강아지 패딩</a></div>
                                        <!--171031 추가-->
                                        <!--할인이 들어가는 제품일 경우 노출됩니다.-->
                                        <div class="priceWrap">
                                            <div class="saleprice"><span>85,000</span>원</div>
                                            <div class="price"><strong>59,500</strong>원</div>
                                        </div>
                                        <!--//171031 추가-->
                                        <div class="icon">
                                            <span class="bestItem">BEST</span> <span class="saleItem">SALE</span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <!-- Paging -->
                    <div class="paging">
                        <ol>
                            <li class='active'><a href='#'>1</a></li>
                            <li class="etc">…</li>
                            <li><a href="?part_idx=3&search_sort=&search_order=&PageNumber=1">1</a></li>
                        </ol>
                        <p>
                            <a href='#prev' class='arrow_l'>Prev</a>
                        </p>
                        <p class="last">
                            <a href='#next' class='arrow_r'>Next</a>
                        </p>
                    </div>
                    <!-- Paging -->

                </div>
            </div>
        </div>
    </div>
</div>

<!-- footer 아래 장바구니 메뉴 -->

<div id="quickMenu" class="quickMenu-rel">
    <h4>Quick menu</h4>
    <div class="cart" onclick="location.href='../common_ui/order/cart.php';">
        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
        <p>장바구니</p>
    </div>
    <div class="recent">
        <h4>최근 본 상품</h4>
        <div id="recentWrap">
            <ul>
                <li>
                    <div class="ratio2 thumbnail-wrapper">
                        <div class="thumbnail">
                            <div class="centered">
                                <a href="/html/shop/prd_detail.php?part_idx=29&idx=1059"><img
                                        src="../../../resources/Bodeum_files/1667186511_IMAGES1.jpg"></a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <div class="page">
                <p>
                    <span>
                        1 </span> / 1
                </p>
                <a href='javascript:msgFirst()' ; class='prev'><i class='fa fa-angle-left' aria-hidden='true'></i></a>
                <a href='javascript:msgLast()' ; class='next'><i class='fa fa-angle-right' aria-hidden='true'></i></a>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="../../../resources/JSfiles/jquery.min.js"></script>
<script type='text/javascript' src='../../../resources//JSfiles/heyModal.min.js'></script>
<script src="../../../resources/JSfiles/jquery-1.11.2.min.js"></script>

<script type="text/javascript" src="/html/common/js/slider.js"></script>
<script src="../../../resources/JSfiles/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="../../../resources/JSfiles/slick.js" type="text/javascript" charset="utf-8"></script>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        var myModal = heyModal(document.querySelector('.modal-layerPopup'));
    });
</script>
<script src="../../../resources/Bodeum_files/datepicker.js"></script>
<script>
    $('#minDatePick').dcalendarpicker();
    $('#maxDatePick').dcalendarpicker();
//creates the calendar
</script>
<script src="../../../resources/Bodeum_files/1.8jquery.min.js"></script>
<script type="text/javascript">
    $(window).scroll(function () {
        if ($(this).scrollTop() > 250) {
            $("#quickMenu").removeClass("quickMenu-rel").addClass("quickMenu-fix");
        } else {
            $("#quickMenu").removeClass("quickMenu-fix").addClass("quickMenu-rel");
        }

    });
    $(window).resize(function () {

        if ($(window).width() < 1800) {
            $('#quickMenu').addClass('none');
        } else {
            $('#quickMenu').removeClass('none');
        }

    });
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
            var fix = ($(this).scrollTop() >= 100) ? true : false;
            nav.toggleClass("fixed", fix);
        });
        $(window).scroll(function () {
            if ($(window).scrollTop() > 100) {
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
    //FAQ jquery
    //Accordian Action
    var action = 'click';
    var speed = "500";

    //Document.Ready
    $(document).ready(function () {
        //Question handler
        $('.reviewAccodion li.review-title').on(action, function () {
            //gets next element
            //opens .a of selected question
            $(this).next().slideToggle(speed)
                //selects all other answers and slides up any open answer
                .siblings('.reviewAccodion li.review-content').slideUp();

        });//End on click

        $('.reviewAccodion li.review-title').click(function () {
            $(this).toggleClass('on')
                .parent().siblings().children().removeClass('on');
        });

    });//End Ready

</script>
<script>
    //FAQ jquery
    //Accordian Action
    var action = 'click';
    var speed = "500";

    //Document.Ready
    $(document).ready(function () {
        //Question handler
        $('.qaAccodion li.qa-title').on(action, function () {
            //gets next element
            //opens .a of selected question
            $(this).next().slideToggle(speed)
                //selects all other answers and slides up any open answer
                .siblings('.qaAccodion li.qa-content').slideUp();

        });//End on click

        $('.qaAccodion li.qa-title').click(function () {
            $(this).toggleClass('on')
                .parent().siblings().children().removeClass('on');
        });

    });//End Ready

</script>

<script>
    //상품상세페이지 썸네일 마우스오버
    $(".sm-thum-list ul li").mouseover(function () {
        $(".sm-thum-list ul li").removeClass("active")
        $(this).addClass("active")
    })
</script>

<!-- Mobon Tracker v3.1 [공용] start -->
<script type="text/javascript">
    <!--
    function mobRf(){
          var rf = new EN();
        rf.setSSL(true);
          rf.sendRf();
    }
    //-->
</script>
<script src="../../../resources/Bodeum_files/enliple_min2.js" defer="defer" onload="mobRf()"></script>
<!-- Mobon Tracker v3.1 [공용] end -->

<!-- WIDERPLANET  SCRIPT START 2018.8.1 -->
<div id="wp_tg_cts" style="display:none;"></div>
<script type="text/javascript">
    var UserAgent = navigator.userAgent;
    var widerplanet_device = (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null
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
<script type="text/javascript" async src="../../../resources/Bodeum_files/wp_astg_4.0.js"></script>
<!-- // WIDERPLANET  SCRIPT END 2018.8.1 -->

<!-- NAVER SCRIPT -->
<script type="text/javascript" src="../../../resources/Bodeum_files/wcslog.js"></script>
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

</html><!-- footer End -->
		<%@include file="../includes/footer.jsp"%>
