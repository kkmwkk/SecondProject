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
  <title>학교 인증</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <!-- 위에 웹아이콘 -->
  <link href="${path}/resources/assets/img/applogo.png" rel="icon">
	
  <!-- Vendor CSS Files -->
  <link href="${path}/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- 내가만든 css -->
  <link href="${path}/resources/assets/vendor/bootstrap/css/myStyle.css" rel="stylesheet">
  <!-- 부트스트랩 코드 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>


<body>
  <main>
    <div class="container">
      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
              <div class="d-flex justify-content-center py-4">
              <!-- 바로 아래 부분은 로그인할때 덮혀있는 박스라고보면 됌
                <a href="index.html" class="logo d-flex align-items-center w-auto">-->
                <a href="${root}/backtoMain" class="logo d-flex align-items-center w-auto">
                  <img src="${path}/resources/assets/img/nsu_logo.png" alt="">
                </a>
              </div><!-- End Logo -->
              
              <div class="card mb-3">
                <div class="card-body">
                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4"><strong>남서울대</strong> 인증 로그인</h5>
                   	<p class="text-center small">회원 가입을 하기 위해서는 <br> 남서울대생 인증이 필요합니다.</p>
                  </div>
                  
                  <form class="row g-3 needs-validation" novalidate action="<c:url value='NSUOK' />" method="post">
                    <div class="col-12">
                      <label for="yourUsername" class="form-label">학번</label>
                      <div class="input-group has-validation">
                        <input type="text" name="id" class="form-control" id="id" placeholder="학번을 입력하세요" required>
                        <div class="invalid-feedback">아이디를 입력해주세요.</div>
                      </div>
                    </div>
                    
                    <div class="col-12">
                      <label for="yourPassword" class="form-label">비밀번호</label>
                      <input type="password" name="password" class="form-control" id="password" placeholder="비밀번호를 입력하세요"required>
                      <div class="invalid-feedback">비밀번호를 입력해주세요</div>
                    </div>
                    
                    <div class="col-12">
                    </div>
                    
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">인증</button>
                    </div>
                    
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
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