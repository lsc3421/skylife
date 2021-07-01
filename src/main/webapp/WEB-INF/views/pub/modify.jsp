<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../layout/header.jsp"%>
	<link href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css" rel="stylesheet"> 
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/public.css">
      <div class="w-full md:w-3/5 mx-auto p-8">
         <h2>SkyLife의 공지사항</h2>			
         <div class="shadow-md">
         	<form action="/pub/modify" method="post">
				<input type="hidden" name="pno" value="${pub.pno}">
				<input type="text" name="p_title" class="form-control mt-4 mb-2"
					value='<c:out value="${pub.p_title}"/>' required>
				<div class="form-group">
					<textarea class="form-control" rows="10" name="p_content" required><c:out value="${pub.p_content}"/></textarea>
				</div>
				<button type="submit" data-oper='modify' class="btn btn-secondary mb-3">수정하기</button>
 				<button type="submit" data-oper='remove' class="btn btn-secondary mb-3">삭제하기</button>
 				<button type="submit" data-oper='list' class="btn btn-secondary mb-3">List</button>
			</form>
         </div>
      </div>
   </body>
</body>
	<script type="text/javascript">
		$(document).ready(function() {
			var formObj = $("form");			
			$('button').on("click", function(e) {
				e.preventDefault();
				var operation = $(this).data("oper");
				console.log(operation);
				if(operation == 'remove') {
					formObj.attr("action", "/pub/remove");
				} else if(operation == 'list') {
					self.location = "/pub/public";
					return;
				}
				formObj.submit();
			});
		});
	</script>
</html>