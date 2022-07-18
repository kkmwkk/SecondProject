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

  <title>받은 신청</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

</head>


<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

  <main id="main" class="main">

    <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">

              <h5 class="card-title">수락한 신청</h5>
			  <c:forEach var="items" items="${friends}">
              <div class="alert alert-primary alert-dismissible fade show" role="alert">
            	닉네임 : ${items} <br> 카카오아이디 : ${friend_kakaoid}
               <form action="${root}/remove" method="post">
			<input type="hidden"  id="id" name="id" value="${login.name}">
			<input type="hidden"  id="friend" name="friend" value="${items}">
			<button type="submit" class="btn-close" aria-label="Close"></button>
                </form>
              </div>
			</c:forEach>	
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
  
</body>
</html>