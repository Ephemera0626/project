<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../includes/header.jsp" %>

<link rel="stylesheet" href="../../../resources/css/review.css">

<div id="wrapper" class="shopmain">
    <div class="containerWrap">
        <div class="content">
            <div class="inner-contents">
                <div class="section">
                    <div class="product-review" id="reviewList">
                        <div class="prd-info">
                            <div class="title-wrap">
                                <div class="imgArea">
                                    <div class="ratio2 thumbnail-wrapper">
                                        <div class="thumbnail">
                                            <div class="centered">
                                                <!-- 아래 a href에 나중에 해당 상품 페이지 주소값 줘야함 -->
                                                <a href="/bodeum/shop/specific">
                                                <img src="../../../resources/Bodeum_files/1635147950_IMAGES1.jpg"></a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <div class="title-txt">
                                   <!-- 아래 a href에 나중에 해당 상품 페이지 주소값 줘야함 -->
                                   <a href="/bodeum/shop/specific">보듬 이지 뽀글이 자켓 강아지 패딩</a>
                                </div>
                            </div>
                        </div>
                       <a href="/bodeum/shop/register"> <div onclick="writervw()" >후기 등록</div></a>                      
                        <h4>REVIEW<span class="rcnt">( ${review.rcnt} )</span></h4>
                        <div class="reviewList" id="reviewList">
                            <ul class="reviewAccodion2">
                                <li class="review-title">
                                    <div class="txt">
                  	<input type="hidden" name="rboardnum" value="${review.rboardnum}">
                                        <h5>${review.rtitle }</h5>
                                        <div class="option"> <!-- 카테고리가 들어와야하나? -->
                                           ${review.itemnum} </div>
                                        <p><span>${review.userid}</span>
                                        <span><fmt:formatDate pattern="yyyy/MM/dd" value="${review.rdates}"/></span></p>
                                    </div>
                                </li>
                              
                                <li class="review-content" style="overflow: hidden; display: none;">
                                    <div class="mb-10">
                                        <img src="../../../resources/Bodeum_files/16755124351.jpg">
                                    </div>
                                    ${review.rcontent}
                                </li>
                                <li class="review-title">
                                    <div class="txt">
                                        <h5>첫 옷이에요.. ????</h5>
                                        <div class="option">
                                            컬러 : 이지 뽀글이 자켓 크림 , 사이즈 : XL </div>
                                        <p><span>pot*****</span><span>2022.12.10</span></p>
                                    </div>
                                </li>
                                <li class="review-content" style="overflow: hidden; display: none;">
                                    <div class="mb-10">
                                        <img src="../../../resources/Bodeum_files/16706598191.jpeg">
                                    </div>
                                    <div class="mb-10">
                                        <img src="../../../resources/Bodeum_files/16706598192.jpeg">
                                    </div>
                                    <div class="mb-10">
                                        <img src="../../../resources/Bodeum_files/16706598193.jpeg">
                                    </div>
                                    애기 입양하고 처음 맞는 겨울이에요 ㅎㅎ
                                    애기도 겨울에 뛰어노는 것도 처음일거구, 옷을 입어보는 것도 처음일거 같아서 옷 고르는데 고민이 많았어요!
                                    일단 옷 입을 때 간편했으면 했구, 디자인적으로 제 취향이고 애기한테 잘 어울려야 했습니다 ㅋㅋㅋㅋ
                                    그러다 몇날며칠을 고민하고 구매했는데 만족도 최상입니다!!! 옷 위로 하네스를 채워야하는 줄 알았는데 반대여서 너무 신기했어요 ㅋㅋㅋ 진짜 사람들
                                    똑똑해!!!
                                    애기도 입고다닐때 전혀 거슬려하지 않네요! 보듬숍 짱짱 ????????
                                </li>
                                <li class="review-title">
                                    <div class="txt">
                                        <h5>보듬 이지 뽀글이 자켓 강아지 패딩후기</h5>
                                        <div class="option">
                                            컬러 : 이지 뽀글이 자켓 카키 , 사이즈 : S </div>
                                        <p><span>pws*****</span><span>2022.12.06</span></p>
                                    </div>
                                </li>
                                <li class="review-content" style="overflow: hidden; display: none;">
                                    <p>예전 보듬패딩보다 허리부분이 얇아서 소변 볼때도 옷에 묻히지 않고 강아지가 더 편해 하는것 같아요</p>
                                    <p>몽구는 옷 입히기가 힘들어 보듬 패딩만 3번째 입고 있어요</p>
                                    <p>&nbsp;</p>
                                </li>
                                <li class="review-title">
                                    <div class="txt">
                                        <h5>탈부착이 쉬워요</h5>
                                        <div class="option">
                                            컬러 : 이지 뽀글이 자켓 카키 , 사이즈 : XL </div>
                                        <p><span>ysh*****</span><span>2022.07.28</span></p>
                                    </div>
                                </li>
                                <li class="review-content">
                                    바람이 많이 부는 날에 입으니 산책하기도 좋고 편하게 입힐 수 있어 좋습니다 </li>
                                <li class="review-title">
                                    <div class="txt">
                                        <h5>겨울철 필수템</h5>
                                        <div class="option">
                                            컬러 : 이지 뽀글이 자켓 카키 , 사이즈 : XL </div>
                                        <p><span>BH8*****</span><span>2022.04.12</span></p>
                                    </div>
                                </li>
                                <li class="review-content">
                                    <div class="mb-10">
                                        <img src="../../../resources/Bodeum_files/16497751111.jpg">
                                    </div>
                                    늦은 후기 올려요
                                    재구매땜에 보듬들어온김에 남겨 봅니닷 ㅎ
                                    작년겨울 유난히 추웟능데 뽀글이 자켓덕분에 따뜻하게 보낼수 있엇어요
                                    춥고 바람많이 불엇던날도 끄떡없이 산책완료했었습니닷
                                    뽀글이 자켓 실용적이며 산책시 댕댕이가 자유롭게 뛰뛰빵빵 날아다닙니닷
                                    세탁해도 찢어지지 않아요 강력추천!!
                                </li>
                            </ul>
                            <div class="paging">
                                <ol>
                                    <li class='active'><a href='#'>1</a></li>
                                    <li><a href='?PageNumber=2&idx=864&scroll=review'>2</a></li>
                                    <li><a href='?PageNumber=3&idx=864&scroll=review'>3</a></li>
                                    <li><a href='?PageNumber=4&idx=864&scroll=review'>4</a></li>
                                    <li class="etc">…</li>
                                    <li><a href="?PageNumber=4&idx=864">4</a></li>
                                </ol>
                                <p>
                                    <a href='#prev' class='arrow_l'>Prev</a>
                                </p>
                                <p class="last">
                                    <a href='?PageNumber=2&idx=864'>Next</a>
                                </p>
                            </div>
                        </div>
                        <!-- a href에 적절 주소 줘야 함 -->
                        <div class="btn"><a href="/bodeum/shop/specific" class="whiteBtn roundBtn">이전으로</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    //FAQ jquery
    //Accordian Action
    var action = 'click';
    var speed = "500";

    //Document.Ready
    $(document).ready(function () {
        //Question handler
        $('.reviewAccodion2 li.review-title').on(action, function () {
            //gets next element
            //opens .a of selected question
            $(this).next().slideToggle(speed)
                //selects all other answers and slides up any open answer
                .siblings('.reviewAccodion2 li.review-content').slideUp();

        });//End on click

        $('.reviewAccodion2 li.review-title').click(function () {
            $(this).toggleClass('on')
                .parent().siblings().children().removeClass('on');
        });

    });//End Ready

