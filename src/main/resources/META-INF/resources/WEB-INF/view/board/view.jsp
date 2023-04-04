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
	  <div class="card-header">
	  	<h2>Header</h2><br>
		  <div class="d-flex justify-content-between">
		  	<div class="d-flex">
		  		<div><span class="text-warning">게시글 번호:</span> 1</div>
		  		<div class="mx-2"><span class="text-warning">작성자:</span> 홍길동</div>
		  	</div>
		  	<div class="d-flex">
		  		<div><span class="text-warning">작성일:</span> yy-dd-mm</div>
		  		<div class="mx-2"><span class="text-warning">조회수:</span> 15</div>
		  	</div>
	  	  </div>
	  </div>
	  <hr class="border-white">
	  <div class="card-body">
		<div class="mb-3">
		  <textarea class="form-control bg-dark text-white col-sm-5 fs-14" rows="20" readonly>글 내용</textarea>
		</div>
	  </div>
	</div>
	
	<form class="text-lg-end" action="/view/board/list" method="get">
		<input class="btn btn-primary" type="button" value="목록">
		<input class="btn btn-primary" type="button" value="수정">
		<input class="btn btn-primary" type="button" value="삭제">
	</form>  
	
</article>
    
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>