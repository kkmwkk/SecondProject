<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>메인페이지</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- 모든 사이트 만들때마다 라인 1부터 여기까지 복사한 후 넣은다음 사용하면됌 -->
<!--  인클루드헤더 들어가있는 것은 스크립트, link, 사이드바, 헤더의 모든것-->
	<!-- 로그인이 안된 상태 -->
  <c:if test="${login == null}">
  <main id="main" class="main">
    <div class="pagetitle">
      <h1>오늘의 미팅</h1>
    </div><!-- End Page Title -->
    <section class="section dashboard">
      <div class="row">
        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">
          
            <!-- 1:1 미팅 -->
            <div class="col-xxl-4 col-md-6" onclick="location.href='${root}/boardMain1'">
              <div class="card info-card sales-card">
                <div class="card-body">
                  <h5 class="card-title"></h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-emoji-heart-eyes"></i>
                    </div>
                    <div class="ps-3">
                      <h6>1:1미팅</h6>
                      <span class="text-muted small pt-2 ps-1">설레는 1:1 미팅</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <!-- 2:2미팅 -->
            <div class="col-xxl-4 col-md-6" onclick="location.href='${root}/boardMain2'">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title"></h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>2:2미팅</h6>
                      <span class="text-muted small pt-2 ps-1">신나는 2:2 미팅</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <!-- 3:3 미팅 -->
            <div class="col-xxl-4 col-xl-12" onclick="location.href='${root}/boardMain3'">
              <div class="card info-card customers-card">
                <div class="card-body">
                  <h5 class="card-title"></h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-lightning-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6>번개</h6>
                      <span class="text-muted small pt-2 ps-1">각종 번개 모임에 참여해봐요!</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
	</div>
   </section>
  </main><!-- End #main -->
        </c:if>
      <!-- 로그인 성공된 상태 -->
       <c:if test="${login != null}">
  <main id="main" class="main">
    <div class="pagetitle">
      <h1>오늘의 미팅</h1>
    </div><!-- End Page Title -->
    <section class="section dashboard">
      <div class="row">
        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">
            <!-- 1:1 미팅 -->
            <div class="col-xxl-4 col-md-6" onclick="location.href='${root}/boardMain1'">
              <div class="card info-card sales-card">
                <div class="card-body">
                  <h5 class="card-title"></h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-emoji-heart-eyes"></i>
                    </div>
                    <div class="ps-3">
                      <h6>1:1미팅</h6>
                      <span class="text-muted small pt-2 ps-1">설레는 1:1 미팅</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 2:2미팅 -->
            <div class="col-xxl-4 col-md-6" onclick="location.href='${root}/boardMain2'">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title"></h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>2:2미팅</h6>
                      <span class="text-muted small pt-2 ps-1">신나는 2:2 미팅</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 3:3 미팅 -->
            <div class="col-xxl-4 col-xl-12" onclick="location.href='${root}/boardMain3'">
              <div class="card info-card customers-card">
                <div class="card-body">
                  <h5 class="card-title"></h5>
                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-lightning-fill"></i>
                    </div>
                    <div class="ps-3">
                      <h6>번개</h6>
                      <span class="text-muted small pt-2 ps-1">각종 번개 모임에 참여해봐요!</span>
                    </div>
                  </div>
                </div>
              </div>
            </div><!-- End Customers Card -->
          </div>
        </div><!-- End Left side columns -->
	</div>
   </section>
  </main><!-- End #main -->
  </c:if>
  <!-- ======= Footer ======= -->
  <!-- Template Main JS File -->
  <script src="${path}/resources/assets/js/main.js"></script>
  <!-- End Footer -->
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
</body>
</html>