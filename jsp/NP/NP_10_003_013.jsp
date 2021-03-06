<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('교육비');

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
				<h2 class="blind">교육비 신청 및 조회</h2>
				<div class="ico_box_wrap ty2">
					<i class="i_ico_88 ico_12" aria-hidden="true"></i>
					<p class="txt fc_black mt25">농협카드로 <span class="fc_blue">교육비(학부모부담금)</span><br>자동이체를 신청하세요!</p>
				</div>
				<hr class="hr_line" aria-hidden="true">

				<h3 class="tit_h2">서비스 대상</h3>
				<div class="fc_gray">학부모가 부담하기로 결정한 납입금으로, 전국 초등학교, 중학교, 고등학교 교육비, 현장 학습비, 급식비, 간식비, 방과후 학습비 등 해당</div>
				<hr class="hr_line" aria-hidden="true">

				<h3 class="tit_h2">납부대상카드</h3>
				<div class="fc_gray">개인 신용카드, 체크카드(가족회원 포함) / 채움카드만 신청 가능 <br>(기업카드, 기프트카드, 후불하이패스카드, 면세유구매전용카드, NH올원Syrup(시럽)카드 등 일부 카드 제외)</div>

				<hr class="hr_line" aria-hidden="true">

				<h2 class="tit_h2">서비스 이용 가능시간</h2>
				<div class="txt_list fz_14">
					<ul>
						<li class="dot">평일/토요일: 08:00~20:00</li>
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
								<li class="dot">자동납부 신청할 학생식별번호, 학생명, 생년월일, 학교명을 정확히 확인하시기 바랍니다.</li>
								<li class="dot">신청하고자 하는 학생의 자동납부가 타 은행/카드사를 통해 자동이체 혹은 카드 자동납부 중인 경우 이중 결제가 될 수있으므로 반드시 먼저 기존 납부 중인 금융기관을 통해 해지 신청하시기 바랍니다.</li>
								<li class="dot">신청인, 신청인관계는 신청 시 반드시 입력(카드소지자=신청인)하여 주시기 바랍니다.</li>
								<li class="dot">대상교육비(학부모부담금)은 발생 때마다 학교에서 납부 건 항목별로 승인 요청됩니다.</li>
								<li class="dot fc_red">자세한 사항은 해당학교로 문의하여 주시기 바랍니다.</li>
								<li class="dot">등록된 카드의 재발급(훼손, 도난/분실, 갱신) 사유로 카드번호가 변경된 경우에는 변경된 카드번호로 계속하여 자동납부가 진행됩니다. 변경된 카드로 승인을 원하지 않는 경우, 사전에 자동납부 서비스를 해지하여 주시기 바랍니다.</li>
								<li class="dot">등록된 카드가 분실/해지 등으로 거래가 정지된 경우 납부카드 변경/해지 후 신규 신청하여 주시기 바랍니다.</li>
								<li class="dot">교육비 자동납부 금액은 소득공제 대상에서 제외됩니다.</li>
								<li class="dot">사전에 학교로 카드 자동납부 신청 동의 절차 필요합니다.</li>
								<li class="dot fc_red">미 동의시 신청불가, 동의 관련 내용은 해당학교 행정실로 문의 바랍니다.</li>
								<li class="dot">교육비 카드 자동납부와 관련하여 별도로 정하지 아니한 사항에 대하여는 NH채움 신용(체크)카드 개인회원표준약관 및 NH농협카드 표준전자금융거래 기본약관을 적용합니다.</li>
								<li class="dot">신청,해지,변경 시 안내문자 발송되오니 사전에 연락처 확인바랍니다.</li>
								<li class="dot">고객연락처 변경방법 : <span class="fc_red">MY NH &gt; 회원정보 &gt; 회원기본정보 참조</span></li>
								<li class="dot">문의처 : NH농협카드 고객상담센터 ☎1644-4000</li>
							</ul>
						</div>
					</dd>
				</dl>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<a href="#" class="button h54 gray">조회/변경/해지</a>
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
					<div>평일/토요일 08:00~20:00, <br><span class="fc_red">일요일/공휴일 이용불가</span></div>
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