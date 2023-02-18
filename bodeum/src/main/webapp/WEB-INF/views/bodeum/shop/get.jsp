<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../includes/header.jsp" %>

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> REVIEW </h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           REVIEW
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 
	                        <div class="form-group">
	                        	<label>번호</label> 
	                        	<input class="form-control" name="rboardnum" value="${review.rboardnum}" readonly>
	                        </div>

	                        <div class="form-group">
	                        	<label>Title</label> 
	                        	<input class="form-control" name="rtitle" value='<c:out value="${review.rtitle}"/>' readonly>
	                        </div>
	                        <div class="form-group">
	                        	<label>Text Area</label>
	                         <textarea class="form-control" rows="10" cols="70" name="rcontent" readonly><c:out value="${review.rcontent}"/></textarea>
	                        	
	                        </div>
	                        <div class="form-group">
	                        	<label>Writer</label> 
	                        	<input class="form-control" name="userid" value='<c:out value="${review.userid}"/>' readonly>
	                        </div>
	                        <button data-oper='modify' class = "btn btn-info">수정</button>
	                        <button data-oper='list' class = "btn btn-default">List</button>
	                        
	                        <form id="operForm" action="/bodeum/shop/modify" method="get">
	                        	<input type="hidden" id="rboardnum" name="rboardnum" value="<c:out value='${review.rboardnum}'/>">
	                           	<input type="hidden" name="pageNum" value="<c:out value='${cri.pageNum}'/>">
                            	<input type="hidden" name="amount" value="<c:out value='${cri.amount}'/>">
                            	<input type="hidden" name="type" value="<c:out value='${cri.type}'/>">
                            	<input type="hidden" name="keyword" value="<c:out value='${cri.keyword}'/>">
	                        </form>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>

<script>
	$(document).ready(function(){
		var operForm = $("#operForm");
		$("button[data-oper='modify']").on("click",function(e){
			operForm.attr("action", "/bodeum/shop/modify").submit();
		});
		$("button[data-oper='list']").on("click",function(e){
			operForm.find("#boardnum").remove();
			operForm.attr("action", "/bodeum/shop/list");
			operForm.submit();
		});
		
	});
</script>      
<%@ include file="../includes/footer.jsp" %>
  
</body>
</html>  
