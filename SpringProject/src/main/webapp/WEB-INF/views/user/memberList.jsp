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
<!-- ======= Header ======= -->
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
            <table class="table datatable" border="1" width="700px">
               <tr >
                  <th>아이디</th>
                  <th>비밀번호</th>
                  <th>이름</th>
                  <th>카카오id</th>
               </tr>
               
               <c:forEach var="row" items="${list }">
               <form id="detailform" method="post" class="form-inline"
                  action="${root}/viewMember/${row.id}">
                  <tr onclick="location.href='${root}/viewMember/${row.id}'">
                     <td>${row.id}</td>
                     <td>${row.password}</td>
                     <td>${row.name}</td>
                     <td>${row.kakaoid}</td>
                  </tr>
               </form>
               </c:forEach>
         </table>

            </div>
          </div>
        </div>
      </div>
    </section>

  </main><!-- End #main -->

 <!-- ======= Footer ======= -->
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
  <!-- Template Main JS File -->
  <script src="${path}/resources/assets/js/main.js"></script>
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

</body>

</html>