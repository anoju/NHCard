<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('로그인');

		//임시로 파라미터값으로 구분 처리
		if(getUnlParams().type == 'auto'){ 					//자동로그인일때
			$('.swipe_tab').hide();
			$('.login_strat_box').show();
		}else if(getUnlParams().type == 'web'){ 			//모바일 웹일때
			$('.swipe_tab .navi>ul>li').slice(0,3).remove();
			$('.swipe_tab .swiper-slide').slice(0,3).remove();
			$('.swipe_tab .swiper-slide').eq(2).find('.cont_box').first().hide().next().show();
			
			buttonUI.swipeTab(); //로그인 영역 swipe 실행
			//buttonUI.swipeTab(탭의 index 값); //원하는 탭을 활성화 시키고 싶을때
			//buttonUI.swipeTab(1); //2번째탭 활성화 시킬때
			//buttonUI.swipeTab(2); //3번째탭 활성화 시킬때
		}else{ 												//모바일 앱일때
			$('.swipe_tab .navi>ul>li').eq(3).remove();
			$('.swipe_tab .swiper-slide').eq(3).remove();
			
			buttonUI.swipeTab(); //로그인 영역 swipe 실행
			//buttonUI.swipeTab(탭의 index 값); //원하는 탭을 활성화 시키고 싶을때
			//buttonUI.swipeTab(1); //2번째탭 활성화 시킬때
			//buttonUI.swipeTab(2); //3번째탭 활성화 시킬때
		}

		//다른기기 사용안내 팝업
		//Layer.open('#otherDeviceChkPop');

		//잠금번호 불일치 팝업
		//Layer.open('#lockPwdChkPop');

		//잠금번호 5회오류 팝업
		//Layer.open('#lockPwdFailPop');

		//PIN번호 불일치 팝업
		//Layer.open('#pinNumberChkPop');

		//PIN번호 5회오류 팝업
		//Layer.open('#pinNumberFailPop');

		//지문인식 안내팝업
		//Layer.open('#fingerGuidePop');

		//등록된 지문정보 변경
		/*Layer.confirm('<strong>휴대폰에 등록된 지문정보가 변경되어 지문인증을 이용할 수 없습니다.</strong><br><br>지문을 재설정 하겠습니까?',function(e){
			if(e){
				console.log('지문 재설정!!')
			}
		});*/

		//페이스ID 안내팝업
		//Layer.open('#faceIdGuidePop');

		//등록된 페이스ID 변경
		/*Layer.confirm('<strong>휴대폰에 등록된 Face ID정보가 변경되어 Face ID인증을 이용할 수 없습니다.</strong><br><br>Face ID를 재설정 하겠습니까?',function(e){
			if(e){
				console.log('지문 재설정!!')
			}
		});*/

		//회원 ID가 없을 경우 팝업
		//Layer.open('#idNotFindPop');

		//비밀번호 불일치 팝업
		//Layer.open('#pwdChkPop');
		
		//비밀번호 5회오류 팝업
		//Layer.open('#pwdFailPop');

		//인증서 비밀번호 불일치 팝업
		//Layer.open('#certificatePwdChkPop');

		//자동로그인 설정
		$('#autoLogin1,#autoLogin2,#autoLogin3').click(function(e){
			e.preventDefault();
			var $target = e.target,
				$this = $(this),
				$checked = $this.prop('checked');
			if($checked == true){
				Layer.open('#autoLoginSettingPop');
				$('#autoLoginSettingPop').data('id',$($target).attr('id'));
			}else{
				/*Layer.confirm('자동로그인을 해제 하시겠습니까?',function(e){
					if(e){
						$this.prop('checked',false);
					}
				});*/
			}
		});
		$('#autoLoginSettingPop #autoLoginOK').click(function(e){
			e.preventDefault()
			var $id = $('#autoLoginSettingPop').data('id');
			Layer.close('#autoLoginSettingPop');
			if($id != undefined){
				$('#'+$id).prop('checked',true);
			}
		});
		$('#autoLogin4').click(function(e){
			e.preventDefault();
			var $this = $(this),
				$checked = $this.prop('checked');
			if($checked == false){
				Layer.confirm('자동로그인을 해제 하시겠습니까?',function(e){
					if(e){
						//$this.prop('checked',false);
						location.href = 'CO_10_001_030.html'
					}
				});
			}
		});

		//자동로그인 설정시 화면잠금 미설정 안내 팝업
		//Layer.open('#phoneLockChkPop');

		//자동로그인 설정시 화면잠금 미설정 안내 팝업
		//Layer.open('#autoLoginClearPop');

		//배너영역 높이값 설정
		$(window).resize(function(){
			$('.login_banner').removeAttr('style');
			var $bannerH = $('.login_banner').height(),
				$bannerChildH = $('.login_banner').children().height();
			if($bannerH<$bannerChildH)$('.login_banner').height($bannerChildH);
		});
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top_logo.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container" class="ty2">
		<section id="contents">
			<div class="login_wrap">
				<div class="swipe_tab">
					<div class="navi">
						<ul>
							<li><a href="#"><span>잠금번호</span></a></li>
							<li><a href="#"><span>지문</span></a></li>
							<li><a href="#"><span>Face ID</span></a></li>
							<li><a href="#"><span>PIN번호</span></a></li>
							<li><a href="#"><span>아이디</span></a></li>
							<li><a href="#"><span>공인인증서</span></a></li>
							<li><a href="#"><span>올원페이</span></a></li>
						</ul>
					</div>
					<div class="cont">
						<div class="swipe-container">
							<div class="swiper-wrapper">
								<!--잠금번호-->
								<div class="swiper-slide">
									<!--잠금번호가 없을 때-->
									<div class="cont_box">
										<div class="cont_txt">설정된 잠금번호가 없습니다.<br>잠금번호 설정 후 이용해 주세요.</div>
										<div class="btn_wrap">
											<div class="flex">
												<a href="#" class="button line icon" onclick="Layer.open('#userCertifyPop');"><i class="bt_ic_setting" aria-hidden="true"></i>잠금번호 설정<i class="bt_ic_arr" aria-hidden="true"></i></a>
											</div>
										</div>
									</div>
									<!--잠금번호가 있을 때-->
									<div class="cont_box lock_num">
										<div class="cont_txt">잠금번호 6자리를 입력해 주세요.</div>

										<div class="password">
											<div class="dot" aria-hidden="true"><span></span><span></span><span></span><span></span><span></span><span></span></div>
											<input type="password" maxlength="6" title="잠금번호 입력">
										</div>
										<div class="tbl">
											<div class="td t_left va_mid">
												<a href="#" class="btn_link gray" onclick="Layer.open('#userCertifyPop');">잠금번호 설정<i class="bt_ic_arr" aria-hidden="true"></i></a>
											</div>
											<div class="td t_right va_mid">
												<span class="checkbox switch">
													<input type="checkbox" id="autoLogin1"><i aria-hidden="true"></i>
													<label for="autoLogin1" class="lbl">자동로그인</label>
												</span>
											</div>
										</div>
									</div>
								</div>
								
								<!--지문-->
								<div class="swiper-slide">
									<!--설정된 지문이 없을 때-->
									<div class="cont_box">
										<div class="cont_txt">설정된 지문이 없습니다.<br>지문 설정 후 이용해 주세요.</div>
										<div class="btn_wrap">
											<div class="flex">
												<a href="#" class="button line icon" onclick="Layer.open('#userCertifyPop');"><i class="bt_ic_finger" aria-hidden="true"></i>지문 설정<i class="bt_ic_arr" aria-hidden="true"></i></a>
											</div>
										</div>
									</div>

									<!--설정된 지문이 있을 때-->
									<div class="cont_box">
										<div class="btn_wrap">
											<div class="flex">
												<button type="button" class="button line icon"><i class="bt_ic_finger" aria-hidden="true"></i>지문인증으로 로그인하기<i class="bt_ic_arr" aria-hidden="true"></i></button>
											</div>
										</div>
										<div class="t_right mt40">
											<span class="checkbox switch">
												<input type="checkbox" id="autoLogin2"><i aria-hidden="true"></i>
												<label for="autoLogin2" class="lbl">자동로그인</label>
											</span>
										</div>
									</div>

									<!--기기가 지문이 안될 때-->
									<div class="cont_box">
										<div class="cont_txt">지문 인증을 제공하지 않은 기기입니다.<br>다른 인증수단을 이용해 주세요.</div>
										<div class="btn_wrap">
											<div class="flex">
												<button type="button" class="button line icon" disabled><i class="bt_ic_finger" aria-hidden="true"></i>지문인증으로 로그인하기<i class="bt_ic_arr" aria-hidden="true"></i></button>
											</div>
										</div>
									</div>
								</div>

								<!--Face ID-->
								<div class="swiper-slide">
									<!--설정된 Face ID가 없을 때-->
									<div class="cont_box">
										<div class="cont_txt">설정된 Face ID가 없습니다.<br>Face ID 설정 후 이용해 주세요.</div>
										<div class="btn_wrap">
											<div class="flex">
												<a href="#" class="button line icon" onclick="Layer.open('#userCertifyPop');"><i class="bt_ic_faceId" aria-hidden="true"></i>Face ID 설정<i class="bt_ic_arr" aria-hidden="true"></i></a>
											</div>
										</div>
									</div>

									<!--설정된 Face ID가 있을 때-->
									<div class="cont_box">
										<div class="btn_wrap">
											<div class="flex">
												<button type="button" class="button line icon"><i class="bt_ic_faceId" aria-hidden="true"></i>Face ID로 로그인하기<i class="bt_ic_arr" aria-hidden="true"></i></button>
											</div>
										</div>
										<div class="t_right mt40">
											<span class="checkbox switch">
												<input type="checkbox" id="autoLogin3"><i aria-hidden="true"></i>
												<label for="autoLogin3" class="lbl">자동로그인</label>
											</span>
										</div>
									</div>

									<!--기기가 Face ID가 안될 때-->
									<div class="cont_box">
										<div class="cont_txt">지문 인증을 제공하지 않은 기기입니다.<br>다른 인증수단을 이용해 주세요.</div>
										<div class="btn_wrap">
											<div class="flex">
												<button type="button" class="button line icon" disabled><i class="bt_ic_faceId" aria-hidden="true"></i>Face ID로 로그인하기<i class="bt_ic_arr" aria-hidden="true"></i></button>
											</div>
										</div>
									</div>
								</div>

								<!--PIN번호-->
								<div class="swiper-slide">
									<!--PIN번호가 없을 때-->
									<div class="cont_box">
										<div class="cont_txt">설정된 PIN번호가 없습니다.<br>PIN번호 설정 후 이용해 주세요.</div>
										<div class="flex mt20">
											<a href="#" class="button line icon"><i class="bt_ic_pin" aria-hidden="true"></i>PIN번호 설정<i class="bt_ic_arr" aria-hidden="true"></i></a><!-- 수정: 2020-05-11 -->
										</div>
									</div>
									<!--PIN번호가 있을 때-->
									<div class="cont_box lock_num">
										<div class="cont_txt">PIN번호 6자리를 입력해 주세요.</div>
										<div class="password">
											<div class="dot" aria-hidden="true"><span></span><span></span><span></span><span></span><span></span><span></span></div>
											<input type="password" maxlength="6" title="PIN번호 입력">
										</div>
										<div class="caution_txt2">PIN번호는 앱의 잠금번호와 다른 로그인 수단으로 새로 등록이 필요합니다.</div>
										<div class="tbl">
											<div class="td t_left va_mid">
												<a href="#pinNumInfoPop" class="btn_link gray ui-pop-open">PIN번호 <i class="tooltip_btn" aria-hidden="true"></i></a>
											</div>
											<div class="td t_right va_mid">
												<a href="#" class="btn_link gray">PIN번호 설정<i class="bt_ic_arr" aria-hidden="true"></i></a>
											</div>
										</div>
									</div>
								</div>

								<!--아이디-->
								<div class="swiper-slide">
									<div class="cont_box">
										<div class="login_box">
											<div class="input">
												<input type="text" title="아이디 입력" placeholder="아이디 입력">
											</div>
											<div class="input">
												<input type="password" title="비밀번호 입력" placeholder="비밀번호 입력">
											</div>
											<a href="#" class="button blue">로그인</a>
										</div>
										<div class="tbl mt10">
											<div class="td t_left va_mid">
												<a href="#" class="btn_link gray" onclick="Layer.open('#userCertifyPop');">아이디/비밀번호 찾기<i class="bt_ic_arr" aria-hidden="true"></i></a>
											</div>
											<div class="td t_right va_mid">
												<span class="checkbox">
													<input type="checkbox" id="chk2" checked=""><i aria-hidden="true"></i>
													<label for="chk2" class="lbl">아이디저장</label>
												</span>
											</div>
										</div>
									</div>
								</div>

								<!--공인인증서-->
								<div class="swiper-slide">
									<!--공인인증서: 스마트앱일 때-->
									<div class="cont_box">
										<div class="btn_wrap">
											<div class="flex">
												<a href="#" class="button line icon"><i class="bt_ic_certify" aria-hidden="true"></i>공인인증서로 로그인하기<i class="bt_ic_arr" aria-hidden="true"></i></a>
											</div>
										</div>
										<div class="tbl mt40">
											<div class="td va_mid t_center">
												<a href="#" class="btn_link gray">공인인증서 등록<i class="bt_ic_arr" aria-hidden="true"></i></a>
											</div>
										</div>
									</div>

									<!--공인인증서: 모바일웹일 때-->
									<div class="cont_box" style="display:none;">
										<div class="cont_txt">브라우저 인증서로<br>로그인 할 수 있습니다.</div>
										<div class="btn_wrap">
											<div class="flex">
												<a href="#" class="button line icon"><i class="bt_ic_certify2" aria-hidden="true"></i>공인인증서 로그인<i class="bt_ic_arr" aria-hidden="true"></i></a>
											</div>
											<div class="flex">
												<a href="#" class="button line icon"><i class="bt_ic_browser" aria-hidden="true"></i>브라우저인증서 로그인<i class="bt_ic_arr" aria-hidden="true"></i></a>
											</div>
										</div>
									</div>
								</div>

								<!--올원페이-->
								<div class="swiper-slide">
									<div class="cont_box">
										<div class="cont_txt">올원페이 앱카드로<br>로그인 할 수 있습니다.</div>
										<div class="btn_wrap">
											<div class="flex">
												<a href="#" class="button line icon"><i class="bt_ic_allone" aria-hidden="true"></i>올원페이로 로그인하기<i class="bt_ic_arr" aria-hidden="true"></i></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab_pagination" aria-hidden="true"></div>
					</div>
					<div class="btn_wrap">
						<div class="flex">
							<a href="#" class="button white">카드신청</a>
							<a href="#" class="button white">회원가입</a>
						</div>
					</div>
				</div>

				<!--자동로그인 시작하기 화면-->
				<div class="login_strat_box" style="display:none;">
					<div class="login_strat">
						<h3><span>김농협</span>님 안녕하세요 <span aria-hidden="true">:)</span></h3>
						<div class="start_txt">NH농협카드 앱을 바로 시작할까요?</div>
						<div class="btn_wrap">
							<div class="flex">
								<a href="#" class="button line blue">바로 시작하기</a>
							</div>
						</div>
						<div class="tbl">
							<div class="td t_right va_mid">
								<span class="checkbox switch">
									<input type="checkbox" id="autoLogin4" checked><i aria-hidden="true"></i>
									<label for="autoLogin4" class="lbl">자동로그인</label>
								</span>
							</div>
						</div>
					</div>
				</div>
				
			
				<!-- 배너 -->
				<div class="login_banner"><!-- 수정: 2020-05-11 div추가-->
					<div class="ui-swiper-wrap full">
						<div class="ui-swiper autoplay">
							<div class="item swiper-slide">
								<a href="#" data-swiper-parallax="300"><img src="/content/images/temp/login_banner_1.png" alt="올원페이로 10만원 결제 시 스타벅스 증정. 2020년 4월1부터 4월 30일까지"></a>
							</div>
							<div class="item swiper-slide">
								<a href="#" data-swiper-parallax="300"><img src="/content/images/temp/login_banner_2.png" alt="올원페이로 10만원 결제 시 스타벅스 증정. 2020년 4월1부터 4월 30일까지"></a>
							</div>
							<div class="item swiper-slide">
								<a href="#" data-swiper-parallax="300"><img src="/content/images/temp/login_banner_1.png" alt="올원페이로 10만원 결제 시 스타벅스 증정. 2020년 4월1부터 4월 30일까지"></a>
							</div>
							<div class="item swiper-slide">
								<a href="#" data-swiper-parallax="300"><img src="/content/images/temp/login_banner_2.png" alt="올원페이로 10만원 결제 시 스타벅스 증정. 2020년 4월1부터 4월 30일까지"></a>
							</div>
						</div>
					</div>
				</div>
				<!-- //배너 -->
			</div>
		</section>
	</div>

	<!-- 다른기기 사용안내 팝업 -->
	<div id="otherDeviceChkPop" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section t_center">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<h2 class="pop_tit fz_14">다른기기에서 잠금번호 또는 <br>지문을 사용 중입니다.</h2>
					<div>사용설정을 진행 할 경우 이전기기에 등록 된 잠금번호 및 지문이 초기화 됩니다.</div>
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
	<!-- //다른기기 사용안내 팝업 -->

	<!-- 잠금번호 불일치 팝업 -->
	<div id="lockPwdChkPop" class="popup modal" role="dialog" aria-hidden="true">
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
	<!-- //잠금번호 불일치 팝업 -->

	<!-- 잠금번호 5회오류 팝업 -->
	<div id="lockPwdFailPop" class="popup modal" role="dialog" aria-hidden="true">
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
	<!-- //잠금번호 5회오류 팝업 -->

	<!-- PIN번호 불일치 팝업 -->
	<div id="pinNumberChkPop" class="popup modal" role="dialog" aria-hidden="true">
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
	<!-- //PIN번호 불일치 팝업 -->

	<!-- PIN번호 5회오류 팝업 -->
	<div id="pinNumberFailPop" class="popup modal" role="dialog" aria-hidden="true">
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
	<!-- //PIN번호 5회오류 팝업 -->

	<!-- 지문인식 안내 팝업 -->
	<div id="fingerGuidePop" class="popup modal" role="dialog" aria-hidden="true">
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
	<!-- //지문인식 안내 팝업 -->

	<!-- 페이스ID 안내 팝업 -->
	<div id="faceIdGuidePop" class="popup modal" role="dialog" aria-hidden="true">
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
	<!-- //페이스ID 안내 팝업 -->

	<!-- PIN번호 안내 팝업 -->
	<div id="pinNumInfoPop" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section">
					<div class="pop_tit_wrap">
						<i class="i_ico_88 ico_6" aria-hidden="true"></i>
						<h2 class="pop_tit">PIN번호 안내</h2>
					</div>
					<div class="txt_list">
						<ul>
							<li class="dot">PIN번호는 6자리 숫자만으로 로그인 할 수 있는 로그인 인증 수단입니다.</li>
							<li class="dot">브라우저당 1명만 이용할 수 있습니다.</li>
							<li class="dot">NH농협카드 앱의 잠금번호가 등록 되어 있어도, Moblie NH농협카드에서 새로 등록이 필요합니다.</li>
							<li class="dot">생년월일, 휴대폰번호, 3자리 이상 연속되거나 동일한 숫자는 설정할 수 없습니다.</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button blue h48 ui-pop-close">확인</a><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- //PIN번호 안내 팝업 -->

	<!-- 회원 ID가 없을 경우 팝업 -->
	<div id="idNotFindPop" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section t_center">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<h2 class="pop_tit fz_14">등록되지 않은 아이디입니다.<br>
					아이디 확인 후 다시 이용해 주세요.</h2>
					<div class="fz_13 fc_bluegray"><span aria-hidden="true">※</span> 농협카드 온라인 회원이 아닌 경우<br>회원가입 후 이용해 주세요.</div>
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
	<!-- //회원 ID가 없을 경우 팝업 -->

	<!-- 비밀번호 불일치 팝업 -->
	<div id="pwdChkPop" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section t_center">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<h2 class="pop_tit fz_14">비밀번호가 일치하지 않습니다.<br>
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
	<!-- //비밀번호 불일치 팝업 -->

	<!-- 비밀번호 5회오류 팝업 -->
	<div id="pwdFailPop" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section t_center">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<h2 class="pop_tit fz_14">비밀번호 5회 오류로<br>
					로그인이 제한되었습니다.</h2>
					<div>비밀번호 찾기 후 다시 시도해 주세요.</div>
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
	<!-- //비밀번호 5회오류 팝업 -->

	<!-- 인증서 비밀번호 불일치 팝업 -->
	<div id="certificatePwdChkPop" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section t_center">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<h2 class="pop_tit fz_14">인증서 비밀번호가 일치하지 않습니다.<br>
					확인 후 다시 입력해 주세요.</h2>
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
	<!-- //인증서 비밀번호 불일치 팝업 -->

	<!-- 자동로그인 설정 팝업 -->
	<div id="autoLoginSettingPop" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section">
					<div class="pop_tit_wrap">
						<i class="i_ico_88 ico_4" aria-hidden="true"></i>
						<h2 class="pop_tit">자동로그인 설정 안내</h2>
					</div>
					<div class="txt_list">
						<ul>
							<li class="dot">휴대폰 기기의 화면 잠금설정이 되어 있을 경우에 자동로그인이 가능합니다.</li>
							<li class="dot">한 사람당 한 기기만 설정이 가능합니다.</li>
							<li class="dot">2개월간 NH농협카드 앱 미사용 시 자동로그인 설정이 해제 됩니다.</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h48 gray ui-pop-close">취소</a><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
						<a href="#" class="button h48 blue" id="autoLoginOK">자동로그인 설정</a>
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- //자동로그인 설정 팝업 -->

	<!-- 자동로그인 설정시 화면잠금 미설정 안내 팝업 -->
	<div id="phoneLockChkPop" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section t_center">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<h2 class="pop_tit fz_14">휴대폰 잠금화면 설정 후 사용이 가능합니다.</h2>
					<div>자동로그인을 사용하기 위해서는<br>보안을 위해 휴대폰 잠금화면 설정 후<br>사용이 가능합니다.</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h48 gray ui-pop-close">취소</a><!-- ui-pop-close클래스로 팝업 닫기 가능 -->
						<a href="#" class="button h48 blue">잠금화면 설정</a>
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- //자동로그인 설정시 화면잠금 미설정 안내 팝업 -->

	<!-- 2개월간 미사용 할 경우 자동로그인 해제 안내 팝업 -->
	<div id="autoLoginClearPop" class="popup modal" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_cont">
				<div class="section t_center">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<div>NH농협카드를 2개월간 사용하지 않아서 <br>자동로그인 설정이 해제 되었습니다.</div>
				</div>
			</div>
			<div class="pop_btn btn_wrap bottom_fixed">
				<div>
					<div class="flex">
						<a href="#" class="button h48 blue">확인</a>
					</div>
				</div>
			</div>
		</article>
	</div>
	<!-- //2개월간 미사용 할 경우 자동로그인 해제 안내 팝업 -->

	<!-- 본인인증팝업 -->
	<%@ include file="../include/certify/user.jsp" %>
	<%@ include file="../include/certify/pop_cvcInfo.jsp" %>
	<!-- //본인인증팝업 -->

	<%@ include file="../include/floatingBar.jsp" %>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>