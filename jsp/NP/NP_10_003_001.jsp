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
				<h2 class="blind">교육비 자동납부 신청</h2>
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
										<label for="agree1_1" class="lbl">[필수] 교육비 카드 자동이체 이용안내</label>
										<a href="#agreePop1" class="chk_link ui-pop-open"><span class="blind">교육비 카드 자동이체 이용안내 확인하기</span></a>
									</div>
									<div class="checkbox large">
										<input type="checkbox" id="agree1_2"><i aria-hidden="true"></i>
										<label for="agree1_2" class="lbl">[필수] 교육비 카드 자동납부 개인(신용)정보 제공 동의</label>
										<a href="#agreePop2" class="chk_link ui-pop-open"><span class="blind">교육비 카드 자동납부 개인(신용)정보 제공 동의 확인하기</span></a>
									</div>
									<div class="checkbox large">
										<input type="checkbox" id="agree1_3"><i aria-hidden="true"></i>
										<label for="agree1_3" class="lbl">[필수] 교육비 카드 자동납부 개인(신용)정보 필수 수집 · 이용동의</label>
										<a href="#agreePop3" class="chk_link ui-pop-open"><span class="blind">교육비 카드 자동납부 개인(신용)정보 필수 수집 · 이용동의 확인하기</span></a>
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
					<div class="fm_lb">학생 정보</div>
					<div class="fm_cont">
						<div class="tbl">
							<div class="td">
								<div class="input"><input type="text" title="학교명 검색" placeholder="학교명" readonly></div>
							</div>
							<div class="td va_mid w_90">
								<a href="#searchSchoolPop" class="button blue fz_14 block ui-pop-open">학교 검색</a>
							</div>
						</div>
						<div class="tbl mt10">
							<div class="td">
								<div class="input"><input type="text" title="학생식별번호 또는 학생명 검색" placeholder="학생식별번호 또는 학생명" readonly></div>
							</div>
							<div class="td va_mid w_90">
								<a href="#searchStudentPop" class="button blue fz_14 block ui-pop-open">학생 검색</a>
							</div>
						</div>
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

	<!-- 팝업 -->
	<div id="searchSchoolPop" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>아파트 주소 검색</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<div class="txt_list">
						<ul>
							<li class="dot">학교명을 정확히 입력해 주세요.</li>
						</ul>
					</div>
					<div class="gray_info_box blue mt15">
						<div class="fz_13 fc_gray">ex) 학교명 입력: 대진고등학교 &rarr; 대진고</div>
					</div>
					<hr class="hr_line" aria-hidden="true">

					<div class="form_item">
						<label for="schoolName" class="fm_lb">학교명</label>
						<div class="fm_cont">
							<div class="input"><input type="text" id="schoolName" title="학교명" placeholder="학교명 입력"></div>
						</div>
					</div>
					<div class="btn_wrap mt10">
						<div class="flex">
							<a href="#" class="button blue">조회</a>
						</div>
					</div>
					<div class="search_result">
						<div class="total_num_box">총 <strong>1</strong>건</div>
						<div class="line_list_3">
							<ul>
								<li>
									<span class="checkbox center">
										<input type="radio" id="searchSchoolChk1" name="searchSchoolChk"><i aria-hidden="true"></i>
									</span>
									<label for="searchSchoolChk1" class="inner">
										<div class="fz_15 fc_black">대진고등학교(7010146)</div>
										<div class="fc_gray mt10">(018-별시) 서울특별시 노원구 공릉로 62가길 47, 대진고등학교 (하계동)</div>
									</label>
								</li>
								<li>
									<span class="checkbox center">
										<input type="radio" id="searchSchoolChk2" name="searchSchoolChk"><i aria-hidden="true"></i>
									</span>
									<label for="searchSchoolChk2" class="inner">
										<div class="fz_15 fc_black">대진고등학교(7010146)</div>
										<div class="fc_gray mt10">(018-별시) 서울특별시 노원구 공릉로 62가길 47, 대진고등학교 (하계동)</div>
									</label>
								</li>
							</ul>
						</div>
						<div class="btn_more">
							<a href="#" class="button line">더보기 (<strong>20</strong>/25)</a>
						</div>
					</div>
					<!--검색결과 없음-->
					<div class="no_list mt30">
						<i class="i_ico_50 ico_2" aria-hidden="true"></i>
						<div class="txt">검색결과가 없습니다.</div>
					</div>
					<!--//검색결과 없음-->
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<button type="button" class="button h54 blue ui-pop-close" disabled>확인</button><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
					</div>
				</div>
			</div>
		</article>
	</div>

	<div id="searchStudentPop" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>학생 검색</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<div class="txt_list">
						<ul>
							<li class="dot">햑생식별번호를 입력할 경우 식별번호조회 또는 직접입력이 가능합니다.</li>
							<li class="dot">생년월일을 입력 할 경우 8자리를 입력해 주세요.</li>
						</ul>
					</div>
					<hr class="hr_line" aria-hidden="true">
					<div class="fz_15 fc_black">대진고등학교</div>
					<hr class="hr_line ty2" aria-hidden="true">
					<ul class="btn_toggle grid col2 ui-tab-rdo" data-hide="#panel1,#panel2">
						<li>
							<input type="radio" id="cardRdo" name="searchType" value="1" data-show="#panel1" checked>
							<label for="cardRdo"><span>식별번호조회</span></label>
						</li>
						<li>
							<input type="radio" id="phoneRdo" name="searchType" value="2" data-show="#panel2">
							<label for="phoneRdo"><span>직접입력</span></label>
						</li>
					</ul>
					<div id="panel1" class="tab_rdo_panel">
						<div class="form_item">
							<label for="studentName" class="fm_lb">학생명</label>
							<div class="fm_cont">
								<div class="input"><input type="text" id="studentName" maxlength="8" title="학생명 입력" placeholder="학생명 입력"></div>
								<div class="error_txt">학생명를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
							</div>
						</div>
						<div class="form_item">
							<label for="studentBirth" class="fm_lb">생년월일</label>
							<div class="fm_cont">
								<div class="input"><input type="tel" id="studentBirth" maxlength="10" title="생년월일 8자리 입력" placeholder="생년월일 8자리 입력"></div>
								<div class="error_txt">생년월일을 입력해주세요.</div><!-- 에러메세지 입력영역 -->
							</div>
						</div>
					</div>
					<div id="panel2" class="tab_rdo_panel">
						<div class="form_item">
							<label for="studentNum" class="fm_lb">학생식별번호</label>
							<div class="fm_cont">
								<div class="input"><input type="text" id="studentNum" maxlength="8" title="학생식별번호 입력" placeholder="학생식별번호 입력"></div>
								<div class="error_txt">학생식별번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
							</div>
						</div>
					</div>
					<div class="btn_wrap mt10">
						<div class="flex">
							<a href="#" class="button blue">조회</a>
						</div>
					</div>
					<div class="search_result">
						<div class="total_num_box">총 <strong>5</strong>건</div>
						<div class="line_list_3">
							<ul>
								<li>
									<span class="checkbox center">
										<input type="radio" id="searchStudentChk1" name="searchStudentChk"><i aria-hidden="true"></i>
									</span>
									<label for="searchStudentChk1" class="inner">
										<div class="fz_15 fc_black">김농협(01234562221)</div>
										<div class="fc_gray mt10">
											<div>생년월일 1995.05.11</div>
											<div>대진고등학교(경기도 성남시 분당구 분당로 271)</div>
										</div>
									</label>
								</li>
								<li>
									<span class="checkbox center">
										<input type="radio" id="searchStudentChk2" name="searchStudentChk"><i aria-hidden="true"></i>
									</span>
									<label for="searchStudentChk2" class="inner">
										<div class="fz_15 fc_black">김농협(01234562221)</div>
										<div class="fc_gray mt10">
											<div>생년월일 1995.05.11</div>
											<div>대진고등학교(경기도 성남시 분당구 분당로 271)</div>
										</div>
									</label>
								</li>
							</ul>
						</div>
						<div class="btn_more">
							<a href="#" class="button line">더보기 (<strong>20</strong>/25)</a>
						</div>
					</div>
					<!--검색결과 없음-->
					<div class="no_list mt30">
						<i class="i_ico_50 ico_2" aria-hidden="true"></i>
						<div class="txt">검색결과가 없습니다.</div>
					</div>
					<!--//검색결과 없음-->
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<button type="button" class="button h54 blue ui-pop-close" disabled>확인</button><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- //팝업 -->

	<!-- 약관팝업 -->
	<div id="agreePop1" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>교육비 카드 자동이체 이용안내</h1>
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
				<h1>교육비 카드 자동납부 개인(신용)정보 제공 동의</h1>
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
				<h1>교육비 카드 자동납부 개인(신용)정보 필수 수집 · 이용동의</h1>
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