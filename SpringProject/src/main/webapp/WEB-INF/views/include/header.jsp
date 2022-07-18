<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<c:set var="root" value="${pageContext.request.contextPath}" />
<head>

	<!-- Template Main CSS File -->
  <link href="${path}/resources/assets/css/style.css?ver=1" rel="stylesheet">

  <link href="${path}/resources/assets/img/LOGO.jpg" >
  <link href="${path}/resources/assets/img/LOGO.jpg" >
 
  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i%7CNunito:300,300i,400,400i,600,600i,700,700i%7CPoppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
  
  <!-- Vendor CSS Files -->
  <link href="${path}/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${path}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="${path}/resources/assets/vendor/simple-datatables/style.css" rel="stylesheet">
  
    
  <!-- Template Main JS File -->
  <script src="${path}/resources/assets/js/main.js"></script>
  <script src="${path}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  
  
  
  
</head>


<body>
	<!-- 로그인이 안된 상태 -->
  <c:if test="${login == null}">
  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
    <div class="d-flex align-items-center justify-content-between">
      <a href="${root}/backtoMain" class="logo d-flex align-items-center">
        <img src="${path}/resources/assets/img/LOGO.jpg" alt="" >
      </a>
    </div><!-- End Logo -->
    
    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">
       <li class="nav-item dropdown pe-3">
          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="${root}/NSU" >
            <span>회원가입</span>
          </a>
        </li>
        
        <li class="nav-item dropdown pe-3">
          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="${root}/login" >
            <span>로그인</span>
          </a>
        </li>
             </ul>
    </nav>
  </header><!-- End Header -->
</c:if>

<!-- 로그인 성공된 상태 -->
  <c:if test="${login != null}">
  
  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
    
    <div class="d-flex align-items-center justify-content-between">
    <i class="bi bi-list toggle-sidebar-btn"></i>
    <a href="${root}/backtoMain" class="logo d-flex align-items-center">
	<img src="${path}/resources/assets/img/LOGO.jpg" alt="" class="gudrhks" >
  	</a>
    </div>
    
    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">
       <li class="nav-item dropdown">
          <a class="nav-link nav-icon" href="${root}/management">
            <i class="bi bi-heart-fill"></i>
            <span class="badge bg-primary badge-number">${numofFriendRequest}</span>
          </a><!-- End Notification Icon -->
        <li class="nav-item dropdown pe-3">
          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="${path}/resources/assets/img/loginlogo.png" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">${login.name}</span>
          </a><!-- End Profile Iamge Icon -->
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>${login.name}</h6>
              <span>${login.id}</span>
            </li>
            
            <li>
              <hr class="dropdown-divider">
            </li>
            
            <li>
              <hr class="dropdown-divider">
            </li>
            
            <li>
              <a class="dropdown-item d-flex align-items-center" href="${root}/myprofile">
                <i class="bi bi-gear"></i>
                <span>설정</span>
              </a>
            </li>
            
            <li>
              <hr class="dropdown-divider">
            </li>
            
            <li>
              <hr class="dropdown-divider">
            </li>
            
            <li>
              <a class="dropdown-item d-flex align-items-center" href="${root}/logout">
                <i class="bi bi-box-arrow-right"></i>
                <span>로그아웃</span>
              </a>
            </li>
            
          <c:if test="${login.verify == 9}">
            <a class="dropdown-item d-flex align-items-center" href="${root}/memberList">
                <i class="bi bi-box-arrow-right"></i>
                <span>회원관리</span>
            </a>
           </c:if>
            
          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->
      </ul>
    </nav><!-- End Icons Navigation -->
  </header><!-- 헤더 -->
  
  <!-- ======= 사이드바 ======= -->
  <aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">
 
      <li class="nav-item">  
         <form class="nav-link collapsed"  action="${pageContext.request.contextPath}/management" method="post">
          <input type="hidden"  id="id" name="id" value="${login.name}">
          <i class="bi bi-heart">
           <input type="submit" value="받은목록" style="background-color:transparent;  border:0px transparent solid;">
          </i>
          <span class="badge bg-primary badge-number">${numofFriendRequest}</span>
        </form>
      </li>
         
      <li class="nav-item">
      <form class="nav-link collapsed"  action="${pageContext.request.contextPath}/myfriend" method="post">
          <input type="hidden"  id="id" name="id" value="${login.name}">
            <i class="bi bi-heart">
           <input type="submit" value="수락목록" style="background-color:transparent;  border:0px transparent solid;">
            </i>
          <span class="badge bg-primary badge-number">${numofFriendRequest}</span>
      </form>
      </li>

    </ul>
  </aside><!-- 사이드바 끝-->
  
  </c:if>
  
  <!-- Vendor JS Files -->
  <script src="${path}/resources/assets/vendor/simple-datatables/simple-datatables.js"></script>

</body>