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
			<h2 class="blind">아파트관리비 자동납부 조회</h2>
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
										<div class="fz_15 fc_black">32245 101동 101호</div>
										<div class="fc_gray mt10">
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
										<div class="fz_15 fc_black">32245 101동 101호</div>
										<div class="fc_gray mt10">
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
										<div class="fz_15 fc_black">32245 101동 101호</div>
										<div class="fc_gray mt10">
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
								<li class="dot">서비스 이용시간: 평일 08:00~21:00, 토요일 08:00~21:00, <span class="fc_red">일요일/공휴일 이용불가</span></li>
							</ul>
							<div class="mt15"><strong class="fc_black">■ 대상카드 : 개인 신용카드 본인회원</strong></div>
							<div class="caution_txt">기업카드, 체크카드, 기프트카드, 가족카드, 후불하이패스카드, NH올원Syrup(시럽)카드 등 일부 신용카드 제외됩니다.</div>
								
							<div class="mt15"><strong class="fc_black">■ 안내 사항</strong></div>
							<ul>
								<li class="dot fc_blue">주소 변경이 필요한 경우, 기존 자동납부서비스 해지 후 신청해 주시기 바랍니다.</li>
								<li class="dot fc_blue">기존 신청건에 대한 해지는 당월 도래하는 납부예정일의 6영업일전 까지만 해지 신청이 가능합니다.</li>
								<li class="dot">카드번호 변경 시, 변경 된 최종 카드번호로 납부 예정일에 계속 자동납부처리 됩니다.</li>
								<li class="dot">아파트관리비의 전월 이용실적 산정, 각종 리워드(포인트 적립, 할인 등) 제공은 해당카드 기준에 따라 상이하며, 소득공제는 제외 됩니다.</li>
								<li class="dot">등록된 카드가 거래정지 및 한도부족 등 사유로 관리비 승인이 거절될 경우 해당월의 관리비는 아파트 관리사무소에 별도 납부하시기 바랍니다.</li>
								<li class="dot fc_red">등록된 카드가 분실/해지등으로 거래가 정지된 경우, 아파트관리비가 정상 승인되지 않아 관리비가 연체 될 수 있습니다. 납부카드 변경/해지 후 신규 신청을 진행해 주시기바랍니다.</li>
								<li class="dot fc_blue">등록된 카드의 카드재발급(훼손,도난/분실,갱신) 사유로 카드번호가 변경된 경우에는 변경된 카드번호로 계속하여 자동납부가 진행됩니다. <span class="fc_red">변경된 카드로 승인을 원하지 않을 경우, 사전에 자동납부 서비스를 해지하여 주시기 바랍니다.</span></li>
								<li class="dot">납부해야 할 아파트관리비에 대해서 아파트 관리사무소가 지정한 일자(납부마감일 4영업일)에, 신용카드로 승인되어 납부됩니다.</li>
								<li class="dot">아파트 관리사무소에서 당사로 지정한 일자(납부마감일 기준 4영업일)에 승인 요청 시, <span class="fc_red">승인이 되지 않아 관리비가 결제되지 않을 경우 아파트 관리사무소에서 연체에 따른「가산금」이 부과될 수 있습니다.</span></li>
								<li class="dot">아파트관리비 납부금액은 수납기관인 관리사무소에서 납부요청한 금액을 기준으로 승인/청구됩니다. 아파트관리비 최초 납부개시되는 관리비에는 당월 정상 납부금액과 과거 미납금액이 있는 경우 동 미납금액이 포함되어 결제됩니다.
									<div class="caution_txt">자세한 납부금액에 대한 문의는 해당 아파트 관리사무소로 연락해 주시기 바랍니다.</div></li>
									
								<li class="dot">아파트관리비 카드 자동납부와 관련하여 별도로 정하지 아니한 사항에 대하여는 NH채움(비씨)신용카드 개인회원표준약관 및 NH농협카드 표준전자금융거래 기본약관을 적용합니다.</li>
								<li class="dot fc_blue">신청,해지,변경 시 안내문자는 농협에 등록된 본인회원의 휴대전화번호로 발송 되오니 사전에 연락처 확인바랍니다.</li>
								<li class="dot">고객정보 변경 방법 : <span class="fc_red">MYNH &gt; 회원정보 &gt; 회원기본정보 참조</span></li>
								<li class="dot">일부 아파트단지의 경우 제휴사의 사정으로 신청되지 않을 수 있습니다. 이점 양해 부탁드립니다.</li>
								<li class="dot">문의처 : NH농협카드 고객상담센터 : ☎ 1644-4000</li>
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
				<h1>아파트관리비 자동납부 상세내역</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
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