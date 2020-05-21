<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('PIN번호 설정');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top_menu.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container">
		<div id="contents">
			<div class="section">
				<div class="ico_box_wrap">
					<i class="i_ico_88 ico_6" aria-hidden="true"></i>
					<h2 class="tit_h2">PIN번호 6자리를 입력해 주세요.</h2>
					<p class="txt">생년월일, 휴대폰번호, 3자리 이상 연속되거나 동일한 숫자는 설정할 수 없습니다.</p>
				</div>
				<hr class="hr_line" aria-hidden="true">
				<div class="form_item">
					<label for="pinNum" class="fm_lb">PIN번호 입력</label>
					<div class="fm_cont">
						<div class="input"><input type="password" id="pinNum" title="PIN번호 입력" placeholder="6자리 입력"></div>
					</div>
				</div>
				<div class="form_item">
					<label for="pinNum2" class="fm_lb">PIN번호 확인</label>
					<div class="fm_cont">
						<div class="input"><input type="password" id="pinNum22" title="PIN번호 확인" placeholder="6자리 입력"></div>
					</div>
				</div>
				<div class="btn_wrap bottom_fixed">
					<div class="flex">
						<button type="button" class="button h54 blue" disabled>PIN번호 설정 완료</button><!-- disabled속성 추가:버튼 비활성, disabled속성 제거:버튼 활성-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>