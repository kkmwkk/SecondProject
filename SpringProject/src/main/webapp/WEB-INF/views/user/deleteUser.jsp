<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원삭제</title>

<script>
 	var result = '${result}';
 	
 	if(result === "removeFalse") {
 		alert("비밀번호를 다시 입력해주세요.");
 	} 
 	
 </script>
</head>
<body>
<div class="container" align="center">
		<div class="col-lg-6" align="center">
			<form id="memberform" method="post" autocomplete="off" action="delete">
				<div class="form-group" align="left">
					<label for="id">아이디</label> <input type="text" value="${login.id}"
						readonly="true" class="form-control" id="id" name="id" />
				</div>
				<div class="form-group" align="left">
					<label for="password">비밀번호</label> <input type="text"
						class="form-control" id="password" name="password"
						placeholder="비밀번호">
				</div>
				<div class="form-group" align="left">
					<button type="submit">탈퇴하기</button>
				</div>
			</form>
		</div>
</div>

</body>

</html>