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
					<div class="com_result small_ico">
						<i class="i_ico_50 ico_2" aria-hidden="true"></i>
						<p class="txt"><strong>김농협</strong>님은<br />농협카드에 가입되어 있지 않습니다.<br />회원가입 후 이용해 주세요.</p>
					</div>
				</div>
				<div class="btn_wrap">
					<div class="flex">
						<a href="#" class="button line blue">확인</a>
						<a href="#" class="button blue">회원가입</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>