<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	
	<section>
		<div align="center">
			<br/>
			<hr width="80%" />
			<h2>로그인</h2>
			<hr width="80%" />
			<br/><br/>
			
			<form name="lform" 
				  action="${pageContext.request.contextPath }/login/login.do" method="post" >
			<table width="40%">
				<tr>
					<th>ID</th>
					<td><input type="text" name="id" size="20"/></td>
				</tr>
				<tr>
					<th>PASSWORD</th>
					<td><input type="password" name="password" size="20"/></td>
				</tr>
				<tr>
				<div class="row">
				<ul>
					<li>
						<input type="radio" id="r1" name="type" value="1" checked />
						<label for="r1">개인회원</label>
						<div class="check"></div></li>
					<li>
						<input type="radio" id="r2" name="type" value="2" /> 
						<label for="r2">사업자</label>
						<div class="check"></div></li>
				</ul>
				</div>
				</tr>
			</table>
			
			
			<br/>
			<input type="submit" value="로그인" />
			</form>
		</div>
	</section>
</body>
</html>