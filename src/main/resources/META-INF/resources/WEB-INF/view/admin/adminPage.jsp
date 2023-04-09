<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
	a{text-decoration: none; color: white;}
</style>

  <div class="card border-white text-bg-dark mb-3">
  	  <div class="card-header my-3 text-center">
	  	<h2>회원 관리</h2>
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
         </tr>
        </thead>
        <tbody>
        
       		<c:forEach var="m" items="${memberList}">
		        <tr class="text-white">
		            <td>${m.id}</td>
		            <td><a href="/view/admin/userInfo?userId=${m.userId}">${m.userId}</a></td>
		            <td>${m.userPw}</td>
		            <td>${m.userName}</td>
			        <td>
			          <form action="/view/admin/userUpdate" method="GET" class="d-flex justify-content-end my-2">
			          	<input type="hidden" name="id" value="${m.id}">
		            	<select class="bg-dark text-white rounded border-danger" name="role" style="height:30px;">
						  <option ${(m.role == "ROLE_USER")?"selected":""}  value="ROLE_USER">ROLE_USER</option>
						  <option ${(m.role == "ROLE_ADMIN")?"selected":""} value="ROLE_ADMIN">ROLE_ADMIN</option>
						</select>
						<input class="bg-dark text-warning border-danger" type="submit" value="변경" />
			         </form>
			       </td>
		        </tr>
        	</c:forEach>
       
        </tbody>
    </table>
    </div>
  </div>