</script>

<!-- footer Start -->
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
                                <a href="/html/shop/prd_detail.php?part_idx=29&idx=864"><img
                                        src="../../../resources/Bodeum_files/1635147950_IMAGES1.jpg"></a>
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
<script type='text/javascript' src='../../../resources/JSfiles/heyModal.min.js'></script>
<script src="../../../resources/JSfiles/jquery-1.11.2.min.js"></script>

<script type="text/javascript" src="../../../resources/JSfiles/slider.js"></script>
<script src="../../../resources/JSfiles/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="../../../resources/JSfiles/slick.js" type="text/javascript" charset="utf-8"></script>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        var myModal = heyModal(document.querySelector('.modal-layerPopup'));
    });
</script>
<script src="../../../resources/JSfiles/datepicker.js"></script>
<script>
    $('#minDatePick').dcalendarpicker();
    $('#maxDatePick').dcalendarpicker();
//creates the calendar
</script>
<script src="../../../resources/JSfiles/1.8jquery.min.js"></script>
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
<script src="../../../resources/JSfiles/enliple_min2.js" defer="defer" onload="mobRf()"></script>
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
<script type="text/javascript" async src="../../../resources/JSfiles/wp_astg_4.0.js"></script>
<!-- // WIDERPLANET  SCRIPT END 2018.8.1 -->

<!-- NAVER SCRIPT -->
<script type="text/javascript" src="../../../resources/JSfiles/wcslog.js"></script>
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











