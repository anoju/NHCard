<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('인증서 등록');
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
				<div class="complete_wrap">
					<i class="i_ico_50 ico_1" aria-hidden="true"></i>
					<h2 class="tit_h2">인증서 등록 완료</h2>
					<p class="txt mt20">인증서 갱신 또는 유효기간 만료<br>등으로 공인인증서가 변경될 경우<br>인증서를 다시 등록해 주세요.
					</p>
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