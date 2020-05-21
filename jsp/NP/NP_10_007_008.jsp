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
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container">
		<section id="contents">
			<h2 class="blind">4대 사회보험료 자동납부 조회</h2>
			<div class="section">
				<div class="tabmenu mb0">
					<ul>
						<li class="active"><a href="#" title="현재선택">NH채움카드</a></li>
						<li><a href="#">NH비씨카드</a></li>
					</ul>
					<div class="tab_line" aria-hidden="true"></div>
				</div>
				<div class="line_list_3">
					<ul>
						<li>
							<div class="chk_wrap">
								<span class="checkbox center">
									<input type="radio" id="listChk1" name="listChk"><i aria-hidden="true"></i>
								</span>
								<label for="listChk1" class="inner">
									<div class="info_dl ty2">
										<div class="fz_15 fc_black">김축협(920629 - *******)</div>
										<div class="fc_gray mt10">
											<div>건강/123456785846555</div>
											<div>NH올인원카드</div>
											<div>5421-****-****-1234</div>
										</div>
										<div class="last">
											<span class="fc_blue">이용중</span>
										</div>
									</div>
								</label>
							</div>
							<div class="inner">
								<div class="btn_wrap">
									<div class="flex">
										<a href="#listViewPop" class="button line ui-pop-open">상세보기</a>
										<a href="#" class="button blue">납부카드변경</a>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="chk_wrap">
								<span class="checkbox center">
									<input type="radio" id="listChk2" name="listChk"><i aria-hidden="true"></i>
								</span>
								<label for="listChk2" class="inner">
									<div class="info_dl ty2">
										<div class="fz_15 fc_black">김축협(920629 - *******)</div>
										<div class="fc_gray mt10">
											<div>건강/123456785846555</div>
											<div>NH올인원카드</div>
											<div>5421-****-****-1234</div>
										</div>
										<div class="last">
											<span class="fc_blue">이용중</span>
										</div>
									</div>
								</label>
							</div>
							<div class="inner">
								<div class="btn_wrap">
									<div class="flex">
										<a href="#listViewPop" class="button line ui-pop-open">상세보기</a>
										<a href="#" class="button blue">납부카드변경</a>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="chk_wrap">
								<span class="checkbox center">
									<input type="radio" id="listChk3" name="listChk" disabled><i aria-hidden="true"></i>
								</span>
								<label for="listChk3" class="inner">
									<div class="info_dl ty2">
										<div class="fz_15 fc_black">김축협(920629 - *******)</div>
										<div class="fc_gray mt10">
											<div>건강/123456785846555</div>
											<div>NH올인원카드</div>
											<div>5421-****-****-1234</div>
										</div>
										<div class="last">
											<span class="fc_red">해지완료</span>
										</div>
									</div>
								</label>
							</div>
							<div class="inner">
								<div class="btn_wrap">
									<div class="flex">
										<a href="#listViewPop" class="button line ui-pop-open">상세보기</a>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="no_list mt30">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<div class="txt">신청내역이 없습니다.</div>
				</div>
				<dl class="accordion_list accordion_dl mt30">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">평일 09:00~20:00, <span class="fc_red">토요일, 일요일/공휴일 이용불가</span></li>
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
					<button type="button" class="button h54 blue" disabled>해지</button>
				</div>
			</div>
		</section>
	</div>

	<!-- 팝업 -->
	<div id="listViewPop" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>4대 사회보험료 자동납부 상세내역</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<ul class="list_box_table">
						<li>
							<div class="th">신청인</div>
							<div class="td">김축협</div>
						</li>
						<li>
							<div class="th">카드정보</div>
							<div class="td">
								<div>NH올인원카드</div>
								<div>5421-56**-****-1234</div>
							</div>
						</li>
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
							<div class="th">납부자생년월일</div>
							<div class="td">1900.00.00</div>
						</li>
						<li>
							<div class="th">납부자사업자번호</div>
							<div class="td">00000000</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h54 blue ui-pop-close">확인</a><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
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