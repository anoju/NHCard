<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('전기요금 조회/해지');
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
				<h2 class="blind">전기요금 자동납부 해지</h2>
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
						<div class="th">한전고객번호</div>
						<div class="td">123456785846555</div>
					</li>
					<li>
						<div class="th">신청일</div>
						<div class="td">2020.03.11</div>
					</li>
					<li>
						<div class="th">최초개시일</div>
						<div class="td">2020.03.11</div>
					</li>
					<li>
						<div class="th">???</div>
						<div class="td">영업점요청</div>
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