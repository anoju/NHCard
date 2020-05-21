<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('인증서 비밀번호 변경');

		//Layer.alert('비밀번호 변경이 완료되었습니다.');
		//Layer.alert('현재 인증서 비밀번호가 일치하지 않습니다.');
		//Layer.alert('연속된 문자 또는 동일한 문자는 사용할 수 없습니다.');
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
				<div class="complete_wrap">
					<i class="i_ico_88 ico_18" aria-hidden="true"></i>
					<p class="txt mt35 mb0">새로운 비밀번호를 등록해 주세요.</p>
				</div>
				<hr class="hr_line">
				<div class="form_item">
					<label for="password01" class="fm_lb">현재 비밀번호</label>
					<div class="fm_cont">
						<div class="input"><input type="password" id="phoneNum1_3" maxlength="15" title="현재 비밀번호 입력" placeholder="현재 비밀번호 입력"></div>
					</div>
				</div>
				<div class="form_item">
					<label for="password02" class="fm_lb">새 비밀번호</label>
					<div class="fm_cont">
						<div class="input"><input type="password" id="password02" maxlength="15" title="새 비밀번호 입력" placeholder="새 비밀번호 입력"></div>
					</div>
				</div>
				<div class="form_item">
					<label for="password03" class="fm_lb">새 비밀번호 확인</label>
					<div class="fm_cont">
						<div class="input"><input type="password" id="password03" maxlength="15" title="새 비밀번호 확인 입력" placeholder="새 비밀번호 확인 입력"></div>
					</div>
				</div>
				<dl class="accordion_list accordion_dl mt30">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">비밀번호는 영문+숫자+특수문자 10~15자리로 입력하세요.</li>
								<li class="dot">비밀번호 생성규칙
									<ul>
										<li class="dash fz_13">3자 이상 중복되는 영문/숫자/특수문자 사용불가<br>
											ex) aaa,111,@@@,a1@a1@a1@</li>
										<li class="dash fz_13"> 3자 이상 연속된 영문/숫자 사용불가<br>
											ex) 123,456,abc,def</li>
										<li class="dash fz_13">사용 가능한 특수문자 ! ,@,#, $,%,^,&,*,(,)</li>	
									</ul>
								</li>
								<li class="dot">개인정보는 금융감독원 보안기준에 따른 보안 시스템에 의해 보호됩니다.</li>
							</ul>
						</div>
					</dd>
				</dl>
				<div class="btn_wrap bottom_fixed">
					<div class="flex">
						<button type="button" class="button h54 blue" disabled>비밀번호 변경</button><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>