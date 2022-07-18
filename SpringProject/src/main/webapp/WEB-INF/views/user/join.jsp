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

  <title>회원가입페이지</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="${path}/resources/assets/img/favicon.png" rel="icon">
  <link href="${path}/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${path}/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${path}/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="${path}/resources/assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="${path}/resources/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="${path}/resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="${path}/resources/assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="${path}/resources/assets/css/style.css" rel="stylesheet">

</head>


<body>

  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
              <div class="card mb-3">
               
                <div class="card-body">
                   
                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">NAMSEOUL Meeting</h5>
                  </div>
               
               <!--닉네임 -->
                  <form id="detailform" class="row g-3 needs-validation" novalidate action="register" method="post" >
                     <input type="hidden" value="${id}"  name="id" id="id"/>
                    <div class="col-12">
                       <label for="yourName" class="form-label">닉네임</label>
                       <input type="text" name="name" class="form-control" id="name" placeholder="닉네임을 입력해주세요" required>
                       
                       <div class="invalid-feedback">닉네임을 입력하세요</div>
                       
                     </div>

                <!--  성별 -->
                <div class="col-md-4">
                   <div class="col-12">
                   <label for="sex" class="form-label">성별</label>
                    <select class="form-select" id="sex" name= "sex" aria-label="State">
                      <option selected value="">성별을 선택하세요</option>
                      <option value="남">남</option>
                      <option value="여">여</option>
                    </select>
                    <div class="invalid-feedback">성별를 입력하세요</div>
                  </div>
                </div>

               <!-- 카카오톡 -->
                    <div class="col-12">
                       <label for="yourkakaoid" class="form-label">카카오톡 아이디</label>
                       <input type="text" name="kakaoid" class="form-control" id="yourkakaoid" placeholder="카카오톡 아이디를 입력해주세요" required>
                       <div class="invalid-feedback">카카오톡아이디를 입력하세요</div>
                    </div>

                  <!-- 개인약관, 로그인 버튼 -->
                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" name="terms" type="checkbox" value="" id="acceptTerms" required>
                        <label class="form-check-label" for="acceptTerms">개인정보 수집 및 이용 <a href="#">개인약관</a>을 동의 합니다.</label>
                      </div>
                    </div>
                    
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit" id="submit">회원가입</button>
                    </div>
                    
                    <div class="col-12">
                      <p class="small mb-0">아이디가 있으신가요?<a href="pages-login.html">로그인</a></p>
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
   
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>   
       
       <script>

    $(function () {

        $("#detailform").submit(function() {

            if($("#sex").val() == 0) {

                alert('성별을 선택해주세요..')    
                
                return false
            }

        });     
    });
    
</script>
</body>

</html>