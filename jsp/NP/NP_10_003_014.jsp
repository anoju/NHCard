<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('교육비 조회/변경/해지');
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
				<h2 class="blind">교육비 자동납부 해지</h2>
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
						<div class="th">학생명</div>
						<div class="td">김축협</div>
					</li>
					<li>
						<div class="th">생년월일</div>
						<div class="td">2010.12.25</div>
					</li>
					<li>
						<div class="th">학교명</div>
						<div class="td">고산고등학교</div>
					</li>
					<li>
						<div class="th">학교주소</div>
						<div class="td">경기도 성남시 분당구 서현동 102-5번지 102호</div>
					</li>
					<li class="line">
						<div class="th">신청인</div>
						<div class="td">김농협</div>
					</li>
					<li>
						<div class="th">신청인관계</div>
						<div class="td">부모</div>
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