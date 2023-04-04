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
  	
	  	<section class="vh-100 gradient-custom">
		  <div class="container py-5 h-100">
		    <div class="row d-flex justify-content-center align-items-center h-100">
		      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
		        <div class="border-white card bg-dark text-white" style="border-radius: 1rem;">
		          <div class="card-body p-5 text-center">
		
		            <div class="mb-md-5 mt-md-4 pb-5">
		
		              <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
		              <p class="text-white-50 mb-5">Please enter your login and password!</p>
		
		              <div class="form-outline form-white mb-4 text-start">
		              	<label class="px-2" for="content"><h6>아이디</h6></label>
		                <input type="email" id="typeEmailX" class="form-control form-control-lg bg-dark text-white" placeholder="아이디를 입력하세요" />
		              </div>
		
		              <div class="form-outline form-white mb-4 text-start">
		              	<label class="px-2" for="content"><h6>비밀번호</h6></label>
		                <input type="password" id="typePasswordX" class="form-control form-control-lg bg-dark text-white" placeholder="비밀번호를 입력하세요" />
		              </div>
		
		              <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>
		
		              <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>
		
		              <div class="d-flex justify-content-center text-center mt-4 pt-1">
		                <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
		                <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
		                <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>
		              </div>
		
		            </div>
		
		            <div>
		              <p class="mb-0">Don't have an account? <a href="#!" class="text-white-50 fw-bold">Sign Up</a>
		              </p>
		            </div>
		
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</section>
</article>
    
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>
