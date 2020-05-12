<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	/* 일부 탭을 안쓸경우(예시로 NH농협카드 안쓴다면)
	$('[href=#tabCertify2]').closest('li').remove();	//탭버튼을 갖고 있는 li까지 없애고
	buttonUI.tabNavi();									//해당 함수 실행~ 그래야 탭영역 swipe가 정상적으로 실행
	*/

	//Layer.alert('인증번호가 발송되었습니다.');
	//Layer.alert('존재하지 않는 카드번호 입니다.<br>확인 후 다시 입력해 주세요.');
	//Layer.alert('성명이 일치하지 않습니다.<br>확인 후 다시 입력해 주세요.');
	//Layer.alert('주민등록번호가 일치하지 않습니다.<br>확인 후 다시 입력해 주세요.');
	//Layer.alert('성명이 일치하지 않습니다.<br>확인 후 다시 입력해 주세요.');

	//본인인증 잠금번호 불일치 팝업
	//Layer.open('#ctfLockPwdChkPop');

	//본인인증 잠금번호 5회오류 팝업
	//Layer.open('#ctfLockPwdFailPop');

	//본인인증 PIN번호 불일치 팝업
	//Layer.open('#ctfPinNumberChkPop');

	//본인인증 PIN번호 5회오류 팝업
	//Layer.open('#ctfPinNumberFailPop');

	//지문인식 안내팝업
	//Layer.open('#ctfFingerGuidePop');

	//페이스ID 안내팝업
	//Layer.open('#ctfFaceIdGuidePop');
