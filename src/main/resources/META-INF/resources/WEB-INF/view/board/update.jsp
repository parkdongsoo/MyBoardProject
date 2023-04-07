<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

 
<script>
  function BoardUpdate_submit(form) {
		
		form.title.value = form.title.value.trim();
		if(form.title.value.length==0){
			alert('제목을 입력해주세요.');
			form.title.focus();
			return false;
		}
		
		form.memberName.value = form.memberName.value.trim();
		if(form.memberName.value.length==0){
			alert('작성자를 입력해주세요.');
			form.memberName.focus();
			return false;
		}
		
		form.content.value = form.content.value.trim();
		if(form.content.value.length==0){
			alert('내용을 입력해주세요.');
			form.content.focus();
			return false;
		}
		
		if(confirm('게시글 수정을 하시겠습니까?')){
			form.submit();
			alert('게시글 수정이 완료되었습니다.');
		}
	}
</script>
</head>
<style>
	a{text-decoration: none; color: white;}
</style>
  	
  	<div class="card border-white text-bg-dark mb-3">
	  <div class="card-body">
	  	
	  	<form action="/view/board/update" method="post" action="row" onsubmit="BoardUpdate_submit(this); return false;">
	  		<input type="hidden" name="id" value="${board.id}">
	  	  <div class="mb-3">
			<label class="px-2" for="title"><h4>제목</h4></label>
			<input type="text" class="form-control bg-dark text-white" name="title" id="title" value="${board.title}" placeholder="제목을 입력해 주세요">
		  </div>
		  
		  <div class="mb-3">
			<label class="px-2" for="title"><h4>작성자</h4></label>
			<input type="text" class="form-control bg-dark text-white" name="memberName" id="memberName" value="${board.memberName}" placeholder="작성자를 입력해 주세요">
		  </div>

		  <div class="mb-3">
			<label class="px-2" for="content"><h4>내용</h4></label>
			<textarea class="form-control bg-dark text-white" rows="20" name="content" id="content" placeholder="내용을 입력해 주세요" >${board.content}</textarea>
		  </div>
		  <div class="text-lg-end">
			<a href="/view/board/view?id=${param.id}" class="btn btn-dark border-secondary" type="button">취소</a>
			<input type="submit" class="btn btn-dark border-secondary" value="수정">
		  </div>
	  	</form>

	  </div>
	</div>