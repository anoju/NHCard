<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('인증서 등록');

		//Layer.alert('NH농협카드 회원이 아닙니다.<br>회원가입 후 이용해 주세요.');
		//Layer.confirm('이미 등록된 공인인증서가 있습니다.<br>재등록 하시겠어요?');
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
				<div class="form_item">
					<label for="jumin" class="fm_lb">주민등록번호 입력</label>
					<div class="fm_cont">
						<div class="input"><input type="tel" id="jumin" maxlength="14" title="주민등록번호 13자리 입력" placeholder="주민등록번호 13자리 입력"></div>
						<div class="error_txt">주민등록번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
					</div>
				</div>
				<dl class="accordion_list accordion_dl mt30">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">NH농협카드 회원이 아닐 경우 회원가입 후 이용해 주세요.</li>
								<li class="dot">공인인증서 발급은 거래은행 및 발급기관에 문의해 주시기 바랍니다. NH농협카드에서는 공인인증 직접 발급 및 재발급을 할 수 없습니다.</li>
								<li class="dot">등록 가능한 인증서는 회원의 주민등록번호로 발급된 개인용 공인인증서 입니다.</li>
							</ul>
						</div>
					</dd>
				</dl>
				<div class="btn_wrap bottom_fixed">
					<div class="flex">
						<a href="#" class="button h54 blue">확인</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>