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
  <title>1대1 게시글 상세보기</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <!-- 따로 만든 css -->
  <link rel="stylesheet" type="text/css" href="${path}/resources/assets/css/mysdetail.css" />
  
  <script src= "https://ajax.googleapis.com/ajax/libs/jquery/3.1.2/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- 모든 사이트 만들때마다 라인 1부터 여기까지 복사한 후 넣은다음 사용하면됌 -->
<!--  인클루드헤더 들어가있는 것은 스크립트, link, 사이드바, 헤더의 모든것-->
  <main id="main" class="main">

    <div class="pagetitle">
    <section class="section profile">
      <div class="row">
        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">

              <div class="tab-content pt-2">
                <c:if test="${detail1 != null}">

                <div class="tab-pane fade show active profile-overview" id="profile-overview">
                  <h5 class="card-title"> 매칭 </h5>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label ">닉네임</div>
                    <div class="col-lg-9 col-md-8" name="id" value="${detail1.id}">${detail1.id}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">성별</div>
                    <div class="col-lg-9 col-md-8" name="sex" value="${detail1.sex}">${detail1.sex}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">mbti</div>
                    <div class="col-lg-9 col-md-8" name="mbti" value="${detail1.mbti}">${detail1.mbti}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">나이</div>
                    <div class="col-lg-9 col-md-8" name="age" value="${detail1.age}">${detail1.age}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">포지션</div>
                    <div class="col-lg-9 col-md-8" name="position" value="${detail1.position}">${detail1.position}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">학과</div>
                    <div class="col-lg-9 col-md-8" name="major" value="${detail1.major}">${detail1.major}</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">주량</div>
                    <div class="col-lg-9 col-md-8" name="soju" value="${detail1.soju}">${detail1.soju}</div>
                  </div>
                </div>
                
                <form action="${root}/friendRequest/${detail1.no}" method="post">
                  <input type="hidden"  id="id" name="id" value="${login.name}">
                  <input type="hidden"  id="friend" name="friend" value="${detail1.id}">
                  <input type="hidden"  id="kakaoid" name="kakaoid" value="${login.kakaoid}">
                  <input type="hidden"  id="friend_kakaoid" name="friend_kakaoid" value="${detail1.kakaoid}">
                  <input type="submit" value="신청하기" class="btn btn-outline-info">
                  </form>
  
                </c:if>   
					 <a href="/deleted1?no=${detail1.no}" role="button" class="btn btn-outline-info">삭제</a>
                </div>

              </div>

            </div>
            
          </div>

        </div>
    
    </section>
   </div>
  </main><!-- End #main -->

   <!-- ======= Footer ======= -->
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
  <!-- End Footer -->
  
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
   


</body>


</html>