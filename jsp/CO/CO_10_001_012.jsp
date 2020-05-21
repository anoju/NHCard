<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('Face ID 설정');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top_menu.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container" class="bg_gray">
		<section id="contents">
			<div class="section">
				<div class="area_next_bottom">
					<div class="complete_wrap">
						<i class="i_ico_50 ico_1" aria-hidden="true"></i>
						<h2 class="tit_h2">Face ID 설정 완료</h2>
						<p class="txt">스마트기기에 저장된 Face ID로 간편하게 <br>로그인 하세요.</p>
					</div>
				</div>
				<div class="btn_wrap bottom_fixed">
					<div class="flex">
						<a href="#" class="button h54 blue">확인</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>