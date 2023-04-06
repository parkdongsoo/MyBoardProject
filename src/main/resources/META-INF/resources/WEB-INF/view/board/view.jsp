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
	  	<h2>${board.title}</h2><br>
		  <div class="d-flex justify-content-between">
		  	<div class="d-flex">
		  		<div><span class="text-warning">게시글 번호:</span>${board.id}</div>
		  		<div class="mx-2"><span class="text-warning">작성자:</span>${board.memberName}</div>
		  	</div>
		  	<div class="d-flex">
		  		<div><span class="text-warning">작성일:</span><fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
		  		<div class="mx-2"><span class="text-warning">조회수:</span>${board.hit}</div>
		  	</div>
	  	  </div>
	  </div>
	  <hr class="border-white">
	  <div class="card-body">
		<div class="mb-3">
		  <textarea class="form-control bg-dark text-white col-sm-5 fs-14" rows="20" readonly>${board.content}</textarea>
		</div>
	  </div>
	</div>
	
	<div class="text-lg-end">
		<a href="/view/board/list" class="btn btn-secondary" type="button">목록</a>
		<a href="/view/board/update?id=${board.id}" class="btn btn-success" type="button">수정</a>
		<a href="/view/board/delete?id=${board.id}" class="btn btn-danger" type="button" onclick="alert('${board.id}번 게시글이 삭제되었습니다.')">삭제</a>
	</div>  
	
</article>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>
