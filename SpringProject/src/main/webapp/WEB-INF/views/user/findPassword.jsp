<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="utf-8">
 <meta content="width=device-width, initial-scale=1.0" name="viewport">
 <title>로그인</title>
 <meta content="" name="description">
 <meta content="" name="keywords">
 <!-- Vendor CSS Files -->
 <link href="${path}/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>


<body>
<section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
    <div class="container">
     <div class="row justify-content-center">
      <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
       <div class="d-flex justify-content-center py-4">
        <a href="${root}/backtoMain" class="logo d-flex align-items-center w-auto">
         <img src="${path}/resources/assets/img/logo.png" alt="">
        </a>
       </div><!-- End Logo -->
	<form method="post" class="form-signin" action="find_password" name="findform">
		<div class="form-label-group">
			<label for="id">학번</label>
			<input type="text" id="id" name="id" class="form-control"/>
			
		</div>
		
		<div class="form-label-group">
			<label for="name">닉네임</label>
			<input type="text" id="name" name="name" class="form-control"/>
			
		</div>
		
		<div class="form-label-group">
			<input class="btn btn-lg btn-secondary btn-block text-uppercase"
				type="submit" value="check">
		</div>
		<!-- id와 이름이 일치하지 않을 때-->
		<c:if test="${check == 1}">
			<script>
				opener.document.findform.id.value = "";
				opener.document.findform.name.value = "";
			</script>
			<label>일치하는 정보가 존재하지 않습니다.</label>
			<button type="button" class="btn btn-primary" onclick="location.href='${root}/login'">로그인페이지</button>
  			<button type="button" class="btn btn-primary" onclick="location.href='${root}/home'">메인페이지</button>
		</c:if>
		
		<!-- id와 이름이 일치할 때 -->
		<c:if test="${ check == 0 }">
		<label>찾으시는 비밀번호는 ' ${ password } ' 입니다.</label>
		<div class="form-label-group">
				<button type="button" class="btn btn-primary" onclick="location.href='${root}/login'">로그인페이지</button>
  				<button type="button" class="btn btn-primary" onclick="location.href='${root}/home'">메인페이지</button>
		</div>
		</c:if>

	</form>
</body>
</html>