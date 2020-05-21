<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('4대 사회보험료 조회/변경/해지');
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
				<h2 class="blind">4대 사회보험료 자동납부 해지</h2>
				<h3 class="tit_h2">납부 정보</h3>
				<ul class="list_box_table blue">
					<li>
						<div class="th"><strong>카드정보</strong></div>
						<div class="td">
							<div><strong>NH올인원카드</strong></div>
							<div><strong>5421-****-****-1234</strong></div>
						</div>
					</li>
				</ul>
				<ul class="list_box_table">
					<li>
						<div class="th">연락처</div>
						<div class="td">010-0000-0000</div>
					</li>
					<li class="line">
						<div class="th">가입자구분</div>
						<div class="td">지역</div>
					</li>
					<li>
						<div class="th">보험구분</div>
						<div class="td">건강구분</div>
					</li>
					<li>
						<div class="th">납부자명</div>
						<div class="td">김농협</div>
					</li>
					<li>
						<div class="th">납부방식</div>
						<div class="td">카드자동납부</div>
					</li>
					<li>
						<div class="th">납부자주민등록번호</div>
						<div class="td">920629-*******</div>
					</li>
					<li>
						<div class="th">납부자사업자번호</div>
						<div class="td">00000000</div>
					</li>
				</ul>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<button type="button" class="button h54 blue">해지</button>
				</div>
			</div>
		</section>
	</div>

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>