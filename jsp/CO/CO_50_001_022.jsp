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
				<h1>안전한 개인 정보 보호를 위해 비밀번호를 변경해 주세요. </h1>
			</div>
			<div class="pop_cont">
				<div class="section">
					<div>현재 이용중인 비밀번호를 3개월 이상 변경하지 않았습니다. 소중한 개인정보 보호를 위해 비밀번호 변경을 권장합니다.</div>
					<div class="checkbox mt15">
						<input type="checkbox" id="after30day"><i aria-hidden="true"></i>
						<label for="after30day" class="lbl">30일동안 보지 않기</label>
					</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h48 gray ui-pop-close">다음에 변경</a><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
						<a href="#" class="button h48 blue">지금 변경</a>
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