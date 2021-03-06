<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('NH신용Manager');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container">
		<section id="contents">
			<div class="first_blue_box">
				<div class="bg" aria-hidden="ture" data-animation="fadeInRight"></div>
				<div class="inner">
					<h2 class="tit">소중한 신용정보보호를 위한<br><strong class="fc_blue">NH신용Manager 서비스</strong></h2>
					<div class="mt10">코리아크레딧뷰로(주)와 제휴를 통해 <br>제공되는 서비스 입니다.</div>
					<div class="link mt25">
						<a href="#" class="btn_link">서비스 바로가기<i class="bt_ic_arr" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
			<div class="tabmenu">
				<ul>
					<li class="active"><a href="#" title="현재선택">서비스안내 및 신청</a></li>
					<li><a href="#">변경/해지</a></li>
				</ul>
				<div class="tab_line" aria-hidden="true"></div>
			</div>
			<div class="section">
				<h3 class="tit_h2">NH신용 Manager 서비스</h3>
				<p class="fz_15 fc_black mt20">
					회원님의 카드사용정보내역, 신용정보변동내역을
					알려드릴 뿐 아니라 신용카드 도난, 분실, 위조 등
					타인에 의한 부정사용, 명의도용 사고로부터 보호해
					드립니다.
				</p>
				<div class="gray_info_box mt20">
					<p class="caution_txt fz_13">본 서비스는 NH카드 VIP 회원님들께 무료로 제공되는 서비스입니다.</p>
				</div>
				<ul class="vip_freeservice mt15">
					<li>
						<div class="complete_wrap">
						<i class="i_ico_50b ico_1" aria-hidden="true"></i>
						<h2 class="tit_h2">카드승인 SMS</h2>
						<p class="txt">카드 승인 발생시<br>SMS 알림</p>
						</div>
					</li>
					<li>
						<div class="complete_wrap">
						<i class="i_ico_50b ico_2" aria-hidden="true"></i>
						<h2 class="tit_h2">종합신용보고서</h2>
						<p class="txt">고객님의<br>신용상태 확인</p>
						</div>
					</li>
					<li>
						<div class="complete_wrap">
						<i class="i_ico_50b ico_3" aria-hidden="true"></i>
						<h2 class="tit_h2">신용변동알람</h2>
						<p class="txt">신용 변동 발생시<br>SMS 알림</p>
						</div>
					</li>
					<li>
						<div class="complete_wrap">
						<i class="i_ico_50b ico_4" aria-hidden="true"></i>
						<h2 class="tit_h2">금융명의보호</h2>
						<p class="txt">불법확인 신용정보<br>조회차단</p>
						</div>
					</li>
					<li>
						<div class="complete_wrap">
						<i class="i_ico_50b ico_5" aria-hidden="true"></i>
						<h2 class="tit_h2">사고예방알람</h2>
						<p class="txt">신용카드 분실/도난 등<br>위험으로부터 카드정보보호</p>
						</div>
					</li>
					<li>
						<div class="complete_wrap">
						<i class="i_ico_50b ico_6" aria-hidden="true"></i>
						<h2 class="tit_h2">카드정보유출확인</h2>
						<p class="txt">국내/외 카드정보유출<br>
							확인 및 사고예방조치</p>
						</div>
					</li>
					<li>
						<div class="complete_wrap">
						<i class="i_ico_50b ico_7" aria-hidden="true"></i>
						<h2 class="tit_h2">인터넷 명의보호</h2>
						<p class="txt">불법확인 인터넷 상<br> 
							주민번호 활용 차단</p>
						</div>
					</li>
				</ul>
				<div class="tit_h2">
					<div><h2 class="tit">신청정보</h2></div>
					<div>
						<a href="#" class="btn_link">정보변경<i class="bt_ic_arr" aria-hidden="true"></i></a>
					</div>
				</div>
				<div class="form_item">
					<label for="phoneNum" class="fm_lb">휴대폰번호</label>
					<div class="fm_cont">
						<div class="input"><input type="tel" id="phoneNum" maxlength="8" title="휴대폰번호 나머지 7~8자리 입력" placeholder="&prime;-&prime; 없이 입력"></div>
						<div class="error_txt">휴대폰번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
					</div>
				</div>
				<div class="form_item">
					<label for="mail1" class="fm_lb">이메일</label>
					<div class="fm_cont email_form">
						<div class="input"><input type="text" id="mail1" title="이메일 입력" placeholder="이메일주소 입력"></div>
						<div class="error_txt">이메일를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
					</div>
				</div>
				<div class="chk_list mt30">
					<div class="chk_item">
						<div class="checkbox large">
							<input type="checkbox" id="agree1"><i aria-hidden="true"></i>
							<label for="agree1" class="lbl">전체동의</label>
							<a href="#" class="chk_link toggle open"><span class="blind">상세약관목록 확인하기</span></a>
						</div>
						<div class="chk_child">
							<div class="checkbox large">
								<input type="checkbox" id="agree1_1"><i aria-hidden="true"></i>
								<label for="agree1_1" class="lbl">[필수] 서비스 이용약관 동의</label>
								<a href="#agreePop1" class="chk_link ui-pop-open"><span class="blind">서비스 이용약관 동의 확인하기</span></a>
							</div>
							<div class="checkbox large">
								<input type="checkbox" id="agree1_2"><i aria-hidden="true"></i>
								<label for="agree1_2" class="lbl">[필수] 개인정보의 제공</label>
								<a href="#agreePop2" class="chk_link ui-pop-open"><span class="blind">개인정보의 제공 동의 확인하기</span></a>
							</div>
							<div class="checkbox large">
								<input type="checkbox" id="agree1_3"><i aria-hidden="true"></i>
								<label for="agree1_3" class="lbl">[필수] 개인정보 수집 및 허용</label>
								<a href="#agreePop3" class="chk_link ui-pop-open"><span class="blind">개인정보 수집 및 허용 동의 확인하기</span></a>
							</div>
							<div class="checkbox large">
								<input type="checkbox" id="agree1_4"><i aria-hidden="true"></i>
								<label for="agree1_4" class="lbl">[필수] 고유식별정보 수집 및 허용</label>
								<a href="#agreePop4" class="chk_link ui-pop-open"><span class="blind">고유식별정보 수집 및 허용 확인하기</span></a>
							</div>
						</div>
					</div>
				</div>
				<div class="btn_wrap mt60">
					<div class="flex">
						<a href="#" class="button line blue">취소</a>
						<a href="#" class="button blue">다음</a>
					</div>
				</div>

				<dl class="accordion_list accordion_dl mt25">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">VIP 회원이 아닌 경우 월 800원의 이용료가 발생합니다.</li>
								<li class="dot">차기 VIP회원에서 미선정 시 서비스가 자동으로 해지 됩니다. </li>
							</ul>
						</div>
					</dd>
				</dl>
			</div>
		</section>
	</div>

	<!-- 약관팝업 -->
	<div id="agreePop1" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>서비스 이용약관</h1>
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
				<h1>개인정보의 제공</h1>
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
				<h1>개인정보 수집 및 허용</h1>
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

	<div id="agreePop4" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>고유식별정보 수집 및 허용</h1>
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

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>