<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="js/join.js"></script>
</head>
<body>
	<H1>인덱스 페이지</H1>
	
		<c:if test="${empty userVO}">
	<a href="${ pageContext.request.contextPath }/login/login.do?">로그인</a><br/>
	
		<form action="${pageContext.request.contextPath }/sign/sign.do" >
			<div class="row">
				<ul>
					<li>
						<input type="radio" id="r1" name="type" value="1" checked />
						<label for="r1">개인회원</font></label>
						<div class="check"></div></li>
					<li>
						<input type="radio" id="r2" name="type" value="2" /> 
						<label for="r2">사업자</font></label>
						<div class="check"></div></li>
				</ul>
			</div>
			<button type="submit">등록</button>
		</form>
			<br/>
	</c:if>
	
</body>
</html>