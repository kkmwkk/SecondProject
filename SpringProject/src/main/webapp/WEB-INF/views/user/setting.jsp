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

  <title>프로필</title>
  
  <script>
 	var result = '${result}';
 	
 	if(result === "removeFalse") {
 		alert("비밀번호를 다시 입력해주세요.");
 	} 
 	
 </script>
  
	<meta content="" name="description">
	<meta content="" name="keywords">
</head>


<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- 모든 사이트 만들때마다 라인 1부터 여기까지 복사한 후 넣은다음 사용하면됌 -->
<!--  인클루드헤더 들어가있는 것은 스크립트, link, 사이드바, 헤더의 모든것-->
<body>
  <main id="main" class="main">

    <div class="pagetitle">
      <h1>설정</h1>
     
    </div><!-- End Page Title -->

    <section class="section profile">
      <div class="row">

        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">

                <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">프로필</button>
                </li>

                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">회원탈퇴</button>
                </li>

              </ul>
              
              <div class="tab-content pt-2">

                <div class="tab-pane fade show active profile-overview" id="profile-overview">
               
                  <h5 class="card-title">내정보</h5>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">닉네임</div>
                    <div class="col-lg-9 col-md-8">${login.name}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">학번</div>
                    <div class="col-lg-9 col-md-8">${login.id}</div>
                  </div>

                </div>

                <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                 <!-- 회원탈퇴폼 -->
                 <form id="memberform" method="post" autocomplete="off" action="delete2">    
                 <div class="row mb-3">
                      <label for="id" class="col-md-4 col-lg-3 col-form-label">학번</label>
                      <div class="col-md-8 col-lg-9">
                        <input type="text" class="form-control" id="id" name="id" value="${login.id}">
                      </div>
                 </div>
        
                    <div class="row mb-3">
                      <label for="password" class="col-md-4 col-lg-3 col-form-label">현재 비밀번호</label>
                      <div class="col-md-8 col-lg-9">
                        <input type="text" class="form-control" id="password" name="password" placeholder="비밀번호입력">
                      </div>
                    </div>

                    <div class="text-center">
                      <button type="submit" class="btn btn-primary">회원탈퇴</button>
                    </div>
                  </form><!-- 회원탈퇴 폼 끝 -->

                </div> 
   
            </div>
          </div>

        </div>
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
  </footer><!-- End Footer -->

</body>
</html>