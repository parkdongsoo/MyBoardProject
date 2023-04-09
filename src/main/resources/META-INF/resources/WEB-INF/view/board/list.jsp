<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style>
	
nav > ul > li > a:hover {
	background-color: yellow;
	border-radius: 4px;
}
</style>

  	<div >
		<form action="/view/board/list" method="GET" class="d-flex justify-content-end my-2">
			<select class="bg-dark text-white rounded border-secondary" name="f" style="height:30px;">
			  <option ${(param.f == "title")?"selected":""} value="title">제목</option>
			  <option ${(param.f == "memberName")?"selected":""} value="memberName">작성자</option>
			</select>
			<div class="mx-1">
				<input class="bg-dark text-white border-secondary" type="text" name="q" value="" />
				<input class="bg-dark text-white border-secondary" type="submit" value="검색" />
			</div>
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
	            <td><a href="/view/board/view?id=${b.id}">${b.title}</a></td>
	            <td>${b.memberName}</td>
	            <td>${b.content}</td>
	            <td><fmt:formatDate value="${b.regdate}" pattern="yyyy-MM-dd"/></td>
	            <td>${b.hit}</td>
	         </tr>
        </c:forEach>
        </tbody>
    </table>
		<c:set var="page" value="${(param.p == null)?1:param.p}" />
		<c:set var="startNum" value="${page-(page-1)%5}" />
		<c:set var="lastNum" value="${fn:substringBefore(Math.ceil(count/10), '.')}" />
	<div class="text-lg-end mb-2 text-warning">page : ${page} / ${lastNum}</div>
	<div class="text-lg-end">
		<a href="/view/board/write" class="btn btn-secondary" type="button">글쓰기</a>
	</div>  
	
	<nav class="d-flex justify-content-center">
		
		<ul class="pagination">
			
			<li class="page-item">
				<c:if test="${startNum>1}">
					<a type="button" class="page-link bg-dark text-warning border-danger" href="?p=${startNum-1}&f=${param.f}&q=${param.q}">&lt;</a>
				</c:if>
				<c:if test="${startNum<=1}">
					<a class="page-link bg-dark text-warning border-danger" href="?p=1&f=${param.f}&q=${param.q}" onclick="alert('이전 페이지가 없습니다.');">&lt;</a>
				</c:if>
			</li>
			<c:forEach var="i" begin="0" end="4">
				<li class="page-item">
					<c:if test="${i+startNum <= lastNum}">
						<a class="page-link bg-dark fs-6 ${(param.p==(i+startNum))? 'text-warning':'text-white'} border-danger" href="?p=${i+startNum}&f=${param.f}&q=${param.q}">${startNum+i}</a>
					</c:if>
				</li>
			</c:forEach>
			<li class="page-item">
				<c:if test="${startNum+5 <= lastNum}">
					<a class="page-link bg-dark fs-6 text-warning border-danger" href="?p=${startNum+5}&f=${param.f}&q=${param.q}">&gt;</a>
				</c:if>
				<c:if test="${startNum+5 > lastNum}">
					<a class="page-link bg-dark fs-6 text-warning border-danger" href="?p=${lastNum}&f=${param.f}&q=${param.q}" onclick="alert('다음 페이지가 없습니다.');">&gt;</a>
				</c:if>
			</li>
		</ul>
	</nav>

