<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('아파트관리비 조회/변경/해지');
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
				<h2 class="blind">아파트관리비 자동납부 해지</h2>
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
						<div class="th">아파트명</div>
						<div class="td">이매촌한신아파트</div>
					</li>
					<li>
						<div class="th">주소</div>
						<div class="td">(06204) 경기도 성남시 분당구 중앙공원로 432</div>
					</li>
					<li>
						<div class="th">신규일</div>
						<div class="td">2020.03.11</div>
					</li>
					<li>
						<div class="th">신규일</div>
						<div class="td">2020.03.11</div>
					</li>
					<li class="line">
						<div class="th">최초이체예정일</div>
						<div class="td">2020.06.04</div>
					</li>
					<li>
						<div class="th">전화번호</div>
						<div class="td">010-1234-1234</div>
					</li>
					<li>
						<div class="th">신청영업점코드</div>
						<div class="td">999999</div>
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