</script>
<div id="userCertifyPop" class="popup full" role="dialog" aria-hidden="true">
	<article class="pop_wrap">
		<div class="pop_head">
			<h1>본인인증</h1>
			<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
		</div>
		<div class="pop_cont">
			<div class="tab_wrap">
				<div class="tabmenu ui-tab">
					<ul>
						<li><a href="#tabCertify1"><span>휴대폰</span></a></li>
						<li><a href="#tabCertify2"><span>NH농협카드</span></a></li>
						<li><a href="#tabCertify3"><span>공인인증서</span></a></li>
						<li><a href="#tabCertify4"><span>브라우저인증서</span></a></li><!--모바일웹 노출-->
						<li><a href="#tabCertify5"><span>카드본인인증</span></a></li>
						<li><a href="#tabCertify6"><span>잠금번호</span></a></li><!--스마트앱 노출-->
						<li><a href="#tabCertify7"><span>PIN번호</span></a></li><!--모바일웹 노출-->
						<li><a href="#tabCertify8"><span>지문</span></a></li><!--스마트앱 노출-->
						<li><a href="#tabCertify9"><span>Face ID</span></a></li><!--스마트앱 노출-->
						<li><a href="#tabCertify10"><span>올원페이</span></a></li>
					</ul>
				</div>
			</div>
			<div class="section">
				<!--휴대폰-->
				<div id="tabCertify1" class="tab_panel">
					<div class="form_item">
						<label for="ctfPhoneName" class="fm_lb">성명</label>
						<div class="fm_cont">
							<div class="input"><input type="text" id="ctfPhoneName" placeholder="성명 입력"></div>
							<div class="error_txt">이름을 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<div class="form_item">
						<label for="ctfPhoneJumin1" class="fm_lb">주민등록번호</label>
						<div class="fm_cont">
							<div class="tbl">
								<div class="td">
									<div class="input"><input type="tel" id="ctfPhoneJumin1" maxlength="6" title="주민등록번호 앞6자리 입력" placeholder="앞 6자리"></div>
								</div>
								<div class="td dash">-</div>
								<div class="td w_80">
									<div class="input"><input type="tel" id="ctfPhoneJumin2" class="t_center no_del" maxlength="1" title="주민등록번호 뒤7자리 중 첫번째자리 입력" placeholder="뒤 1자리"></div>
								</div>
								<div class="td w_100 fc_gray3">●●●●●●</div>
							</div>
							<div class="error_txt">주민등록번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<div class="form_item">
						<div class="fm_lb">휴대폰 본인확인 약관동의</div>
						<div class="fm_cont">
							<div class="chk_list">
								<div class="chk_item">
									<div class="checkbox large">
										<input type="checkbox" id="ctfPhoneAgree1"><i aria-hidden="true"></i>
										<label for="ctfPhoneAgree1" class="lbl">전체동의</label>
										<a href="#" class="chk_link toggle open"><span class="blind">상세약관목록 확인하기</span></a>
									</div>
									<div class="chk_child">
										<div class="checkbox large">
											<input type="checkbox" id="ctfPhoneAgree1_1"><i aria-hidden="true"></i>
											<label for="ctfPhoneAgree1_1" class="lbl">[필수] 고유식별정보의 수집이용에 대한 동의</label>
											<a href="#ctfAgreePop1" class="chk_link ui-pop-open"><span class="blind">고유식별정보의 수집이용에 대한 동의 확인하기</span></a>
										</div>
										<div class="checkbox large">
											<input type="checkbox" id="ctfPhoneAgree1_2"><i aria-hidden="true"></i>
											<label for="ctfPhoneAgree1_2" class="lbl">[필수] 개인정보 수집 이용 제공동의</label>
											<a href="#ctfAgreePop2" class="chk_link ui-pop-open"><span class="blind">개인정보 수집 이용 제공동의 확인하기</span></a>
										</div>
										<div class="checkbox large">
											<input type="checkbox" id="ctfPhoneAgree1_3"><i aria-hidden="true"></i>
											<label for="ctfPhoneAgree1_3" class="lbl">[필수] 통신사 이용약관 동의</label>
											<a href="#ctfAgreePop3" class="chk_link ui-pop-open"><span class="blind">통신사 이용약관 동의</span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form_item">
							<div class="fm_lb">휴대폰인증</div>
							<div class="fm_cont phone">
								<ul class="btn_toggle grid col2 row2">
									<li>
										<input type="radio" id="ctfPhoneComSKT" name="ctfPhoneCom">
										<label for="ctfPhoneComSKT">SKT</label>
									</li>
									<li>
										<input type="radio" id="ctfPhoneComKT" name="ctfPhoneCom">
										<label for="ctfPhoneComKT">KT</label>
									</li>
									<li>
										<input type="radio" id="ctfPhoneComLG" name="ctfPhoneCom">
										<label for="ctfPhoneComLG">LGU+</label>
									</li>
									<li class="in_sel">
										<input type="radio" id="ctfPhoneComETC" name="ctfPhoneCom">
										<label for="ctfPhoneComETC">알뜰폰</label>
										<div class="select">
											<select name="" id="ctfPhoneComETCSel" title="알뜰폰 통신사 선택">
												<option value="">알뜰폰</option>
												<option value="1">SKT 알뜰폰</option>
												<option value="2">KT 알뜰폰</option>
												<option value="3">LGU+ 알뜰폰</option>
											</select>
										</div>
									</li>
								</ul>
								<div class="tbl mt10">
									<div class="td">
										<div class="input"><input type="tel" id="ctfPhoneNumber" title="휴대폰번호 10~11자리 숫자만 입력" placeholder="&prime;-&prime; 없이 입력"></div>
									</div>
									<div class="td va_mid w_114">
										<a href="#" class="button line blue fz_14">인증번호 전송</a>
										<!-- <a href="#" class="button line blue">인증번호 재전송</a> -->
									</div>
								</div>
								<div class="error_txt">연락처를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
							</div>
						</div>
						<div class="form_item">
							<label for="ctfPhoneCertifyNum" class="fm_lb">인증번호</label>
							<div class="fm_cont phone">
								<div class="tbl add_time_tbl mt10">
									<div class="td">
										<div class="input add_time">
											<input type="tel" id="ctfPhoneCertifyNum" title="인증번호 6자리 입력" placeholder="인증번호 6자리 입력" maxlength="6">
											<span class="time">01:45</span>
										</div>
									</div>
									<div class="td">
										<a href="#" class="button blue fz_14">확인</a>
										<a href="#" class="button disabled fz_14">시간연장</a>
									</div>
								</div>
								<div class="error_txt">인증번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
							</div>
						</div>
					</div>

					<div class="btn_wrap bottom_fixed">
						<div class="flex">
							<button type="button" class="button h48 blue" disabled>다음</button><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
						</div>
					</div>
				</div>

				<!--NH농협카드-->
				<div id="tabCertify2" class="tab_panel">
					<div class="form_item">
						<label for="ctfNhCardName" class="fm_lb">성명</label>
						<div class="fm_cont">
							<div class="input">
								<input type="text" id="ctfNhCardName" title="성명" placeholder="성명 입력">
							</div>
						</div>
					</div>
					<div class="form_item">
						<label for="ctfNhCardJumin1" class="fm_lb">주민등록번호</label>
						<div class="fm_cont">
							<div class="tbl">
								<div class="td">
									<div class="input"><input type="tel" id="ctfNhCardJumin1" maxlength="6" title="주민등록번호 앞6자리 입력" placeholder="앞 6자리"></div>
								</div>
								<div class="td dash">-</div>
								<div class="td w_80">
									<div class="input"><input type="tel" id="ctfNhCardJumin2" class="t_center no_del" maxlength="1" title="주민등록번호 뒤7자리 중 첫번째자리 입력" placeholder="뒤 1자리"></div>
								</div>
								<div class="td w_100 fc_gray3">●●●●●●</div>
							</div>
							<div class="error_txt">주민등록번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<div class="form_item">
						<label for="ctfNhCardNumber" class="fm_lb">카드번호</label>
						<div class="fm_cont">
							<div class="tbl">
								<div class="td">
									<div class="input"><input type="tel" id="ctfNhCardNumber" class="no_del" maxlength="16" title="카드번호" placeholder="&prime;-&prime; 없이 16자리 입력"></div>
								</div>
							</div>
							<div class="error_txt">카드번호를 정확하게 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<div class="form_item">
						<label for="ctfNhCardDate1" class="fm_lb">유효기간</label>
						<div class="fm_cont">
							<div class="tbl">
								<div class="td">
									<div class="input"><input type="tel" id="ctfNhCardDate1" maxlength="2" placeholder="월(MM)" title="유효기간 월2자리 입력"></div>
								</div>
								<div class="td dash">/</div>
								<div class="td">
									<div class="input"><input type="tel" id="ctfNhCardDate2" maxlength="4" placeholder="년도(YY)" title="유효기간 년4자리 입력"></div>
								</div>
							</div>
							<div class="error_txt">유효기간을 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<div class="form_item">
						<div class="fm_lb"><label for="ctfNhCvcNumber">카드고유확인번호</label> <a href="#cvcInfoPop" class="tooltip_btn ui-pop-open">자세한 내용 확인</a></div>
						<div class="fm_cont">
							<div class="input">
								<input type="tel" id="ctfNhCvcNumber" maxlength="3" placeholder="숫자 3자리 입력" title="카드고유확인번호 3자리 입력">
							</div>
							<div class="error_txt">카드고유확인번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<div class="form_item">
						<label for="ctfNhCardPwd" class="fm_lb">카드비밀번호</label>
						<div class="fm_cont">
							<div class="tbl">
								<div class="td w_80">
									<div class="input"><input type="password" id="ctfNhCardPwd" class="t_center" placeholder="앞 2자리" title="카드 비밀번호 앞 2자리 입력" maxlength="2"></div>
								</div>
								<div class="td fc_gray3" aria-hidden="true">● ●</div>
							</div>
							<div class="error_txt">비밀번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>

					<div class="btn_wrap bottom_fixed">
						<div class="flex">
							<button type="button" class="button h48 blue" disabled>다음</button><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
						</div>
					</div>
				</div>

				<!--공인인증서-->
				<div id="tabCertify3" class="tab_panel">
					<h2 class="tit_h2">기본정보</h2>
					<div class="form_item mt0">
						<label for="ctfPublicName" class="fm_lb">성명</label>
						<div class="fm_cont">
							<div class="input"><input type="text" id="ctfPublicName" placeholder="성명 입력"></div>
							<div class="error_txt">이름을 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<div class="form_item">
						<label for="jumin7" class="fm_lb">주민등록번호</label>
						<div class="fm_cont">
							<div class="tbl">
								<div class="td">
									<div class="input"><input type="tel" id="ctfPublicJumin1" maxlength="6" title="주민등록번호 앞6자리 입력" placeholder="앞 6자리"></div>
								</div>
								<div class="td dash">-</div>
								<div class="td w_80">
									<div class="input"><input type="tel" id="ctfPublicJumin2" class="t_center no_del" maxlength="1" title="주민등록번호 뒤7자리 중 첫번째자리 입력" placeholder="뒤 1자리"></div>
								</div>
								<div class="td w_100 fc_gray3">●●●●●●</div>
							</div>
							<div class="error_txt">주민등록번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<hr class="hr_line" aria-hidden="true">
					<div class="ico_box_wrap">
						<i class="i_ico_88 ico_7" aria-hidden="true"></i>
						<p class="txt only">공인인증서로 본인인증을 진행합니다.<br>[공인인증서 인증] 버튼을 눌러주세요.</p>
					</div>
					<div class="btn_wrap">
						<div class="flex">
							<a href="#" class="button blue" role="button">공인인증서 인증</a>
						</div>
						<div class="t_center mt17">
							<a href="#" class="btn_link2" role="button">공인인증서 등록</a>
						</div>
					</div>
				</div>

				<!--브라우저인증서(모바일웹)-->
				<div id="tabCertify4" class="tab_panel">
					<h2 class="tit_h2">기본정보</h2>
					<div class="form_item mt0">
						<label for="ctfBrowserName" class="fm_lb">성명</label>
						<div class="fm_cont">
							<div class="input"><input type="text" id="ctfBrowserName" placeholder="성명 입력"></div>
							<div class="error_txt">이름을 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<div class="form_item">
						<label for="ctfBrowserNameJumin1" class="fm_lb">주민등록번호</label>
						<div class="fm_cont">
							<div class="tbl">
								<div class="td">
									<div class="input"><input type="tel" id="ctfBrowserNameJumin1" maxlength="6" title="주민등록번호 앞6자리 입력" placeholder="앞 6자리"></div>
								</div>
								<div class="td dash">-</div>
								<div class="td w_80">
									<div class="input"><input type="tel" id="ctfBrowserNameJumin2" class="t_center no_del" maxlength="1" title="주민등록번호 뒤7자리 중 첫번째자리 입력" placeholder="뒤 1자리"></div>
								</div>
								<div class="td w_100 fc_gray3">●●●●●●</div>
							</div>
							<div class="error_txt">주민등록번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<hr class="hr_line" aria-hidden="true">
					<div class="ico_box_wrap">
						<i class="i_ico_88 ico_8" aria-hidden="true"></i>
						<p class="txt only">브라우저인증서로 본인인증을 진행합니다.<br>[브라우저인증서 인증] 버튼을 눌러주세요.</p>
					</div>
					<div class="btn_wrap">
						<div class="flex">
							<a href="#" class="button blue" role="button">브라우저인증서 인증</a>
						</div>
					</div>
				</div>
				
				<!--카드본인인증-->
				<div id="tabCertify5" class="tab_panel">
					<div class="form_item">
						<label for="ctfCardNum1" class="fm_lb">카드번호</label>
						<div class="fm_cont">
							<div class="tbl card_num">
								<div class="td gray_box"><div>●●●●</div></div>
								<div class="td gray_box"><div>●●●●</div></div>
								<div class="td">
									<div class="input"><input type="password" id="ctfCardNum1" class="no_del t_center" maxlength="4" title="카드번호 세번째 4자리 입력" placeholder="3번째 4자리"></div>
								</div>
								<div class="td">
									<div class="input"><input type="tel" id="ctfCardNum2" class="no_del t_center" maxlength="4" title="카드번호 네번째 4자리 입력" placeholder="4번째 4자리"></div>
								</div>
							</div>
							<div class="error_txt">카드비밀번호를 입력해 주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>

					<!--약관 현재 미수급:추후 수정 및 추가 예정-->
					<div class="form_item">
						<div class="fm_lb">카드 본인확인 약관동의</div>
						<div class="fm_cont">
							<div class="chk_list">
								<div class="chk_item">
									<div class="checkbox large">
										<input type="checkbox" id="agree2"><i aria-hidden="true"></i>
										<label for="agree1" class="lbl">전체동의</label>
										<a href="#" class="chk_link toggle open"><span class="blind">상세약관목록 확인하기</span></a>
									</div>
									<div class="chk_child">
										<div class="checkbox large">
											<input type="checkbox" id="agree2_1"><i aria-hidden="true"></i>
											<label for="agree1_1" class="lbl">[필수] 고유식별정보의 수집이용에 대한 동의</label>
											<a href="#" class="chk_link"><span class="blind">고유식별정보의 수집이용에 대한 동의 확인하기</span></a>
										</div>
										<div class="checkbox large">
											<input type="checkbox" id="agree2_2"><i aria-hidden="true"></i>
											<label for="agree1_2" class="lbl">[필수] 개인정보 수집 이용 제공동의</label>
											<a href="#" class="chk_link"><span class="blind">개인정보 수집 이용 제공동의 확인하기</span></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--//약관 현재 미수급:추후 수정 및 추가 예정-->

					<div class="form_item">
						<div class="fm_lb">휴대폰인증</div>
						<div class="fm_cont phone">
							<ul class="btn_toggle grid col2 row2">
								<li>
									<input type="radio" id="ctfPhoneComSKT2" name="ctfPhoneCom2">
									<label for="ctfPhoneComSKT2">SKT</label>
								</li>
								<li>
									<input type="radio" id="ctfPhoneComKT2" name="ctfPhoneCom2">
									<label for="ctfPhoneComKT2">KT</label>
								</li>
								<li>
									<input type="radio" id="ctfPhoneComLG2" name="ctfPhoneCom2">
									<label for="ctfPhoneComLG2">LGU+</label>
								</li>
								<li class="in_sel">
									<input type="radio" id="ctfPhoneComETC2" name="ctfPhoneCom2">
									<label for="ctfPhoneComETC2">알뜰폰</label>
									<div class="select">
										<select name="" id="ctfPhoneComETCSel2" title="알뜰폰 통신사 선택">
											<option value="">알뜰폰</option>
											<option value="1">SKT 알뜰폰</option>
											<option value="2">KT 알뜰폰</option>
											<option value="3">LGU+ 알뜰폰</option>
										</select>
									</div>
								</li>
							</ul>
							<div class="tbl mt10">
								<div class="td">
									<div class="input"><input type="tel" id="ctfPhoneNumber2" title="휴대폰번호 10~11자리 숫자만 입력" placeholder="&prime;-&prime; 없이 입력"></div>
								</div>
							</div>
							<div class="error_txt">연락처를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<div class="btn_wrap bottom_fixed">
						<div class="flex">
							<a href="#" class="button h54 gray">취소</a>
							<a href="#" class="button h54 blue">확인</a>
						</div>
					</div> 
				</div>
				
				<!--잠금번호(스마트앱)-->
				<div id="tabCertify6" class="tab_panel">
					<!-- 잠금번호 설정 -->
					<div>
						<h3 class="tit_h2 t_center">잠금번호 비밀번호<br>6자리를 입력해주세요.</h3>
						
						<div class="password">
							<div class="dot" aria-hidden="true"><span></span><span></span><span></span><span></span><span></span><span></span></div>
							<input type="password" maxlength="6" title="잠금번호 입력">
						</div>
					</div>

					<!-- 잠금번호 미설정 -->
					<div>
						<div class="ico_box_wrap">
							<i class="i_ico_50 ico_2" aria-hidden="true"></i>
							<p class="txt only">설정된 잠금번호가 없습니다.<br>잠금번호 설정 후 이용해 주세요.</p>
						</div>
						<div class="t_center mt17">
							<a href="#" class="btn_link2" role="button">잠금번호 설정</a>
						</div>
					</div>

					<div class="btn_wrap bottom_fixed">
						<div class="flex">
							<button type="button" class="button h48 blue" disabled>잠금번호 인증</button><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
						</div>
					</div>
				</div>

				<!--PIN번호(모바일웹)-->
				<div id="tabCertify7" class="tab_panel">
					<!-- PIN번호 설정 -->
					<div>
						<h3 class="tit_h2 t_center">PIN번호<br>6자리를 입력해주세요.</h3>
						<div class="password">
							<div class="dot" aria-hidden="true"><span></span><span></span><span></span><span></span><span></span><span></span></div>
							<input type="password" maxlength="6" title="PIN번호 입력">
						</div>
					</div>

					<!-- PIN번호 미설정 -->
					<div>
						<div class="ico_box_wrap">
							<i class="i_ico_50 ico_2" aria-hidden="true"></i>
							<p class="txt only">설정된 PIN번호가 없습니다.<br>PIN번호 설정 후 이용해 주세요.</p>
						</div>
						<div class="t_center mt17">
							<a href="#" class="btn_link2" role="button">PIN번호 설정</a>
						</div>
					</div>

					<div class="btn_wrap bottom_fixed">
						<div class="flex">
							<button type="button" class="button h48 blue" disabled>PIN번호 인증</button><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
						</div>
					</div>
				</div>

				<!--지문(스마트앱)-->
				<div id="tabCertify8" class="tab_panel">
					<div class="ico_box_wrap">
						<i class="i_ico_122 ico_1" aria-hidden="true"></i>
						<p class="txt only">지문인증 팝업이 나타나면<br>지문인증 센서에 지문을 인증해주세요.</p>
					</div>
					
					<!--설정된 지문이 없을 경우-->
					<div>
						<div class="ico_box_wrap">
							<i class="i_ico_50 ico_2" aria-hidden="true"></i>
							<p class="txt only">설정된 지문이 없습니다.<br>지문 설정 후 이용해 주세요.</p>
						</div>
						<div class="t_center mt17">
							<a href="#" class="btn_link2" role="button">지문 설정</a>
						</div>
					</div>
					<!--//설정된 지문이 없을 경우-->
					
					<!--지문 제공하지 않는 기기일 경우-->
					<div class="ico_box_wrap">
						<i class="i_ico_50 ico_2" aria-hidden="true"></i>
						<p class="txt only">지문 인증을 제공하지 않은 기기입니다.<br>다른 인증수단을 이용해 주세요.</p>
					</div>
					<!--//지문 제공하지 않는 기기일 경우-->

					<div class="btn_wrap bottom_fixed">
						<div class="flex">
							<button type="button" class="button h48 blue" disabled>지문 인증</button><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
						</div>
					</div> 
				</div>

				<!--Face ID(스마트앱)-->
				<div id="tabCertify9" class="tab_panel">
					<div class="ico_box_wrap">
						<i class="i_ico_122 ico_2" aria-hidden="true"></i>
						<p class="txt only">Face ID 안내 팝업이 나타나면<br>전면 카메라에 얼굴을 인증해주세요.</p>
					</div>

					<!--설정된 Face ID가 없을 경우-->
					<div>
						<div class="ico_box_wrap">
							<i class="i_ico_50 ico_2" aria-hidden="true"></i>
							<p class="txt only">설정된 Face ID가 없습니다.<br>Face ID 설정 후 이용해 주세요.</p>
						</div>
						<div class="t_center mt17">
							<a href="#" class="btn_link2" role="button">Face ID 설정</a>
						</div>
					</div>
					<!--//설정된 Face ID가 없을 경우--> 

					<!--Face ID 제공하지 않는 기기일 경우-->
					<div class="ico_box_wrap">
						<i class="i_ico_50 ico_2" aria-hidden="true"></i>
						<p class="txt only">Face ID 인증을 제공하지 않은 기기입니다.<br>다른 인증수단을 이용해 주세요.</p>
					</div>
					<!--//Face ID 제공하지 않는 기기일 경우-->

					<div class="btn_wrap bottom_fixed">
						<div class="flex">
							<button type="button" class="button h48 blue" disabled>Face ID 인증</button><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
						</div>
					</div>
				</div>
				
				<!--올원페이-->
				<div id="tabCertify10" class="tab_panel">
					<h2 class="tit_h2">기본정보</h2>
					<div class="form_item mt0">
						<label for="inpName2" class="fm_lb">성명</label>
						<div class="fm_cont">
							<div class="input"><input type="text" id="inpName4" placeholder="성명 입력"></div>
							<div class="error_txt">이름을 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<div class="form_item">
						<label for="jumin7" class="fm_lb">주민등록번호</label>
						<div class="fm_cont">
							<div class="tbl">
								<div class="td">
									<div class="input"><input type="tel" id="jumin11" maxlength="6" title="주민등록번호 앞6자리 입력" placeholder="앞 6자리"></div>
								</div>
								<div class="td dash">-</div>
								<div class="td w_80">
									<div class="input"><input type="tel" id="jumin12" class="t_center no_del" maxlength="1" title="주민등록번호 뒤7자리 중 첫번째자리 입력" placeholder="뒤 1자리"></div>
								</div>
								<div class="td w_100 fc_gray3">●●●●●●</div>
							</div>
							<div class="error_txt">주민등록번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<hr class="hr_line" aria-hidden="true">
					<div class="ico_box_wrap">
						<i class="i_ico_88 ico_9" aria-hidden="true"></i>
						<p class="txt only">올원페이(앱카드) 결제인증방법을 통하여<br>인증 할 수 있어요.</p>
					</div>
					<div class="btn_wrap">
						<div class="flex">
							<a href="#" class="button blue" role="button">올원페이 인증</a>
						</div>
					</div>

					<div class="btn_wrap bottom_fixed">
						<div class="flex">
							<button type="button" class="button h48 blue" disabled>다음</button><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
						</div>
					</div>
				</div>
			</div>
		</div>
	</article>
