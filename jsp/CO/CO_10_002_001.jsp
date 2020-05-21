<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('회원가입');

		//Layer.alert('연속된 문자 또는 동일한 문자는 사용할 수 없습니다.'); //비밀번호 사용불가 알럿
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top_close.jsp" %>
	<div id="container">
		<section id="contents">
			<div class="step_wrap">
				<h2 class="step_tit">STEP2. 약관동의 및 정보입력</h2>
				<ol class="step_state">
					<li>1<span class="blind">단계</span></li>
					<li class="on">2<span class="blind">단계(현재단계)</span></li>
				</ol>
			</div>
			<div class="section">
				<div class="form_item">
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
										<label for="agree1_1" class="lbl">전자금융거래 기본약관</label>
										<a href="#joinAgreePop1" class="chk_link ui-pop-open"><span class="blind">전자금융거래 기본약관 확인하기</span></a>
									</div>
									<div class="checkbox large">
										<input type="checkbox" id="agree1_2"><i aria-hidden="true"></i>
										<label for="agree1_2" class="lbl">온라인 회원 이용약관</label>
										<a href="#joinAgreePop2" class="chk_link ui-pop-open"><span class="blind">온라인 회원 이용약관 확인하기</span></a>
									</div>
									<div class="checkbox large">
										<input type="checkbox" id="agree1_3"><i aria-hidden="true"></i>
										<label for="agree1_3" class="lbl">개인정보 수집 및 이용동의</label>
										<a href="#joinAgreePop3" class="chk_link ui-pop-open"><span class="blind">개인정보 수집 및 이용동의 확인하기</span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="form_item">
					<label for="join_id" class="fm_lb">아이디</label>
					<div class="fm_cont">
						<div class="tbl">
							<div class="td">
								<div class="input"><input type="text" id="join_id" title="아이디" placeholder="아이디 입력"></div>
							</div>
							<div class="td va_mid fm_btn">
								<a href="#" class="button blue">중복확인</a>
							</div>
						</div>
					</div>
				</div>
				<!-- 기존ID로 회원가입 할 경우-->
				<!-- <div class="form_item">
					<label for="join_id2" class="fm_lb">기존 아이디</label>
					<div class="fm_cont">
					<div class="fm_cont">
						<div class="tbl">
							<div class="td">
								<div class="input"><input type="text" id="join_id2" title="기존 아이디" value="abcde" readonly></div>
							</div>
						</div>
					</div>
				</div> -->
				<!-- //기존ID로 회원가입 할 경우-->
				<div class="form_item">
					<label for="pwd" class="fm_lb">비밀번호</label>
					<div class="fm_cont">
						<div class="input"><input type="password" id="pwd" placeholder="비밀번호 입력"></div>
						<div class="help_txt">영문+숫자+특수문자10~15자리, 사용가능 특수문자 ! ,@,#, $,%,^,&,*,(,)</div>
					</div>
				</div>
				<div class="form_item">
					<label for="pwd2" class="fm_lb">비밀번호 확인</label>
					<div class="fm_cont">
						<div class="input"><input type="password" id="pwd2" placeholder="비밀번호 확인 입력"></div>
						<div class="error_txt">비밀번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
					</div>
				</div>

				<dl class="accordion_list accordion_dl">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">아이디는 영문 , 숫자 6 ~ 12자리를 입력하세요.</li>
								<li class="dot">비밀번호는 영문+숫자+특수문자 10~15자리로 입력하세요.</li>
								<li class="dot">비밀번호 생성규칙
									<ul>
										<li class="dash">3자 이상 중복되는 영문/숫자/특수문자 사용불가<br />ex) aaa,111,@@@,a1@a1@a1@</li>
										<li class="dash">3자 이상 연속된 영문/숫자 사용불가<br />ex) 123,456,abc,def</li>
										<li class="dash">사용 가능한 특수문자 ! ,@,#, $,%,^,&,*,(,)</li>
									</ul>
								</li>
								<li class="dot">개인정보는 금융감독원 보안기준에 따른 보안시스템에 의해 보호됩니다.</li>
							</ul>
						</div>
					</dd>
				</dl>
				<div class="btn_wrap bottom_fixed">
					<div class="flex">
						<!--<button type="button" class="button h54 blue" disabled>다음</button>--><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
						<button type="button" class="button h54 blue" onclick="Layer.open('#userCertifyPop');">다음</button>
					</div>
				</div>
			</div>
		</section>
	</div>

	<!-- 본인인증팝업 -->
	<%@ include file="../include/certify/user.jsp" %>
	<%@ include file="../include/certify/pop_cvcInfo.jsp" %>
	<!-- //본인인증팝업 -->

	<!-- 약관팝업 -->
	<div id="joinAgreePop1" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>전자금융거래 기본약관</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<div class="rule_wrap">
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
						<a href="#" class="button h54 blue ui-pop-close">확인</a><!-- 2020-05-12: 클래스 변경-->
					</div>
				</div>
			</div>
		</article>
	</div>

	<div id="joinAgreePop2" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>온라인 회원 이용약관</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<div class="rule_wrap">
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
						<a href="#" class="button h54 blue ui-pop-close">확인</a><!-- 2020-05-12: 클래스 변경-->
					</div>
				</div>
			</div>
		</article>
	</div>
	
	<div id="joinAgreePop3" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>개인정보 수집 및 이용동의</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont">
				<div class="section">
					<div class="rule_wrap">
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
						<a href="#" class="button h54 blue ui-pop-close">확인</a><!-- 2020-05-12: 클래스 변경-->
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