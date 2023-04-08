<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<header>
	<nav class="navbar mx-5">
		<div class="navbar__logo">
			<i class="fa-brands fa-accusoft"></i>
			<a href="#">MyBoardProject</a>
		</div>
	<sec:authorize access="isAuthenticated()">
	   <sec:authentication property="principal" var="principal"/>
	</sec:authorize>
	<c:choose>
    	<c:when test="${empty principal}">  
			<ul class="navbar__menu mt-3">
				<li><a href="/">홈</a></li>
				<li><a href="/view/member/login">로그인</a></li>
				<li><a href="/view/member/join">회원가입</a></li>
			</ul>
			<ul class="navbar__icons mt-3">
				<li><a href=""><i class="fa-brands fa-twitter"></i></a></li>
				<li><a href=""><i class="fa-brands fa-facebook"></i></a></li>
			</ul>
		</c:when>
	    <c:otherwise>
	    	<ul class="navbar__menu mt-3">
				<li><a href="/">홈</a></li>
				<li><a href="/view/member/userInfo">사용자 정보</a></li>
				<sec:authorize access="hasRole('ADMIN')">	
				<li><a href="/view/admin/adminPage">관리자 페이지</a></li>
				</sec:authorize>
				<li><a href="/view/member/join">회원가입</a></li>
				<li class="text-warning">'${principal.username}' 님 안녕하세요</li>
				<li><a class="text-warning" href="/logout">로그아웃</a></li>
			</ul>
			<ul class="navbar__icons mt-3">
				<li><a href=""><i class="fa-brands fa-twitter"></i></a></li>
				<li><a href=""><i class="fa-brands fa-facebook"></i></a></li>
			</ul>
	    </c:otherwise>
	</c:choose>
	</nav>
	<img class="img-fluid" src="/img/header-img.jpg" alt="밤하늘">
</header>