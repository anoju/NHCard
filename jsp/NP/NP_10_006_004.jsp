<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('도시가스요금 조회/해지');
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
				<h2 class="blind">도시가스요금 자동납부 해지</h2>
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
						<div class="th">주소</div>
						<div class="td">(06204) 경기도 성남시 분당구 중앙공원로 432</div>
					</li>
					<li>
						<div class="th">도시가스사명</div>
						<div class="td">서울도시가스</div>
					</li>
					<li>
						<div class="th">납부자번호</div>
						<div class="td">1234-1234-1234-1234</div>
					</li>
					<li>
						<div class="th">신규일자</div>
						<div class="td">2020.06.04</div>
					</li>
					<li>
						<div class="th">해지일자</div>
						<div class="td">2020.06.04</div>
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