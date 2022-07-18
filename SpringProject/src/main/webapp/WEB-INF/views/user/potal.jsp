<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>인증완료</title>
    <link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/mystyle.css" />
    <!--header Font-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Concert+One&display=swap" rel="stylesheet">

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
    <header>
        <h2>NAMSEOUL MATCH</h2>
    </header>
    
    <div id="container">
        <div id="section-A">
            <div class="middle-box">
                <a href = "${root}/login">로그인 하러가기</a>
            </div>
        </div>
        <div id="section-B"><a href="#none">비밀번호 찾기</a></div>
    </div>

  <!-- ======= Footer ======= -->
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
     <!-- Template Main JS File -->
  <script src="${path}/resources/assets/js/main.js"></script>
  <!-- End Footer -->
</body>
</html>