</div>

<!-- 본인인증 잠금번호 불일치 팝업 -->
<div id="ctfLockPwdChkPop" class="popup modal" role="dialog" aria-hidden="true">
	<article class="pop_wrap">
		<div class="pop_cont">
			<div class="section t_center">
				<i class="i_ico_50 ico_2" aria-hidden="true"></i>
				<h2 class="pop_tit fz_14">잠금번호가 일치하지 않습니다.<br>
				확인 후 다시 입력해 주세요. <strong class="fc_red">(1/5)</strong></h2>
				<div class="fz_13 fc_bluegray"><span aria-hidden="true">※</span> 5회 연속 실패 시 로그인 제한</div>
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
<!-- //본인인증 잠금번호 불일치 팝업 -->

<!-- 본인인증 잠금번호 5회오류 팝업 -->
<div id="ctfLockPwdFailPop" class="popup modal" role="dialog" aria-hidden="true">
	<article class="pop_wrap">
		<div class="pop_cont">
			<div class="section t_center">
				<i class="i_ico_50 ico_2" aria-hidden="true"></i>
				<h2 class="pop_tit fz_14">잠금번호 5회 오류로<br>
				로그인이 제한되었습니다.</h2>
				<div>잠금번호 설정 후 다시 시도해 주세요.</div>
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
<!-- //본인인증 잠금번호 5회오류 팝업 -->

