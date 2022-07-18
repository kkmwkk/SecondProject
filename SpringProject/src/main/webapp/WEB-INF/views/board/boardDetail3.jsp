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
  <title>3대3 게시글 상세보기</title>
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
      <c:if test="${detail3 != null}">
				<form id="detailform" method="POST" class="form-inline"
					action="${root }/goModify/${detail3.no}">
					
		<h5 class="card-title">아이디</h5>
     	<p name="id" value="${detail3.id}">${detail3.id}</p>			
					
       	<h5 class="card-title">성별</h5>
     	 	<p name="sex" value="${detail3.sex}">${detail3.sex}</p>
     	 	
       	 <h5 class="card-title">mbti</h5>
       	<p name="mbti" value="${detail3.mbti}">${detail3.mbti}</p>
       	
       	<h5 class="card-title">나이</h5>
       	<p name="age" value="${detail3.age}">${detail3.age}</p>
       	
       	<h5 class="card-title">닉네임</h5>
       	<p name="position" value="${detail3.position}">${detail3.position}</p>	
       	
       	<h5 class="card-title">학과</h5>
       	<p name="major" value="${detail3.major}">${detail3.major}</p>
	
				</form>
	
			</c:if>
	
		</div>
	
	</div>
              <!-- Basic Modal -->
              <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#basicModal">
                신청하기
              </button>
              <div class="modal fade" id="basicModal" tabindex="-1">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">신청하기</h5>
                      <button type="button" data-bs-dismiss="modal" ></button>
                    </div>
                    <div class="modal-body">
                      신청하시겠습니까
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
                      <button type="button" class="btn btn-primary">예</button>
                    </div>
                  </div>
                </div>
              </div><!-- End Basic Modal-->
            </div>
    </section>
  </main><!-- End #main -->
   <!-- ======= Footer ======= -->
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
  <!-- End Footer -->
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

	<a href="/deleted3?no=${detail3.no }" role="button" class="btn btn-outline-info">삭제</a>
</body>
</html>