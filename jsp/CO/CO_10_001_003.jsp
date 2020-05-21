<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('아이디/비밀번호 찾기');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container">
		<div id="contents">
			<div class="section">
				<div class="form_item">
					<label for="pwd" class="fm_lb">새 비밀번호</label>
					<div class="fm_cont">
						<div class="input"><input type="password" id="pwd" title="새 비밀번호" placeholder="새 비밀번호 입력"></div>
						<div class="help_txt">영문+숫자+특수문자10~15자리, 사용가능 특수문자 ! ,@,#, $,%,^,&,*,(,)</div>
					</div>
				</div>
				<div class="form_item">
					<label for="pwdCmf" class="fm_lb">새 비밀번호 확인</label>
					<div class="fm_cont">
						<div class="input"><input type="password" id="pwdCmf" title="새 비밀번호 확인" placeholder="새 비밀번호 확인 입력"></div>
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
								<li class="dot">비밀번호는 영문+숫자+특수문자 10~15자리로 입력하세요.</li>
								<li class="dot">비밀번호 생성규칙
									<ul>
										<li class="dash">3자 이상 중복되는 영문/숫자/특수문자 사용불가<br>ex) aaa,111,@@@,a1@a1@a1@</li>
										<li class="dash">3자 이상 연속된 영문/숫자 사용불가<br>ex) 123,456,abc,def</li>
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
						<button type="button" class="button h54 blue" disabled>비밀번호 변경</button><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>