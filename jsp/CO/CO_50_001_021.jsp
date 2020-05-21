<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		Layer.open('#autoLogoutPop');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top.jsp" %>
	<div id="container">
		<section id="contents">
			<div class="section">
				<a href="#autoLogoutPop" class="button line ui-pop-open">자동 로그아웃 안내 팝업 확인</a>
			</div>
		</section>
	</div>

	<!-- 자동 로그아웃 안내 -->
	<div id="autoLogoutPop" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>자동 로그아웃 안내</h1>
			</div>
			<div class="pop_cont">
				<div class="section">
					안전한 금융거래를 위하여 로그인 후 약 10분동안 서비스 이용이 없어 자동으로 로그아웃 되었습니다. <br>
					다시 로그인하여 이용해 주세요. 
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h48 blue ui-pop-close">확인</a><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- //자동 로그아웃 안내 -->

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>