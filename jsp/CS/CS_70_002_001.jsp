<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('인증서 가져오기');

		//Layer.alert('인증서 가져오기가 완료되었습니다.');
		//Layer.alert('인증서가 업로드 되지 않았어요.<br>다시 시도해 주세요.');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container">
		<section id="contents" class="pb0">
			<div class="section">
				<div class="imp_npki">
					<h2 class="tit_h2 fz_17 t_center">인증번호를 PC화면에 입력해 주세요.</h2>
					<div class="img">
						<img src="/content/images/contents/img_pc_to_phone.png" alt="모바일에서 PC로의 전송이미지" />
					</div>
					<div class="flex">
						<div><input type="tel" value="1234" title="인증번호 첫번째 4자리" readonly></div>
						<div><input type="tel" value="1234" title="인증번호 두번째 4자리" readonly></div>
						<div><input type="tel" value="1234" title="인증번호 세번째 4자리" readonly></div>
						<div><input type="tel" value="1234" title="인증번호 네번째 4자리" readonly></div>
					</div>
				</div>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<a href="#" class="button h54 blue">인증서 가져오기</a>
				</div>
			</div>
			<div class="npki_notice_wrp">
				<h3 class="tit_h4 mt0">이용안내</h3>
				<div class="npki_notice">
					<div class="step_flow">
						<ol>
							<li>
								<div class="tbl">
									<div class="td num">
										<span>STEP</span><strong>01</strong>
									</div>
									<div class="td cont">
										<div class="tit">PC에서 NH농협카드 홈페이지에 접속하여 오른쪽 상단의 [공인인증서 관리] &gt; [인증서 내보내기] 버튼을 선택해주세요.</div>
									</div>
								</div>
							</li>
							<li>
								<div class="tbl">
									<div class="td num">
										<span>STEP</span><strong>02</strong>
									</div>
									<div class="td cont">
										<div class="tit">인증서를 선택 한 후 인증번호 16자리를 PC에 입력해 주세요.</div>
									</div>
								</div>
							</li>
							<li>
								<div class="tbl">
									<div class="td num">
										<span>STEP</span><strong>03</strong>
									</div>
									<div class="td cont">
										<div class="tit">휴대폰의 [확인] 버튼을 선택 후 인증서 비밀번호를 입력하면 완료됩니다.</div>
									</div>
								</div>
							</li>
						</ol>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>