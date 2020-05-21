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

		Layer.open('#changeCardPop');
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
				<h2 class="blind">4대 사회보험료 자동납부 변경</h2>
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
				<hr class="hr_line" aria-hidden="true">
				<div class="form_item large">
					<div class="fm_lb">납부카드변경</div>
					<div class="fm_cont">
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
				<dl class="accordion_list accordion_dl mt30">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">카드번호 이외 변경은 불가능하며, 다른 정보의 변경을 원하실 경우 기존 자동납부서비스 해지 후 다시 신청해 주세요.
								</li>
							</ul>
						</div>
					</dd>
				</dl>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<button type="button" class="button h54 blue">변경</button>
				</div>
			</div>
		</section>
	</div>

	<!-- 팝업 -->
	<div id="changeCardPop" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section t_center">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<h2 class="pop_tit fz_14">자동이체 변경카드</h2>
					<div class="fc_blue">5241-****-****-1234 NH올인원카드</div>
					<div>자동이체 카드를 변경하시겠어요?</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h48 gray ui-pop-close">취소</a><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
						<a href="#" class="button h48 blue ui-pop-close">확인</a><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- //팝업 -->

	<!--카드선택 팝업-->
	<div data-include-html="../include/pop/cardSelect.html"></div>
	<!--//카드선택 팝업-->

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>