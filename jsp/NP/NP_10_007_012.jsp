<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('4대 보험료');

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
				<h2 class="blind">4대 보험료 신청 및 조회</h2>
				<div class="ico_box_wrap ty2">
					<i class="i_ico_88 ico_15" aria-hidden="true"></i>
					<p class="txt fc_black mt25">농협카드로 <span class="fc_blue">4대 보험료</span><br>자동이체를 신청하세요!</p>
				</div>
				<hr class="hr_line" aria-hidden="true">

				<h3 class="tit_h2">서비스 대상</h3>
				<div class="fc_gray">지역가입자, 개인 사업장, 법인 사업 직장가입자의 납입금으로 국민연금, 건강보험,고용보험, 산재보험이 해당</div>
				<hr class="hr_line" aria-hidden="true">

				<h3 class="tit_h2">납부대상카드</h3>
				<div class="fc_gray">개인 신용카드, 체크카드(가족회원 포함) / 채움카드만 신청 가능 <br>(기업카드, 기프트카드, 후불하이패스카드, 면세유구매전용카드, NH올원Syrup(시럽)카드 등 일부 카드 제외)</div>
				<hr class="hr_line" aria-hidden="true">

				<h2 class="tit_h2">서비스 이용 가능시간</h2>
				<div class="txt_list fz_14">
					<ul>
						<li class="dot">평일/토요일: 09:00~20:00</li>
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
								<li class="dot">국민건강보험공단 고객센터 ☎1577-1000</li>
								<li class="dot">자동납부 신청할 납부자번호를 정확히 확인하시기 바랍니다.</li>
								<li class="dot">신청하고자 하는 납부자번호로 타은행 또는 타카드사를 통해 자동이체 혹은 카드 자동납부 중인 경우 이중 결제될 수 있으므로 반드시 국민건강보험공단을 통해 해지 신청하여 주시기 바랍니다. 해지 신청 후 접수가 가능합니다.</li>
								<li class="dot">카드번호 변경 시, 동일계열(채움카드⇒채움카드)로만 변경 가능하며 변경 된 최종 카드번호로 납부 예정일에 계속 자동납부처리 됩니다.</li>
								<li class="dot">카드번호 이외 변경은 불가하며 기존 자동납부서비스 해지 후 신청하여 주시기 바랍니다.</li>
								<li class="dot">등록된 카드의 카드재발급(훼손,도난/분실,갱신) 사유로 카드번호가 변경된 경우에는 변경된 카드번호로 계속하여 자동납부가 진행됩니다. 변경된 카드로 승인을 원하지 않을 경우, 사전에 자동납부 서비스를 해지하여 주시기 바랍니다.</li>
								<li class="dot">등록된 카드의 거래정지 및 카드한도부족 (체크카드 계좌 잔고부족 포함) 등으로 납부마감일 (말일 또는 10일) 승인이 거절될 경우 10일 또는 25일 재청구되며, 25일 재청구 시에도 승인이 거절될 경우 공단 약관에 따라 납부의무자에게 사전 통지 없이 카드자동납부가 해지되오니 유의하여 주시기 바랍니다.
									<div class="caution_txt mt5">전월 말일 先(선)청구 미납 시 10일 정기청구 되는 경우에는 연체금이 별도 가산되지 않습니다.</div>
									<div class="caution_txt">단, 10일 정기청구 미납으로 25일 재청구 시 연체료가 가산될 수 있습니다.</div>
									<div class="caution_txt">말일, 10일, 25일이 非(비)영업일인 경우 익영업일에 청구됩니다.</div>
								</li>
								<li class="dot">카드로 납부하신 4대사회보험 자동납부 금액은 소득공제 대상에서 제외됩니다.</li>
								<li class="dot"><span class="fc_red">승인된 4대사회보험 납부금액은 매출취소가 불가합니다.</span> 취소 및 이중수납에 관련된 문의는 국민건강보험공단 고객센터로 확인해 주시기 바랍니다.</li>
								<li class="dot">카드 자동납부를 해지할 경우 이후 납부방법 변경은 국민건강보험공단 고객센터로 연락하여 신청하시기 바랍니다.</li>
								<li class="dot">카드자동이체 개시 이전 발생된 미납요금은 합산되어 결제되지 않습니다.</li>
								<li class="dot">미납요금 관련 문의는 국민건강보험공단 고객센터로 확인하시기 바랍니다.</li>
								<li class="dot">신청,해지,변경 시 안내문자가 발송되오니 사전에 연락처 확인바랍니다.</li>
								<li class="dot">고객연락처 변경 방법 : <span class="fc_red">MYNH &gt; 회원정보 &gt; 회원기본정보 참조</span></li>
								<li class="dot">문의처 : 카드고객상담센터 ☎1644-4000, 국민건강보험공단 고객센터 ☎1577-1000</li>
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
					<div>평일/토요일 09:00~20:00, <br><span class="fc_red">일요일/공휴일 이용불가</span></div>
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