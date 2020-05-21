<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('공인인증서 관리');
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
					<i class="i_ico_88 ico_7" aria-hidden="true"></i>
					<p class="txt mt35 mb0">공인인증서를 안전하고 편리하게<br>관리 할 수 있어요.</p>
				</div>
				<hr class="hr_line mb0 mt20">
				<div class="line_list_2 bt-none">
					<ul>
						<li>
							<a href="#" class="inner btn_click">
								<div class="tit">인증서 등록</div>
								<div class="date">공인인증서를 NH농협카드에 등록이 완료됩니다.</div>
							</a>
						</li>
						<li>
							<a href="#" class="inner btn_click">
								<div class="tit">인증서 가져오기(PC→휴대폰)</div>
								<div class="date">PC에 저장되어 있는 인증서를 휴대폰으로 복사합니다.</div>
							</a>
						</li>
						<li>
							<a href="#" class="inner btn_click">
								<div class="tit">인증서 내보내기(휴대폰→PC)</div>
								<div class="date">휴대폰에 저장되어 있는 인증서를 PC로 복사합니다. </div>
							</a>
						</li>
						<li>
							<a href="#" class="inner btn_click">
								<div class="tit">인증서 관리</div>
								<div class="date">인증서 비밀번호 변경/삭제가 가능합니다. </div>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>