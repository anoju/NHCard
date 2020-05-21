<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('전기요금');
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
				<h2 class="blind">전기요금 자동납부 신청</h2>
				<div class="form_item mt0">
					<div class="fm_lb">카드선택</div>
					<div class="fm_cont">
						<div class="input">
							<input type="text" title="카드사용자 이름" value="김농협" disabled>
						</div>
						<div class="input">
							<input type="text" title="카드사용자 주문번호" value="950511-*******" disabled>
						</div>
						<!-- 카드선택 전 -->
						<div class="select btn">
							<a href="#" class="btn_select off" title="팝업으로 카드 선택" onclick="Layer.open('#cardSelectPop')">카드선택</a><!-- 선택전 off 클래스 -->
						</div>
						<!-- //카드선택 전 -->
						<!-- 카드선택 후 -->
						<div class="select btn">
							<a href="#" class="btn_select on" title="팝업으로 카드 선택" onclick="Layer.open('#cardSelectPop')">전체카드</a><!-- 선택후 on 클래스 -->
						</div>
						<div class="select btn">
							<a href="#" class="btn_select on" title="팝업으로 카드 선택" onclick="Layer.open('#cardSelectPop')"><!-- 선택후 on 클래스 -->
								<div class="card_info_box">
									<div class="name">채움(농협은행)</div>
									<div class="info">
										<div>올바른 BASIC+ 카드</div>
										<div>
											<span class="type master"><span class="blind">마스터카드</span></span>
											<!-- <span class="type visa"><span class="blind">비자카드</span></span>
											<span class="type jcb"><span class="blind">jcb카드</span></span>
											<span class="type w"><span class="blind">w카드</span></span>
											<span class="type unionpay"><span class="blind">unionpay카드</span></span>
											<span class="type domestic"><span class="blind">국내전용카드</span></span> -->
											<span class="num">1234-56**-****3456</span>
										</div>
									</div>
								</div>
							</a>
						</div>
						<!-- //카드선택 후 -->
					</div>
				</div>
				<div class="form_item">
					<label for="userNumber" class="fm_lb">한전 전기요금 고객번호 조회</label>
					<div class="fm_cont">
						<div class="tbl">
							<div class="td">
								<div class="input"><input type="text" id="userNumber" title="한전 전기요금 고객번호 입력" placeholder="한전 전기요금 고객번호 입력"></div>
							</div>
							<div class="td va_mid w_90">
								<a href="#" class="button blue fz_14 block">확인</a>
							</div>
						</div>
						<div class="error_txt">납부자번호를 입력해주세요.</div>
					</div>
				</div>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<button type="button" class="button h54 blue" disabled>신청</button>
				</div>
			</div>
		</section>
	</div>

	<!--카드선택 팝업-->
	<div data-include-html="../include/pop/cardSelect.html"></div>
	<!--//카드선택 팝업-->

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>