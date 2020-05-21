<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('주택임대료');

		Layer.open('#notServicePop');
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
				<h2 class="blind">주택임대료 신청 및 조회</h2>
				<div class="ico_box_wrap ty2">
					<i class="i_ico_88 ico_13" aria-hidden="true"></i>
					<p class="txt fc_black mt25">농협카드로 <span class="fc_blue">주택임대료</span><br>자동이체를 신청하세요!</p>
				</div>
				<hr class="hr_line" aria-hidden="true">

				<h3 class="tit_h2">서비스 대상</h3>
				<div class="fc_gray">LH(한국토지주택공사)/SH(서울주택도시공사)에서 운영중인 임대주택, 상가</div>
				<div class="fc_gray mt5">*일부 임대주택/상가의 경우 자동납부 신청이 제한 될 수 있습니다.</div>
				<hr class="hr_line" aria-hidden="true">

				<h3 class="tit_h2">납부대상카드</h3>
				<div class="fc_gray">개인 신용카드, 체크카드(가족회원 포함) / 채움카드만 신청 가능 <br>(기업카드, 기프트카드, 후불하이패스카드, 면세유구매전용카드, NH올원Syrup(시럽)카드 등 일부 카드 제외)</div>
				<hr class="hr_line" aria-hidden="true">

				<h2 class="tit_h2">서비스 이용 가능시간</h2>
				<div class="txt_list fz_14">
					<ul>
						<li class="dot">평일/토요일: 08:00~21:00</li>
						<li class="dot fc_red">일요일/공휴일 이용불가</li>
					</ul>
				</div>
				<dl class="accordion_list accordion_dl mt30">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">자동납부 신청할 납부자번호를 정확히 확인하시기 바랍니다.</li>
								<li class="dot">신청하고자 하는 납부자번호로 타 은행/카드사를 통해 자동이체 혹은 카드 자동납부 중인 경우 이중 결제될 수 있으므로 반드시 먼저 기존 납부 중인 금융기관을 통해 해지 신청하여 주시기 바랍니다.</li>
								<li class="dot">임대료 당월분 납부를 위한 신청일자 기준은 매월 10일로 10일 이후 신청된 자동이체 건은 익월 말일 첫 승인됩니다.(매월1~10일 신청시 당월 말일 첫 승인)</li>
								<li class="dot">카드번호 변경 시, 동일계열(채움카드⇒채움카드)로만 변경 가능하며 변경 된 최종 카드 번호로 납부 예정일에 계속 자동납부처리 됩니다.</li>
								<li class="dot">카드번호 이외 변경은 불가하며 기존 자동납부서비스 해지 후 신청하여 주시기 바랍니다.</li>
								<li class="dot">등록된 카드가 거래정지(분실/해지 등), 한도부족 등 거래가 안되는 경우 임대료 승인이 거절되오니 해당월 임대료가 연체되지 않도록 임대사업자 별 별도 납부방법을 확인 후 납부 바랍니다.</li>
								<li class="dot">등록된 카드의 카드재발급(훼손,도난/분실,갱신) 사유로 카드번호가 변경된 경우에는 변경된 카드번호로 계속하여 자동납부가 진행됩니다. 변경된 카드로 승인을 원하지 않을 경우, 사전에 자동납부 서비스를 해지하여 주시기 바랍니다.</li>
								<li class="dot">일부 임대주택의 경우 전산연결 불가 등으로 신청되지 않을 수 있습니다. 양해 부탁드립니다.</li>
								<li class="dot">신청,해지,변경 시 안내문자가 발송되오니 사전에 연락처 확인바랍니다.</li>
								<li class="dot">고객연락처 변경방법 : <span class="fc_red">MYNH &gt; 회원정보 &gt; 회원기본정보 참조</span></li>
								<li class="dot">문의처 : 카드고객상담센터 ☎1644-4000</li>
								<li class="dot">카드자동납부와 관련하여 별도로 정하지 아니한 사항에 대하여는 NH채움(비씨)신용(체크)카드 개인회원표준약관 및 NH농협카드 표준전자금융거래 기본약관을 적용합니다.</li>
							</ul>
						</div>
					</dd>
				</dl>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<a href="#" class="button h54 gray">조회 및 해지</a>
					<a href="#" class="button h54 blue">신청</a>
				</div>
			</div>
		</section>
	</div>

	<!-- 팝업 -->
	<div id="notServicePop" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section t_center">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<h2 class="pop_tit fz_14">서비스 이용시간이 아닙니다.</h2>
					<div>평일/토요일 08:00~21:00, <br><span class="fc_red">일요일/공휴일 이용불가</span></div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h48 blue ui-pop-close">확인</a><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- //팝업 -->

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>