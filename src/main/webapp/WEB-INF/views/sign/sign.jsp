<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">
<title>회원가입 </title>
<link href="https://nid.naver.com/inc/user/css/join.css?20160316" rel="stylesheet" type="text/css">
<link href="https://nid.naver.com/inc/user/css/join_pc.css?20160316" rel="stylesheet" type="text/css">
<script src="${ pageContext.request.contextPath }/js/join.js" type="text/javascript"></script>

</head>

<body>
<div id="wrap">

<!-- PC-ko_KR -->
	<!-- header -->
	<div id="header">
		<h1><a class="h_logo" href="http://www.naver.com">NAVER</a></h1>
	</div>
	<!-- //header -->
	
	<!-- container -->
	<div id="container">
		
		<!-- content -->
		<div id="content">
			<h2 class="blind">회원가입</h2>
			<div class="join_content">
				<div class="join_form">
				
<form id="join_form" onsubmit="return mainSubmit(0);" action="${pageContext.request.contextPath }/sign/sign.do"  method="post">	
	<input name="birth" id="birth" type="hidden" value="">		
<!-- 	<input name="token_sjoin" id="token_sjoin" type="hidden" value="pHjxb5dDoWmjZXx3">
	<input name="joinMode" id="joinMode" type="hidden" value="unreal">
	<input name="pbirthday" id="pbirthday" type="hidden" value="">
	<input name="ptelecom" id="ptelecom" type="hidden" value="SKT">
	<input name="authFlag" id="authFlag" type="hidden" value="N">
	<input name="ipinFlag" id="ipinFlag" type="hidden" value="N">
	<input name="encPswd" id="encPswd" type="hidden" value="">
	<input name="encKey" id="encKey" type="hidden" value="">
	<input name="platform" id="platform" type="hidden" value="PC">
	<input name="old_mobno" id="old_mobno" type="hidden" value="">
	<input name="old_pmobno" id="old_pmobno" type="hidden" value="">
	<input name="old_imobno" id="old_imobno" type="hidden" value="">
	<input name="old_authno" id="old_authno" type="hidden" value="">
	<input name="agentType" id="agentType" type="hidden" value="">
	<input name="captcha_type" id="captcha_type" type="hidden" value="image">
	<input name="chptchakey" id="chptchakey" type="hidden" value="aFnJbUrDoWcjcH80">
	<input name="captchaMode" id="captchaMode" type="hidden" value="N"> -->

				<fieldset class="join_from">						
					<legend class="blind">회원가입</legend>	
					<div class="row_group">
					
					<!-- 아이디 입력 -->
						<div class="join_row" id="idDiv">
							<span class="ps_box int_id">
								<input name="id" class="int" id="id" onfocus="toggleLabel('idLb','id', 'in');" onblur="toggleLabel('idLb','id', 'out');checkId('first')" type="text" maxlength="20" placeholder="아이디" value="" autocomplete="off"> 
								<label class="lbl" id="idLb" for="id">아이디</label>
							</span> 
							<!-- class:error e_info, error, error gm -->
							<div class="error" id="idMsg" style="display: none;">아이디 입력 필수 정보입니다.</div>
						</div>						
						
					<!-- 비밀번호 입력 -->
						<div class="join_row" id="pswd1Div">
							<!-- [D]normal상태 int_pass / 1단계 사용불가 int_pass_step1 / 2단계 낮음 int_pass_step2 / 3단계 적정 int_pass_step3 / 4단계 높음 int_pass_step4 -->							
							<span class="ps_box int_pass" id="pswd1Img">
								<input name="password" class="int" id="pswd1"  onfocus="toggleLabel('pswd1Lb','pswd1','in');" onblur="toggleLabel('pswd1Lb','pswd1','out');checkPswd1('check')" type="password" maxlength="16" placeholder="비밀번호" ;=""> 
								<label class="lbl" id="pswd1Lb" for="pswd1">비밀번호</label>
							</span>							
							<div class="error" id="pswd1Msg" style="display: none;">비밀번호 입력 필수 정보입니다.</div>
						</div>
						
					<!-- 비밀번호  재입력 -->
						<div class="join_row" id="pswd2Div">
							<!-- [D]normal상태 int_pass_check / 비밀번호 확인완료 int_pass_check2  -->							
							<span class="ps_box int_pass_check" id="pswd2Img">
								<input name="pswd2" class="int" id="pswd2" onfocus="toggleLabel('pswd2Lb','pswd2','in');" onblur="toggleLabel('pswd2Lb','pswd2','out');checkPswd2('check')" type="password" maxlength="16" placeholder="비밀번호 재확인" ;=""> 
								<label class="lbl" id="pswd2Lb" for="pswd2">비밀번호 재확인</label>
							</span> 
							<div class="error" id="pswd2Msg" style="display: none;">비밀번호 재확인 필수 정보입니다.</div>
						</div>
					</div>

					<div class="row_group">
					
					<!-- 한글 이름 입력 -->
						<div class="join_row" id="nmDiv">
							<span class="ps_box">
								<input name="name" class="int" id="nm" onfocus="toggleLabel('nmLb','nm','in');" onblur="toggleLabel('nmLb','nm','out');checkName('check')" type="text" maxlength="40" placeholder="이름" value=""> 
								<label class="lbl" id="nmLb" for="nm">이름</label>
							</span>
							<div class="error" id="nmMsg" style="display: none;">이름 필수 정보입니다.</div>
						</div>	
						
					<!-- 닉네임 입력 -->
						<div class="join_row" id="nmDiv">
							<span class="ps_box">
								<input name="nickname" class="int" id="nm" onfocus="toggleLabel('nmLb','nm','in');" onblur="toggleLabel('nmLb','nm','out');checkName('check')" type="text" maxlength="40" placeholder="닉네임" value=""> 
								<label class="lbl" id="nmLb" for="nm">닉네임</label>
							</span>
							<div class="error" id="nmMsg" style="display: none;">닉네임 필수 정보입니다.</div>
						</div>	
						
					<!-- 주소 입력 -->
						<div class="join_row" id="nmDiv">
							<span class="ps_box">
								<input name="addr" class="int" id="nm" onfocus="toggleLabel('nmLb','nm','in');" onblur="toggleLabel('nmLb','nm','out');checkName('check')" type="text" maxlength="40" placeholder="주소" value=""> 
								<label class="lbl" id="nmLb" for="nm">주소</label>
							</span>
							<div class="error" id="nmMsg" style="display: none;">주소 필수 정보입니다.</div>
						</div>	
						
					<!-- 성별 입력 -->			
						<div class="join_row join_sex" id="sexDiv">
							<span class="row_title blind"> 성별 </span>
							<span class="sex">
								<span class="jender">
								<input name="gender" id="man" onclick="checkSex()" type="radio" value="남자">
									<label id="manLb" for="man">남자 </label>
								</span>
								<span class="jender">
									<input name="gender" id="woman" onclick="checkSex()" type="radio" value="여자">
									<label id="womanLb" for="woman">여자 </label></span>
							</span>
							<span class="error" id="sexMsg" style="display: none;">필수 정보입니다.</span>
						</div>
						
					<!-- 생일 입력 -->
 						
						<div class="join_row join_birthday" id="birthdayDiv">
							<div class="join_birth">
								<div class="bir_title"><span>생일</span></div>
								<div class="bir_yy">
									<span class="ps_box">
										<input class="int" id="yy" onfocus="toggleLabel('yyLb','yy','in');" onblur="toggleLabel('yyLb','yy','out');checkBirthday('check')" type="text" maxlength="4" placeholder="년(4자)" value=""> 
										<label class="lbl" id="yyLb" for="yy">년(4자)</label>
									</span>
								</div>
								<span class="cell">|</span>
								<div class="bir_mm">
									<span class="ps_box">
										<select title="월" class="sel" id="mm" onchange="checkBirthday('check')">
											<option value="">월</option>
										  	 			<option value="1">1</option>
										  	 			<option value="2">2</option>
										  	 			<option value="3">3</option>
										  	 			<option value="4">4</option>
										  	 			<option value="5">5</option>
										  	 			<option value="6">6</option>
										  	 			<option value="7">7</option>
										  	 			<option value="8">8</option>
										  	 			<option value="9">9</option>
										  	 			<option value="10">10</option>
										  	 			<option value="11">11</option>
										  	 			<option value="12">12</option>
										</select>
									</span>
								</div>
								<span class="cell">|</span>
								<div class=" bir_dd">
									<span class="ps_box">
										<input class="int" id="dd" onfocus="toggleLabel('ddLb','dd','in');" onblur="toggleLabel('ddLb','dd','out');checkBirthday('check')" type="text" maxlength="2" placeholder="일" value=""> 
										<label class="lbl" id="ddLb" for="dd">일</label>
									</span>
								</div>
							</div>
							<span class="error" id="birthdayMsg" style="display: none;">필수 정보입니다.</span>
						</div>
						
					<!-- 이메일 입력 -->
						<div class="join_row join_email" id="emailDiv">
							<span class="ps_box int_email">
								<input name="email" class="int" id="email" onfocus="toggleLabel('emailLb','email','in');" onblur="toggleLabel('emailLb','email','out');checkEmail('check')" type="text" maxlength="100" placeholder="비상연락용 이메일" value=""> 
								<label class="lbl" id="emailLb" for="email">비상연락용 이메일</label>
							</span>
							<div class="error" id="emailMsg" style="display: none;">필수 정보입니다.</div>
						</div>
					</div>
							
					<!-- 전화번호 입력 -->
					<div id="mobDiv" class="row_group" style="display:block">
						<div id="mobnoDiv" class="join_row join_mobile">
							<span class="ps_box int_mobile"> 
								<input type="text" id="mobno" name="tel" maxlength="16" value="" onfocus="toggleLabel('mobnoLb','mobno','in');" onblur="toggleLabel('mobnoLb','mobno','out');checkMobno('check')" placeholder="휴대전화번호" class="int">
								<label id="mobnoLb" for="mobno" class="lbl">휴대전화번호</label>
							</span>
							<div id="mobnoMsg" class="error" style="display:none">필수 정보입니다.</div> 
						</div>
					</div>

										
					</fieldset>

					<a name="bottom"></a>					
					<div class="error_ch"><span class="error" id="joinMsg" style="display: none;">가입정보를 확인해주세요.</span></div>		
					<span class="btn_join"><input title="회원가입" class="int_join" onclick="clickcr(this, 'sup.signup', '', '', event);" type="submit" alt="회원가입" value="가입하기"></span>		
				</form></div>
			</div>	

			
		</div>	
		<!-- //content -->
	</div>
	<!-- //container -->
	


<script type="text/javascript">
checkBrowser();

if( "Y" == "N" ) {
	mainSubmit(0);
}
</script>

	<!-- footer -->
	<div id="footer">
		<ul>
		<li><a href="http://www.naver.com/rules/service.html">이용약관</a></li>
		<li><strong><a href="http://www.naver.com/rules/privacy.html">개인정보처리방침</a></strong></li>
		<li><a href="http://www.naver.com/rules/disclaimer.html">책임의 한계와 법적고지</a></li>
		<li><a href="https://help.naver.com/support/service/main.nhn?serviceNo=532" target="_blank">회원정보 고객센터 </a></li>
		</ul>
		<address>
			<em><a class="logo" href="http://nhncorp.com/" target="_blank"><span class="blind">naver</span></a></em>
			<em class="copy">Copyright</em> 
			<em class="u_cri">©</em>
			<a class="u_cra" href="http://nhncorp.com/" target="_blank">NAVER Corp.</a> 
			<span class="all_r">All Rights Reserved.</span>
		</address>
	</div>
	<!-- //footer -->
	
</div>

</body>
</html>