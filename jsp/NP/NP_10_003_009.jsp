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
			<h2 class="blind">교육비 자동납부 조회</h2>
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
										<div class="fz_15 fc_black">김축협(123456785846555)</div>
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
										<div class="fz_15 fc_black">김축협(123456785846555)</div>
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
										<div class="fz_15 fc_black">김축협(123456785846555)</div>
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
								<li class="dot">평일/토요일: 08:00~20:00 , <span class="fc_red">일요일/공휴일 이용불가</span></li>
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
					<button type="button" class="button h54 blue" disabled>해지</button>
				</div>
			</div>
		</section>
	</div>

	<!-- 팝업 -->
	<div id="listViewPop" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>교육비 자동납부 상세내역</h1>
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