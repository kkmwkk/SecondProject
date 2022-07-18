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
  <title>2대2 게시글 등록하기</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
</head>
<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- 모든 사이트 만들때마다 라인 1부터 여기까지 복사한 후 넣은다음 사용하면됌 -->
<!--  인클루드헤더 들어가있는 것은 스크립트, link, 사이드바, 헤더의 모든것-->
  <main id="main" class="main">
    <section class="section">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">등록하기</h5>
              <!-- Floating Labels Form -->
              <form id="detailform" method="post" class="row g-3"
               action="${root}/create2">
               <label for="id">닉네임</label>
               <input type="text" value="${login.id}" readonly="true"
                  class="form-control" id="id" name="id" />
                <!--  성별 -->
                <div class="col-md-4">
                  <div class="form-floating mb-3">
                    <select class="form-select" id="sex" name= "sex" aria-label="State">
                      <option selected value="">성별을 선택하세요</option>
                      <option value="남">남</option>
                      <option value="여">여</option>
                    </select>
                    <label for="floatingSelect">성별</label>
                  </div>
                </div>
                <!--  나이 -->
                <div class="col-md-4">
                  <div class="form-floating mb-3">
                    <select class="form-select" id="age" name= "age" aria-label="State">
            			<option selected value="">나이를 선택하세요</option>
                      <option value="20">20</option>
                      <option value="21">21</option>
                      <option value="22">22</option>
                      <option value="23">23</option>
                      <option value="24">24</option>
                      <option value="25">25</option>
                      <option value="26">26</option>
                      <option value="27">27</option>
                      <option value="28">28</option>
                      <option value="29">29</option>
                      <option value="30">30</option>
                      <option value="40">40</option>
                      <option value="50">50</option>
                      <option value="70">70</option>
                      <option value="99">99</option>
                      <option value="3">3</option>
                      <option value="18">18</option>
                    </select>
                    <label for="floatingSelect">나이</label>
                  </div>
                </div>
                <!-- 학과 -->
                <div class="col-md-4">
                  <div class="form-floating mb-3">
                    <select class="form-select" id="major" name= "major" aria-label="State">
                      <option selected value="">학과를 선택하세요</option>
                      <option value="빅데이터공학과">빅데이터공학과</option>
                      <option value="건축공학과">건축공학과</option>
                      <option value="간호학과">간호학과</option>
                      <option value="광고홍보학과">광고홍보학과</option>
                      <option value="자퇴예정">자퇴예정</option>
                      <option value="화학생명공학과">화학생명공학과</option>
                    </select>
                    <label for="floatingSelect">학과</label>
                  </div>
                </div>
                <!-- MBTI -->
                <div class="col-md-4">
                  <div class="form-floating mb-3">
                    <select class="form-select" id="mbti" name= "mbti" aria-label="State">
                    <option selected value="">MBTI를 선택하시오</option>
                      <option value="ENFJ">ENFJ</option>
                      <option value="ENTJ">ENTJ</option>
                      <option value="INTJ">INTJ</option>
                      <option value="INFJ">INFJ</option>
                      <option value="ESFJ">ESFJ</option>
                      <option value="ESTJ">ESTJ</option>
                      <option value="ISFP">ISFP</option>
                      <option value="INFP">INFP</option>
                    </select>
                    <label for="floatingSelect">MBTI</label>
                  </div>
                </div>
                <!-- 포지션 -->
                <div class="col-md-4">
                  <div class="form-floating mb-3">
                    <select class="form-select" id="position" name= "position" aria-label="State">
                      <option selected value="">나의 포지션은?</option>
                      <option value="광대">광대</option>
                      <option value="이쁜이">이쁜이</option>
                      <option value="멋쟁이">멋쟁이</option>
                      <option value="선비">선비</option>
                      <option value="MC">MC</option>
                      <option value="수다쟁이">수다쟁이</option>
                      <option value="개그맨">개그맨</option>
                      <option value="남주혁">남주혁</option>
                    </select>
                    <label for="floatingSelect">나의 역할은?</label>
                  </div>
                </div>
                <!-- 주량 -->
                <div class="col-md-4">
                 <!-- <div class="form-floating mb-3">  -->
                   <div class="form-floating mb-3">
                    <select class="form-select" id="soju" name= "soju" aria-label="State">
                    <option selected value="">내가 이정도는 먹는다</option>
                      <option value="3잔이하">3잔이하</option>
                      <option value="1병이하">1병이하</option>
                      <option value="1.5병">1.5병</option>
                      <option value="2병">2병</option>
                      <option value="2.5병">2.5병</option>
                      <option value="3병">3병</option>
                      <option value="한짝">한짝</option>
                      <option value="난 취해본적이 없어요">난 취해본적이 없어요</option>
                    </select>
                    <label for="floatingSelect">나의 주량은?</label>
                  </div>
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-warning" id="submit">등록하기</button>
                  <button type="reset" class="btn btn-secondary">초기화</button>
                </div>
              </form><!-- End floating Labels Form -->
            </div>
          </div>
    </section>
  </main><!-- End #main -->
   <!-- ======= Footer ======= -->
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
  <!-- End Footer -->
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
    $(function () {
        $("#detailform").submit(function() {
            if($("#sex").val() == 0) {
                alert('성별을 선택해주세요..')
                return false
            }
            if($("#age").val() == 0) {
                alert('나이를 선택해주세요')
                return false
            }
            if($("#major").val() == 0) {
                alert('학과를 선택해주세요 ')
                return false
            }
            if($("#mbti").val() == 0) {
                alert('mbti를 선택해주세요 ')
                return false
            }
            if($("#position").val() == 0) {
                alert('포지션을 선택해주세요 ')
                return false
            }
            if($("#soju").val() == 0) {
                alert('주량을 선택해주세요 ')
                return false
            }
        });
    });
</script>
</body>
</html>