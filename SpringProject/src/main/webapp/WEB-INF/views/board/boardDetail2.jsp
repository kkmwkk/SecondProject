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
  <title>2대2 게시글 상세보기</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- 모든 사이트 만들때마다 라인 1부터 여기까지 복사한 후 넣은다음 사용하면됌 -->
<!--  인클루드헤더 들어가있는 것은 스크립트, link, 사이드바, 헤더의 모든것-->
<main id="main" class="main">
<section class="section">
   <div class="row">
   <div class="col-lg-6">
   	<div class="card">
      <c:if test="${detail2 != null}">
				<form id="detailform" method="POST" class="form-inline"
					action="${root }/goModify/${detail2.no}">
		
		<h5 class="card-title">아이디</h5>
     	<p name="id" value="${detail2.id}">${detail2.id}</p>			
					
       	<h5 class="card-title">성별</h5>
     	 	<p name="sex" value="${detail2.sex}">${detail2.sex}</p>
     	 	
       	 <h5 class="card-title">mbti</h5>
       	<p name="mbti" value="${detail2.mbti}">${detail2.mbti}</p>
       	
       	<h5 class="card-title">나이</h5>
       	<p name="age" value="${detail2.age}">${detail2.age}</p>
       	
       	<h5 class="card-title">닉네임</h5>
       	<p name="position" value="${detail2.position}">${detail2.position}</p>	
       	
       	<h5 class="card-title">학과</h5>
       	<p name="major" value="${detail2.major}">${detail2.major}</p>
	
				</form>
	
			</c:if>
	
		</div>
	
	</div>
			
	

			<form id="detailform" method="POST" class="form-inline"
					action="${root}/goModify2/${detail2.no}">
			<input type="hidden" id="searchType" name="searchType" value="${searchType}"> 
			<input type="hidden"  id="searchContent" name="searchContent" value="${searchContent}">
			<input type="hidden"  id="friend" name="friend" value="${detail1.id}">
			<input type="submit" value="Request" class="btn btn-default">
			</form>
			
            </div>
    </section>
  </main><!-- End #main -->
   <!-- ======= Footer ======= -->
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
  <!-- End Footer -->
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

	<a href="/deleted2?no=${detail2.no }" role="button" class="btn btn-outline-info">삭제</a>
</body>
</html>