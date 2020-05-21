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
				<h2 class="blind">주택임대료 자동납부 신청</h2>
				<div class="form_item mt0">
					<div class="fm_lb">약관동의</div>
					<div class="fm_cont">
						<div class="chk_list">
							<div class="chk_item">
								<div class="checkbox large">
									<input type="checkbox" id="agree1"><i aria-hidden="true"></i>
									<label for="agree1" class="lbl">전체동의</label>
									<a href="#" class="chk_link toggle open"><span class="blind">상세약관목록 확인하기</span></a>
								</div>
								<div class="chk_child">
									<div class="checkbox large">
										<input type="checkbox" id="agree1_1"><i aria-hidden="true"></i>
										<label for="agree1_1" class="lbl">[필수] 주택 임대료 카드 자동납부 이용안내</label>
										<a href="#agreePop1" class="chk_link ui-pop-open"><span class="blind">주택 임대료 카드 자동납부 이용안내 확인하기</span></a>
									</div>
									<div class="checkbox large">
										<input type="checkbox" id="agree1_2"><i aria-hidden="true"></i>
										<label for="agree1_2" class="lbl">[필수] 주택 임대료 자동납부 개인(신용)정보 제공 동의</label>
										<a href="#agreePop2" class="chk_link ui-pop-open"><span class="blind">주택 임대료 자동납부 개인(신용)정보 제공 동의 확인하기</span></a>
									</div>
									<div class="checkbox large">
										<input type="checkbox" id="agree1_3"><i aria-hidden="true"></i>
										<label for="agree1_3" class="lbl">[필수] 주택 임대료 자동납부 개인(신용)정보 필수 수집 · 이용동의</label>
										<a href="#agreePop3" class="chk_link ui-pop-open"><span class="blind">주택 임대료 자동납부 개인(신용)정보 필수 수집 · 이용동의 확인하기</span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="form_item">
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
					<label for="userNumber" class="fm_lb">납부자번호 조회</label>
					<div class="fm_cont">
						<div class="tbl">
							<div class="td">
								<div class="input"><input type="text" id="userNumber" title="납부자번호 입력" placeholder="납부자번호 입력"></div>
							</div>
							<div class="td va_mid w_90">
								<a href="#" class="button blue fz_14 block">확인</a>
							</div>
						</div>
						<div class="help_txt">납부자번호는 임대료 고지서 또는 임대사업자 고객센터에 연락하여 확인하실 수 있습니다.</div>
						<div class="error_txt">납부자번호를 입력해주세요.</div>
					</div>
				</div>
				<div>
					<h3 class="tit_h4">납부자 정보</h3>
					<ul class="list_box_table mt15">
						<li>
							<div class="th">성명</div>
							<div class="td">김농협</div>
						</li>
						<li class="line">
							<div class="th">임대사업자구분</div>
							<div class="td">SH</div>
						</li>
						<li>
							<div class="th">단지명</div>
							<div class="td">전세임대</div>
						</li>
						<li>
							<div class="th">납부자번호</div>
							<div class="td">0000000000000000</div>
						</li>
						<li>
							<div class="th">신청주소</div>
							<div class="td">(06204) 경기도 성남시 분당구 중앙공원로 432</div>
						</li>
						<li>
							<div class="th">동/호/실</div>
							<div class="td">101/101/000</div>
						</li>
						<li>
							<div class="th">납부마감일</div>
							<div class="td">매월 말일</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<button type="button" class="button h54 blue" disabled>신청</button>
				</div>
			</div>
		</section>
	</div>

	<!-- 약관팝업 -->
	<div id="agreePop1" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>주택 임대료 카드 자동납부 이용안내</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<div class="terms_cont"><!-- 2020-05-21: terms_cont로 클래스 변경 -->
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
					</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h48 blue ui-pop-close">확인</a>
					</div>
				</div>
			</div>
		</article>
	</div>

	<div id="agreePop2" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>주택 임대료 자동납부 개인(신용)정보 제공 동의</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<div class="terms_cont"><!-- 2020-05-21: terms_cont로 클래스 변경 -->
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
					</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h48 blue ui-pop-close">확인</a>
					</div>
				</div>
			</div>
		</article>
	</div>
	
	<div id="agreePop3" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>주택 임대료 자동납부 개인(신용)정보 필수 수집 · 이용동의</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<div class="terms_cont"><!-- 2020-05-21: terms_cont로 클래스 변경 -->
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
						우선 해당영역에 기존 관리자에 등록된 약관 불러오시면 됩니다.<br>
						추후 스타일 별도로 잡을 예정<br>
						<br>
					</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h48 blue ui-pop-close">확인</a>
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- //약관팝업 -->

	<!--카드선택 팝업-->
	<div data-include-html="../include/pop/cardSelect.html"></div>
	<!--//카드선택 팝업-->

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>