<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>별자리 게시판</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="stylesheet" type="text/css" href="/css/style.css">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@900;&display=swap" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
<body class="bg-dark text-white">
    
  <header>
  	<img class="img-fluid" src="/img/header-img.jpg" alt="밤하늘">
  </header>
  
  <article class="container">
  	<div class="text-center">
  		<h1 class="fw-bold my-5">게시판 만들기 프로젝트</h1>
  		<p>Java, SpringBoot, Jsp, MyBatis, MySQL을 이용하여 간단한 프로젝트 만들어보기!!</p>
  	</div>
  	
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
			<a href="/view/board/list" class="btn btn-dark border-secondary" type="button">목록</a>
			<input type="submit" class="btn btn-dark border-secondary" value="수정">
		  </div>
	  	</form>

	  </div>
	</div>
	
</article>
    
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>
