<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../includes/header.jsp" %>

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Review Modify</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
                        <form role="form" action="/bodeum/shop/modify" method="post">
	                        		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
									<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
									<input type="hidden" name="type" value='<c:out value="${cri.type}"/>'>
									<input type="hidden" name="keyword" value='<c:out value="${cri.keyword}"/>'>
                 		 	
	                        <div class="form-group">
	                        	<label>번호</label> 
	                        	<input class="form-control" name="rboardnum" value='<c:out value="${review.rboardnum}"/>' readonly>
	                        </div>

	                        <div class="form-group">
	                        	<label>제목</label> 
	                        	<input class="form-control" name="rtitle" value='<c:out value="${review.rtitle}"/>'>
	                        </div>
	                        <div class="form-group">
	                        	<label>내용</label>
	                        	<textarea class="form-control" name="content" rows="10" cols="70"><c:out value="${review.rcontent}"/></textarea>
	                        	</div>
	                        <div class="form-group">
	                        	<label>Writer</label> 
	                        	<input class="form-control" name="Userid" value='<c:out value="${review.userid}"/>' readonly>
	                        </div>

	                        <div class="form-group">
	                        	<input type="hidden" class="form-control" name="rdates" 
	                        	value='<fmt:formatDate pattern="yyyy/MM/dd" value="${review.rdates}"/>' readonly>
	                        </div>
	                        
	                        <button type="submit" data-oper='modify' class ="btn btn-primary" >Modify</button>
	                        <button type="submit" data-oper='remove' class ="btn btn-danger" >Remove</button>
	                        <button type="submit" data-oper='list' class ="btn btn-info" >List</button>
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
		var formObj = $("form");
		
		$('button').on("click",function(e){
			e.preventDefault();
			var operation = $(this).data("oper");
			
			if(operation === 'remove'){
				formObj.attr("action", "/bodeum/shop/remove");
			}else if(operation === 'list'){
				//move to list
				formObj.attr("action", "/bodeum/shop/list").attr("method","get");
				var pageNumTag = $("input[name='pageNum']").clone();
				var amountTag = $("input[name='amount']").clone();
				var typeTag = $("input[name='type']").clone();
				var keywordTag = $("input[name='keyword']").clone();
				formObj.empty();
				formObj.append(pageNumTag);
				formObj.append(amountTag);
				formObj.append(typeTag);
				formObj.append(keywordTag);
			}
			formObj.submit();
			
		});
	});
</script>

<%@ include file="../includes/footer.jsp" %>
    