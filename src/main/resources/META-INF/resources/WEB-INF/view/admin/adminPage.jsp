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
  	  <div class="card-header my-3 text-center">
	  	<h2>사용자 정보</h2>
	  </div>
	  <div class="card-body">
  	<table class="table border">
  		<thead>
        <tr class="table-dark text-warning border-white">
            <th>번호</th>
            <th>아이디</th>
            <th>비밀번호</th>
            <th>작성자</th>
            <th>권한</th>
            <th>활성화여부</th>
         </tr>
        </thead>
        <tbody>
        <c:forEach var="m" items="${memberList}">
	        <tr class="text-white">
	            <td>${m.id}</td>
	            <td><a href="/view/member/userInfo?id=${m.id}">${m.userId}</a></td>
	            <td>${m.userPw}</td>
	            <td>${m.userName}</td>
	            <td>${m.role}</td>
	            <td>${m.enabled}</td>
	         </tr>
        </c:forEach>
        </tbody>
    </table>
    </div>
  </div>
</article>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>
