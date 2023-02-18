<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../includes/header.jsp" %>
<link rel="stylesheet" href="../../../resources/css/register.css">

</head>

<body>
 <div id="wrapper" class="reviewmain">
        <div class="containerwrap">
            <div class="inner-contents">
                <div class="section">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header"> 후기 등록 </h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="bodysection">
                        <form role="form" action="/bodeum/shop/register" method="post">
                            <label for="gdsName">상품명</label>
                            <input type="text" id="gdsName" name="gdsName" />
                            <div class="form-group">
                                <label>Writer</label> <input class="form-control" name="Userid" readonly>
                                <!--userid 불러와야 함 -->
                            </div>
                            <div class="form-group">
                                <label>Title</label> <input class="form-control" name="rtitle">
                            </div>
                            <div class="form-group">
                                <label>Text Area</label>
                                <textarea rows="5" cols="50" class="form-control" name="rcontent"></textarea>
                                <script>
                                    var ckeditor_config = {
                                        resize_enaleb: false,
                                        enterMode: CKEDITOR.ENTER_BR,
                                        shiftEnterMode: CKEDITOR.ENTER_P,
                                        filebrowserUploadUrl: "/admin/goods/ckUpload"
                                    };

                                    CKEDITOR.replace("gdsDes", ckeditor_config);
                                </script>

                            </div>

                            <div class="inputArea">
                                <label for="itemImg">이미지</label>
                                <input type="file" id="itemImg" name="file" />
                                <div class="select_img"><img src="" /></div>

                                <script>
                                    $("#gdsImg").change(function () {
                                        if (this.files && this.files[0]) {
                                            var reader = new FileReader;
                                            reader.onload = function (data) {
                                                $(".select_img img").attr("src", data.target.result).width(500);
                                            }
                                            reader.readAsDataURL(this.files[0]);
                                        }
                                    });
                                </script>
                            </div>
                            <button type="submit" class="btn btn-default"> Submit Button </button>
                            <button type="reset" class="btn btn-default"> Reset Button </button>
                        </form>
                    </div>
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
</body>
				</script>
				<!--  <%=request.getSession().getServletContext().getRealPath("/webapp/WEB-INF/bodeum/shop/register") %> 	-->	
		</div>
	</section>
           
<%@ include file="../includes/footer.jsp" %>
    