<!-- 본인인증 PIN번호 불일치 팝업 -->
<div id="ctfPinNumberChkPop" class="popup modal" role="dialog" aria-hidden="true">
	<article class="pop_wrap">
		<div class="pop_cont">
			<div class="section t_center">
				<i class="i_ico_50 ico_2" aria-hidden="true"></i>
				<h2 class="pop_tit fz_14">PIN번호가 일치하지 않습니다.<br>
				확인 후 다시 입력해 주세요. <strong class="fc_red">(1/5)</strong></h2>
				<div class="fz_13 fc_bluegray"><span aria-hidden="true">※</span> 5회 연속 실패 시 로그인 제한</div>
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
<!-- //본인인증 PIN번호 불일치 팝업 -->

<!-- 본인인증 PIN번호 5회오류 팝업 -->
<div id="ctfPinNumberFailPop" class="popup modal" role="dialog" aria-hidden="true">
	<article class="pop_wrap">
		<div class="pop_cont">
			<div class="section t_center">
				<i class="i_ico_50 ico_2" aria-hidden="true"></i>
				<h2 class="pop_tit fz_14">PIN번호 5회 오류로<br>
				로그인이 제한되었습니다.</h2>
				<div>PIN번호 설정 후 다시 시도해 주세요.</div>
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
<!-- //본인인증 PIN번호 5회오류 팝업 -->

