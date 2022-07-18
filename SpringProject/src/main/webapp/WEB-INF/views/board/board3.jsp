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
<!-- 로그인 상태-->  
 <c:if test="${login != null}">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- 모든 사이트 만들때마다 라인 1부터 여기까지 복사한 후 넣은다음 사용하면됌 -->
<!--  인클루드헤더 들어가있는 것은 스크립트, link, 사이드바, 헤더의 모든것-->  

<main id="main" class="main">

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
             
              <!-- Table with stripped rows -->
            <table class="table datatable">
            <thead>
               <tr>
                  <td>성별</td>
                  <td>나이</td>
                  <td>학과</td>
               </tr>
            </thead>
            <c:forEach items="${allArticle3}" var="article3">
               <form id="detailform" method="post" class="form-inline"
                  action="${root}/articledetail3/${article3.no}">
                  
                  <tr onclick="location.href='${root}/articledetail3/${article3.no}'">
                     <td name="sex">${article3.sex}</td>
                     <td name="age">${article3.age}</td>
                     <td name="major">${article3.major}</td>
                  </tr>
               </form>
            </c:forEach>
         </table>
              <!-- End Table with stripped rows -->

            </div>
            
          </div>

        </div>
        
      </div>
    </section>
    <script>
          function create() {
		document.location.href = "${root}/goCreate3";
	}
          </script>
          
            <button class="btn btn-primary w-100" type="button" onclick="javascript:create()">등록하기</button>

  </main><!-- End #main -->
   </c:if>
   
   <!-- 로그아웃 상태-->  
 <c:if test="${login == null}">
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- 모든 사이트 만들때마다 라인 1부터 여기까지 복사한 후 넣은다음 사용하면됌 -->
<!--  인클루드헤더 들어가있는 것은 스크립트, link, 사이드바, 헤더의 모든것-->  

<main id="main" class="main">

    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
             
              <!-- Table with stripped rows -->
            <table class="table datatable">
            <thead>
               <tr>
                  <td>성별</td>
                  <td>나이</td>
                  <td>학과</td>
               </tr>
            </thead>
            <c:forEach items="${allArticle3}" var="article3">
               <form id="detailform" method="post" class="form-inline"
                  action="${root}/articledetail3/${article3.no}">
                  
                  <tr onclick="location.href='${root}/articledetail3/${article3.no}'">
                     <td name="sex">${article3.sex}</td>
                     <td name="age">${article3.age}</td>
                     <td name="major">${article3.major}</td>
                  </tr>
               </form>
            </c:forEach>
         </table>
              <!-- End Table with stripped rows -->

            </div>
            
          </div>

        </div>
        
      </div>
    </section>

  </main><!-- End #main -->
   </c:if>

 <!-- ======= Footer ======= -->
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
  
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

</body>

</html>