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
 <main>
  <div class="container">
   <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
    <div class="container">
     <div class="row justify-content-center">
      <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
       <div class="d-flex justify-content-center py-4">
        <a href="${root}/backtoMain" class="logo d-flex align-items-center w-auto">
         <img src="${path}/resources/assets/img/logo.png" alt="">
        </a>
       </div><!-- End Logo -->
       
       <div class="card mb-3">
       
        <div class="card-body">
        
         <div class="pt-4 pb-2">
          <h5 class="card-title text-center pb-0 fs-4">로그인</h5>
         </div>
         
         <form class="row g-3 needs-validation" novalidate action="main" method="post">
          <div class="col-12">
           <label for="yourUsername" class="form-label">아이디</label>
           <div class="input-group has-validation">
            
            <input type="text" name="id" class="form-control" id="_userid" required>
            <div class="invalid-feedback">아이디를 입력해주세요.</div>
            
           </div>
          </div>
          
          <div class="col-12">
           <label for="yourPassword" class="form-label">비밀번호</label>
           <input type="password" name="password" class="form-control" id="_pwd" required>
           <div class="invalid-feedback">비밀번호를 입력해주세요</div>
          </div>
          
          <div class="col-12">
          
          </div>
          
          <div class="col-12">
           <button class="btn btn-primary w-100" type="submit">로그인</button>
          </div>
         </form>
         
         <c:if test="${msg == false}">
         	<p style="color:#f00;">로그인에 실패했습니다. 아이디 또는 패스워드를 다시 입력해주십시오.</p>
         </c:if>
        </div>
       </div>
      </div>
     </div>
    </div>
		
	<p class="small mb-0">계정이 없으신가요? <a href="${root}/NSU">회원가입</a></p>
		
   </section>
  </div>
 </main><!-- End #main -->
 <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
 
 
 
 <!-- Vendor JS Files -->
 <script src="${path}/resources/assets/vendor/apexcharts/apexcharts.min.js"></script>
 <script src="${path}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="${path}/resources/assets/vendor/chart.js/chart.min.js"></script>
 <script src="${path}/resources/assets/vendor/echarts/echarts.min.js"></script>
 <script src="${path}/resources/assets/vendor/quill/quill.min.js"></script>
 <script src="${path}/resources/assets/vendor/simple-datatables/simple-datatables.js"></script>
 <script src="${path}/resources/assets/vendor/tinymce/tinymce.min.js"></script>
 <script src="${path}/resources/assets/vendor/php-email-form/validate.js"></script>
 
 
 	<!-- Template Main JS File -->
 	<script src="${path}/resources/assets/js/main.js"></script>
	</body>
</html>