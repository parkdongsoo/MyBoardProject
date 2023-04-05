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
  <script src="//code.jquery.com/jquery-3.5.1.min.js" ></script>
<script>
	var JoinForm__submitDone = false;
	var JoinForm_checkIdDup = "";
	
	function JoinForm__submit(form){
		if(JoinForm__submitDone){
			alert('회원가입 처리중 입니다.')
			return false;
		}
		
		form.userId.value = form.userId.value.trim();
		if(form.userId.value.length==0){
			alert('아이디를 입력해주세요.');
			form.userId.focus();
			return false;
		}
		
		form.userPw.value = form.userPw.value.trim();
		if(form.userPw.value.length==0){
			alert('비밀번호를 입력해주세요.');
			form.userPw.focus();
			return false;
		}
		
		form.userPw2.value = form.userPw2.value.trim();
		if(form.userPw.value != form.userPw2.value){
			alert('비밀번호 일치하지 않습니다.');
			form.userPw2.focus();
			return false;
		}
		
		form.userName.value = form.userName.value.trim();
		if(form.userName.value.length==0){
			alert('작성자를 입력해주세요.');
			form.userName.focus();
			return false;
		}
		if(confirm('회원가입을 하시겠습니까?')){
		
		form.submit();
		alert('회원가입이 완료되었습니다.')
		JoinForm__submitDone == true;
		}
	}
	
	function checkId(){
        var userId = $('#userId').val();
        $.ajax({
            url:'/checkId',
            type:'post',
            data:{'userId':userId},
            success:function(checkId){
                if(checkId == 0 && userId.length > 0){
                    $('.id_ok').css("display","inline-block"); 
                    $('.id_already').css("display", "none");
                    $('#signupbtn').prop("disabled", false);
                } else if(checkId != 0 && userId.length > 0){
                    $('.id_already').css("display","inline-block");
                    $('.id_ok').css("display", "none");
                    $('#signupbtn').prop("disabled", true);
                }else {
                    $('.id_already').css("display","none");
                    $('.id_ok').css("display", "none");
                    $('#signupbtn').prop("disabled", true);}
            },
            error:function(){
                alert("에러입니다");
            }
        });
        };
</script>

</head>
<style>
	a{text-decoration: none; color: white;}
	
	.id_ok{color: green; display: none;}
	
	.id_already{color: red; display: none;}
</style>

<body class="bg-dark text-white">
    
  <header>
  	<img class="img-fluid" src="/img/header-img.jpg" alt="밤하늘">
  </header>
  
  <article class="container col-md-6 justify-content-center">
  	<div class="text-center">
  		<h1 class="fw-bold my-5">게시판 만들기 프로젝트</h1>
  		<p>Java, SpringBoot, Jsp, MyBatis, MySQL을 이용하여 간단한 프로젝트 만들어보기!!</p>
  	</div>
  	
  	<div class="card border-white text-bg-dark mb-3">
  	  <div class="card-header my-3 text-center">
	  	<h2>회원가입 페이지</h2>
	  </div>
	  <div class="card-body">
	  		
	  		<!-- ------------	폼 태그	-------------- -->
	  		
	  	<form action="/view/member/join" method="post" action="row" onsubmit="JoinForm__submit(this); return false">
	  	  <div class="mb-3">
			<label class="px-2 text-warning" for="title"><h6>아이디</h6></label>
			<input type="text" maxlength="30" autocomplete="off" class="form-control bg-dark text-white" id="userId" name="userId" oninput="checkId()" placeholder="아이디를 입력해 주세요">
		  	<!-- id ajax 중복체크 -->
			<span class="id_ok">사용 가능한 아이디입니다.</span>
			<span class="id_already">사용중인 아이디 입니다.</span>
		  </div>
		  <div class="mb-3">
			<label class="px-2 text-warning" for="title"><h6>비밀번호</h6></label>
			<input type="password" maxlength="30" autocomplete="off" class="form-control bg-dark text-white" name="userPw" placeholder="비밀번호를 입력해 주세요">
		  </div>
		  <div class="mb-3">
			<label class="px-2 text-warning" for="title"><h6>비밀번호 확인</h6></label>
			<input type="password" maxlength="30" autocomplete="off" class="form-control bg-dark text-white" name="userPw2"placeholder="비밀번호 확인란을 입력해 주세요">
		  </div>
		  <div class="mb-3">
			<label class="px-2 text-warning" for="title"><h6>작성자</h6></label>
			<input type="text" maxlength="30" autocomplete="off" class="form-control bg-dark text-white" name="userName" placeholder="이름을 입력해 주세요">
		  </div>
		  <div class="mb-3">
			<label class="px-2 text-warning" for="title"><h6>주소</h6></label>
			<input type="text" class="form-control bg-dark text-white" id="addr1" name="addr1" placeholder="우편번호" readonly onclick="findAddr()">
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control bg-dark text-white" id="addr2" name="addr2" placeholder="도로명 주소" readonly>
		  </div>
		  <div class="mb-3">
			<input type="text" class="form-control bg-dark text-white" id="addr3" name="addr3" placeholder="나머지 주소를 입력해 주세요">
		  </div>
		  
		  <div class="mb-3 text-center">
		  	<input type="button" class="btn btn-outline-danger btn-lg px-5 mt-3" value="취소">
		  	<input type="submit" id="signupbtn" class="btn btn-outline-primary btn-lg px-5 mt-3" disabled="disabled" value="회원가입">
		  </div>
	  	</form>

	  </div>
	</div>
	
</article>
<script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('addr1').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("addr2").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("addr2").value = jibunAddr;
            }
        }
    }).open();
}
</script>
    
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>