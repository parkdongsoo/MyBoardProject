<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
	a{text-decoration: none; color: white;}
</style>

  		<section class="vh-100 gradient-custom">
		  <div class="container py-5 h-100">
		    <div class="row d-flex justify-content-center align-items-center h-100">
		      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
		        <div class="border-white card bg-dark text-white" style="border-radius: 1rem;">
		          <div class="card-body p-5 text-center">
		
		            <div class="mb-md-5 mt-md-4 pb-5">
		
		              <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
		              <p class="text-white-50 mb-5">Please enter your login and password!</p>
					
						<form action="/loginAction" method="post">
			              <div class="form-outline form-white mb-4 text-start">
			              	<label class="px-2" for="content"><h6>아이디</h6></label>
			                <input type="text" name="userId" class="form-control form-control-lg bg-dark text-white" placeholder="아이디를 입력하세요" />
			              </div>
			
			              <div class="form-outline form-white mb-4 text-start">
			              	<label class="px-2" for="content"><h6>비밀번호</h6></label>
			                <input type="password" name="userPw" class="form-control form-control-lg bg-dark text-white" placeholder="비밀번호를 입력하세요" />
			              </div>
			              
			              <div>
			              	<span>${exception}</span>
			              </div>
				
			              <button type="submit" class="btn btn-outline-light btn-lg px-5 mt-5">Login</button>
						</form>
		
		             
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