<!-- 기존 리스트 -->

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">List Page</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           REVIEW
                            <button id='regBtn' type="button" class="btn btn-xs btn-primary pull-right">
                            	후기 등록
                            </button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" >
                                <thead>
                                    <tr>
                                        <th>#번호</th>
                                        <th>제목</th>
                                        <th>작성자</th>
                                        <th>작성일</th>
                                        <th>수정일</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                         <c:forEach items="${list}" var="rboard">
                          <tr class="odd gradeX">
                              <td><c:out value ="${review.rboardnum}"/></td>
                              <td>
                              <a class="move" href='<c:out value="${review.rboardnum}"/>'>
                              <c:out value= "${review.rtitle}"/>
                              <b>['<c:out value="${review.rcnt}"/>]</b>
                              </a>
                              </td>
                              
                              <td>${review.userid}</td>
                              <td><fmt:formatDate pattern="yyyy/MM/dd" 
                              value="${review.rdates}"/> </td>
                          </tr>
                         </c:forEach>
                                </tbody>
                            </table>
                  <form id="actionForm" action="/bodeum/shop/list" method="get">
                  	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
                  	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
                  	<input type="hidden" name="type" value="${pageMaker.cri.type}">
                  	<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                  	
                  </form>
                            <!-- /.table-responsive -->
<!-- 검색 시작 -->     
<div class='row'>
	<div class="col-lg-12">
		<form id="searchForm" action="/board/list" method="get">
			<select name="type">
 				<option value="" <c:out value="${pageMaker.cri.type==null? 'selected': ''}"/>>--</option>
				<option value="T" <c:out value="${pageMaker.cri.type eq 'T'? 'selected': ''}"/>>제목</option>
				<option value="C" <c:out value="${pageMaker.cri.type eq 'C'? 'selected': ''}"/>>내용</option>
				<option value="W" <c:out value="${pageMaker.cri.type eq 'W'? 'selected': ''}"/>>작성자</option>
				<option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'? 'selected': ''}"/>>제목 OR 내용</option>
				<option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'? 'selected': ''}"/>>제목 OR 작성자</option>
				<option value="TCW" <c:out value="${pageMaker.cri.type eq 'TWC'? 'selected': ''}"/>>제목 OR 내용 OR 작성자</option>
			</select>
			<input type="text" name="keyword" value="${pageMaker.cri.keyword}" />
			<input type="hidden" name="pageNum" value='${pageMaker.cri.pageNum }'/>
			<input type="hidden" name="amount" value='${pageMaker.cri.amount }'/>
			<button class="btn btn-default">Search</button>
		</form>	
	</div>
</div>                       
<!-- 검색 끝 -->                            

<!-- 페이징 처리 시작 -->
<div class="pull-right">
	<ul class="pagination">
	  
	  <c:if test="${pageMaker.prev}">
		  <li class="paginate_button previous" ><a href="${pageMaker.startPage-1 }">Privious</a></li>
	  </c:if>
	  
	  <c:forEach var="num" begin="${pageMaker.startPage }" 
	  					end="${pageMaker.endPage }">
		 
		  <li class="paginate_button ${pageMaker.cri.pageNum == num? "active":"" }" ><a href="${num}">${num}</a></li>
	  </c:forEach>
	  
	  <c:if test="${pageMaker.next}">
		  <li class="paginate_button next" ><a href="${pageMaker.endPage+1 }">Next</a></li>
	  </c:if>
	</ul>
</div>	
<!-- 페이징 처리 끝 -->             
               
               <!-- 모달창 시작 -->
               <!-- Modal -->
			  <div class="modal fade" id="myModal" role="dialog">
			    <div class="modal-dialog">
			      <!-- Modal content-->
			      <div class="modal-content">
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			          <h4 class="modal-title">Modal Title</h4>
			        </div>
			        <div class="modal-body">
			          처리가 완료되었습니다.
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			          <button type="button" class="btn btn-primary" data-dismiss="modal">Save Changes</button>
			        </div>
			      </div>
			    </div>
			  </div>             
               <!-- 모달창 끝 -->             
                            
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            

            

<script>
	$(document).ready(function(){
		var result = '${result}'
		
		checkModal(result);
		
		history.replaceState({},null,null);
		
		function checkModal(result){
			
			if(result === '' || history.state){
				return ;
			}
			
			if(result === "modify"){
				$(".modal-body").html("수정이 완료되었습니다." );
			}
			else if(result === "delete"){
				$(".modal-body").html("삭제가 완료되었습니다." );
			}
			else if(parseInt(result)>0){
				$(".modal-body").html("게시글 " + parseInt(result) + "번이 등록되었습니다." );
			}
			
			$("#myModal").modal("show");
		}
		
		$("#regBtn").on("click", function(){
			self.location = "/bodeum/shop/register";
		});
		
		var actionForm = $("#actionForm");
		
		$(".paginate_button a").on("click", function(e){
			e.preventDefault();
			
			//추가
			actionForm.attr("action", "/bodeum/shop/list"); // 수정삭제메뉴에서 뒤로가기 한다음 page번호 클릭하면 상세페이지 빠지는 것 방지
			//
			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
		$(".move").on("click",function(e){
			e.preventDefault();
			//추가
			actionForm.find("input[name='boardnum']").remove();  //뒤로 간 후 리스트 클릭하면 bno가 계속 쌓이는 문제
			//
			actionForm.append("<input type='hidden' name='boardnum' value='" + $(this).attr("href") + "' >");
			actionForm.attr("action", "/bodeum/shop/get");
			actionForm.submit();
		});
		
		
		var searchForm = $("#searchForm");
		$("#searchForm button").on("click", function(e){
			
			if(!searchForm.find("option:selected").val()){
				alert("검색종류를 선택하세요");
				return false;
			}
			if(!searchForm.find("input[name='keyword']").val()){
				alert("키워드를 입력하세요");
				return false;
			}
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();
			searchForm.submit();
			
		});
	})
</script>

<%@ include file="../includes/footer.jsp" %>
    