<!-- 본인인증 지문인식 안내 팝업 -->
<div id="ctfFingerGuidePop" class="popup modal" role="dialog" aria-hidden="true">
	<article class="pop_wrap">
		<div class="pop_cont">
			<div class="section t_center">
				<i class="i_ico_80 ico_1" aria-hidden="true"></i>
				<div class="mt15">지문을 센서에 터치하여<br>인증해 주세요.</div>
			</div>
		</div>
		<div class="pop_btn btn_wrap bottom_fixed">
			<div>
				<div class="flex">
					<a href="#" class="button h48 gray ui-pop-close">취소</a><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
				</div>
			</div>
		</div>
	</article>
</div>
<!-- //본인인증 지문인식 안내 팝업 -->

<!-- 본인인증 페이스ID 안내 팝업 -->
<div id="ctfFaceIdGuidePop" class="popup modal" role="dialog" aria-hidden="true">
	<article class="pop_wrap">
		<div class="pop_cont">
			<div class="section t_center">
				<i class="i_ico_80 ico_2" aria-hidden="true"></i>
				<div class="mt15">Face ID로 인증해주세요.</div>
			</div>
		</div>
		<div class="pop_btn btn_wrap bottom_fixed">
			<div>
				<div class="flex">
					<a href="#" class="button h48 gray ui-pop-close">취소</a><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
				</div>
			</div>
		</div>
	</article>
