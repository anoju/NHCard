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
				<h2 class="blind">전기요금 신청 및 조회</h2>
				<div class="ico_box_wrap ty2">
					<i class="i_ico_88 ico_14" aria-hidden="true"></i>
					<p class="txt fc_black mt25">농협카드로 <span class="fc_blue">전기요금</span><br>자동이체를 신청하세요!</p>
				</div>
				<hr class="hr_line" aria-hidden="true">

				<h3 class="tit_h2">서비스 대상</h3>
				<div class="fc_gray">주택용 전력요금, 주거용 심야전력(갑) 고객, 계약전력 20kw 이하 고객</div>
				<hr class="hr_line" aria-hidden="true">

				<h3 class="tit_h2">납부대상카드</h3>
				<div class="fc_gray">개인 신용카드, 체크카드(가족회원 포함) / 채움카드만 신청 가능 <br>(기업카드, 기프트카드, 후불하이패스카드, 면세유구매전용카드, NH올원Syrup(시럽)카드 등 일부 카드 제외)</div>
				<hr class="hr_line" aria-hidden="true">

				<h2 class="tit_h2">서비스 이용 가능시간</h2>
				<div class="txt_list fz_14">
					<ul>
						<li class="dot">평일/토요일: 08:00~23:00</li>
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
								<li class="dot">신청가능 요금종류 : 주택용 전력요금, 주거용 심야전력(갑) 고객, 계약전력 20kw 이하 고객</li>
								<li class="dot fc_red">아파트, 빌라, 상가 등의 단체요금은 해당 관리사무소에서 취합하여 한전에 일괄 납부하는 요금이므로 신청에 주의하여 주시기 바랍니다.</li>
								<li class="dot">전기요금 고객명과 카드 명의자가 일치하지 않아도 신청 가능하니 고객번호를 정확하게 확인 후 입력해 주시기 바랍니다.</li>
								<li class="dot">고객님의 한전 납기일에 따라 자동납부 시작월이 달라질 수 있으므로 신청 후 '최초승인 예정일'을 확인하시기 바랍니다.</li>
								<li class="dot">타 카드나 계좌이체 등으로 기 자동납부 중이신 경우, 이중 납부의 우려가 있으므로 기 신청 건에 대한 해지 후 신청해 주시기 바랍니다.</li>
								<li class="dot">기타 요금 관련 문의 사항 : 한전고객상담센터(국번없이 123)</li>
								<li class="dot">자동이체중인 카드의 갱신/분실/훼손 재발급으로 카드번호가 변경될 경우 신 카드번호로 승인됩니다.</li>
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
					<div>평일/토요일 08:00~23:00, <br><span class="fc_red">일요일/공휴일 이용불가</span></div>
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