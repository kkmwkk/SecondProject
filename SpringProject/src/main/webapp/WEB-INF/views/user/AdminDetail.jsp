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
  <title>관리자 페이지 - 상세보기</title>
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
   <div class="col-lg-6">
      <div class="card">
      <h2>회원정보 상세</h2>
         <form name="form1" method="POST">
            <table border="1" width="400px">
               <tr>
                  <td>아이디</td>
                  <!-- id는 수정이 불가능하도록 readonly속성 추가 -->
                  <td><input name ="id" value="${ dto.id }" readonly="readonly"></td>
               </tr>
               
               <tr>
                  <td>비밀번호</td>
                  <td><input name="password" value="${dto.password }"></td>
               </tr>
               
               <tr>
                  <td>이름</td>
                  <td><input name="name" value="${dto.name }"></td>
               </tr>
               
               <tr>
               <td colspan="2" align="center">
                  <input type="button" value="수정" id="btnUpdate">
                  <input type="button" value="삭제" id="btnDelete">
                  <div style="color:red;">${message }</div>
               </td>
               </tr>
            </table>
         </form>
   
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

<script src= "https://ajax.googleapis.com/ajax/libs/jquery/3.1.2/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>

  <script type="text/javascript">
  $(document).ready(function(){
      $("#btnUpdate").click(function(){
         // 확인 대화상자
         if(confirm("수정하시겠습니까?")){
            document.form1.action = "${path}/updateMember";
            document.form1.submit();
         }
      });
   });
  
  $(document).ready(function(){
      $("#btnDelete").click(function(){
         // 확인 대화상자
         if(confirm("삭제하시겠습니까?")){
            document.form1.action = "${path}/deleteMember";
            document.form1.submit();
         }
      });
   });
  </script>

</body>

</html>