<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('아이디/비밀번호 찾기');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container">
		<section id="contents">
			<div class="section">
				<div class="area_next_bottom">
					<div class="com_result">
						<h2 class="tit_h2">아이디 조회결과</h2>
						<i class="i_ico_88 ico_3" aria-hidden="true"></i>
						<p class="txt"><span>김농협</span>님의 아이디는<br /><strong>Nhguard</strong> 입니다.</p>
					</div>
				</div>
				<div class="btn_wrap">
					<div class="flex">
						<a href="#" class="button line blue" onclick="Layer.open('#userCertifyPop');">비밀번호 변경</a>
						<a href="#" class="button blue">로그인</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	
	<!-- 본인인증팝업 -->
	<%@ include file="../include/certify/user.jsp" %>
	<%@ include file="../include/certify/pop_cvcInfo.jsp" %>
	<!-- //본인인증팝업 -->
	
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>