<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="${ conextPath }/resources/css/loginForm.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
	.errorCode{
	
	}
</style>
</head>

<%-- 잘못된 값이 있을경우 값 입력 --%>
<c:set var="errMessage" value="${ errors.fieldErrors[0].defaultMessage }"/>
<c:set var="errId" value="${ errors.fieldErrors[0].field }"/>

<%-- load후 function을 호출하여 잘못된 값이 있으면 alert창 띄움 --%>
<body onload="fn_errCheck( '${ errMessage }','${ errId }' )" cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">

	<div class="card align-middle"
		style="width: 30rem; border-radius: 20px;">
		<div class="card-title" style="margin-top: 30px;">
			<h2 class="card-title text-center" style="color: #113366;">회원가입</h2>
		</div>
		<div class="card-body">
			<form:form modelAttribute="joinReq" id="memberJoinForm" class="form-signin" method="POST" action="join.me">
				<h5 class="form-signin-heading">회원가입 정보를 입력하세요</h5><br>
				
				<form:errors path="mId"/>
				<form:label path="mId" for="mId">아이디</form:label> 
				<form:input path="mId" id="mId" type="text" name="mId" class="form-control" />	
				<br>
				
				<form:label path="mPwd" for="mPwd">비밀번호</form:label> 
				<form:input path="mPwd" type="password" id="mPwd" name="mPwd" class="form-control" placeholder="Password"/>
				<form:errors path="mPwd" class="errorCode"/>
				<br>
				
				<form:label path="mPwdCheck" for="mPwdCheck">비밀번호 확인</form:label> 
				<form:input path="mPwdCheck" type="password" id="mPwdCheck" name="mPwdCheck" class="form-control" placeholder="Password"/>
				<form:errors path="mPwdCheck" class="errorCode"/>
				<br>
				
				<form:label path="email" for="email">이메일</form:label>
				<form:input path="email" type="email" id="email" name="email" class="form-control" placeholder="email"/>
				<form:errors path="email" class="errorCode"/>
				<br><br>
				
				<button id="btn-Yes" class="btn btn-primary btn-block" type="submit">회원가입</button>
				<br><br>

			
			</form:form>
			
			<script>
				function fn_errCheck(errMessage, errId){
					var _errId = "#"+errId;
					//잘못된 값이 있을경우 alert을 띄운 후 focus함
					if(!(errMessage == "")){
						alert(errMessage);
						$(_errId).focus();
					}
				}
			</script>
					
		</div>
	</div>
</body>
</html>