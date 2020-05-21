<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('회원가입');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top_close.jsp" %>
	<div id="container" class="ty3">
		<section id="contents">
			<div class="finish_wrap">
				<div class="item_effect type1" aria-hidden="true"><!-- 2020-05-28: 클래스명 변경 -->
					<img src="/content/images/finish/finish_img_01.png" alt="">
				</div>
				<div class="inner">
					<h2 class="tit">회원가입 완료</h2>
					<div class="txt">NH농협카드 회원이 되신것을 환영합니다!<br>
					안전하고 스마트한 카드생활을 누릴 수 있습니다.</div>
					<div class="box">
						※ 잠금번호를 설정하면 자동로그인을 편리하게 이용할 수 있습니다!
						<div class="t_right">
							<a href="#" class="btn_link gray">잠금번호 설정<i class="bt_ic_arr" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<a href="#" class="button h54 blue">확인</a>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>