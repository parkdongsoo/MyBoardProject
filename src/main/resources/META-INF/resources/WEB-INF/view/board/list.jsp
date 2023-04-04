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
  	<div>
		<form action="/view/board/list" method="GET">
			<select name="f" style="height:30px;">
			  <option ${(param.f == "title")?"selected":""} value="title">제목</option>
			  <option ${(param.f == "memberName")?"selected":""} value="memberName">작성자</option>
			</select>
			<input type="text" name="q" value="" />
			<input type="submit" value="검색" />
		</form>
	</div>
  	<table class="table border">
  		<thead>
        <tr class="table-dark text-warning border-white">
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>내용</th>
            <th>작성일</th>
            <th>조회수</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="b" items="${list}">
	        <tr class="text-white">
	            <td>${b.id}</td>
	            <td><a href="/view/board/view">${b.title}</a></td>
	            <td>${b.memberName}</td>
	            <td>${b.content}</td>
	            <td>${b.regdate}</td>
	            <td>${b.hit}</td>
	         </tr>
        </c:forEach>
        </tbody>
    </table>
	
	<form class="text-lg-end" action="/view/board/list" method="get">
		<input class="btn btn-primary" type="button" value="글쓰기">
	</form>  
	
	<nav class="d-flex justify-content-center">
		<c:set var="page" value="${(param.p == null)?1:param.p}" />
		<c:set var="startNum" value="${page-(page-1)%5}" />
		<c:set var="lastNum" value="${fn:substringBefore(Math.ceil(count/10), '.')}" />
		
		<ul class="pagination">
			
			<li class="page-item">
				<c:if test="${startNum>1}">
					<a class="page-link" href="?p=${startNum}&f=${param.f}&q=${param.q}">&lt;</a>
				</c:if>
				<c:if test="${startNum<=1}">
					<a class="page-link" href="?p=1&f=${param.f}&q=${param.q}" onclick="alert('이전 페이지가 없습니다.');">&lt;</a>
				</c:if>
			</li>
			<c:forEach var="i" begin="0" end="4">
				<li class="page-item">
					<c:if test="${i+startNum <= lastNum}">
						<a class="page-link" href="?p=${i+startNum}&f=${param.f}&q=${param.q}">${startNum+i}</a>
					</c:if>
				</li>
			</c:forEach>
			<li class="page-item">
				<c:if test="${startNum+5 <= lastNum}">
					<a class="page-link" href="?p=${startNum+5}&f=${param.f}&q=${param.q}">&gt;</a>
				</c:if>
				<c:if test="${startNum+5 > lastNum}">
					<a class="page-link" href="?p=${lastNum}&f=${param.f}&q=${param.q}" onclick="alert('다음 페이지가 없습니다.');">&gt;</a>
				</c:if>
			</li>
		</ul>
	</nav>
</article>
    
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>