</div>
<!-- //본인인증 페이스ID 안내 팝업 -->

<!-- 본인인증 약관팝업 -->
<div id="ctfAgreePop1" class="popup full" role="dialog" aria-hidden="true">
	<article class="pop_wrap">
		<div class="pop_head">
			<h1>고유식별정보의 수집이용에 대한 동의</h1>
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
					<a href="#" class="button h54 blue ui-pop-close">확인</a><!-- 2020-05-12: 클래스 수정 -->
				</div>
			</div>
		</div>
	</article>
</div>
<div id="ctfAgreePop2" class="popup full" role="dialog" aria-hidden="true">
	<article class="pop_wrap">
		<div class="pop_head">
			<h1>개인정보 수집 이용 제공동의</h1>
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
					<a href="#" class="button h54 blue ui-pop-close">확인</a><!-- 2020-05-12: 클래스 수정 -->
				</div>
			</div>
		</div>
	</article>
</div>
<div id="ctfAgreePop3" class="popup full" role="dialog" aria-hidden="true">
	<article class="pop_wrap">
		<div class="pop_head">
			<h1>통신사 이용약관 동의</h1>
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
					<a href="#" class="button h54 blue ui-pop-close">확인</a><!-- 2020-05-12: 클래스 수정 -->
				</div>
			</div>
		</div>
	</article>
</div>
<!-- //본인인증 약관팝업 -->