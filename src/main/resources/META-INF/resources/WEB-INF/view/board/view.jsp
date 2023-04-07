<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
	a{text-decoration: none; color: white;}
</style>
  	
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