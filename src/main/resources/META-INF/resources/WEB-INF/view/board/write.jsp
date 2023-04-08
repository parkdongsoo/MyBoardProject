<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<script src="//code.jquery.com/jquery-3.5.1.min.js" ></script>
<script>
  function BoardWrite_submit(form) {
		
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
		
		if(confirm('게시글 등록을 하시겠습니까?')){
			form.submit();
			alert('게시글 등록이 완료되었습니다.');
		}
	}
</script>

<style>
	a{text-decoration: none; color: white;}
</style>
	<sec:authentication property="principal" var="principal"/>
	
  	<div class="card border-white text-bg-dark mb-3">
	  <div class="card-body">
	  	<form action="/view/board/write" method="post" action="row" onsubmit="BoardWrite_submit(this); return false;">
	  	  <div class="mb-3">
			<label class="px-2" for="title"><h4>제목</h4></label>
			<input type="text" class="form-control bg-dark text-white" name="title" id="title" placeholder="제목을 입력해 주세요">
		  </div>
		  
		  <div class="mb-3">
			<label class="px-2" for="title"><h4>작성자</h4></label>
			<input type="text" class="form-control bg-dark text-white" name="memberName" value="${principal.username}" id="memberName" placeholder="작성자를 입력해 주세요" readonly>
		  </div>

		  <div class="mb-3">
			<label class="px-2" for="content"><h4>내용</h4></label>
			<textarea class="form-control bg-dark text-white" rows="20" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>
		  </div>
		  <input type="hidden" name="memberId" value="${principal.id}">
		  
		  <div class="text-lg-end">
			<a href="/view/board/list" class="btn btn-dark border-secondary" type="button">목록</a>
			<input type="submit" class="btn btn-dark border-secondary" value="등록">
		  </div>
	  	</form>

	  </div>
	</div>