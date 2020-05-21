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
				<a href="#selectNPKI" class="button h48 blue ui-pop-open">인증서목록 열기</a>
			</div>
		</section>
	</div>
	<!-- 공인인증서 목록 팝업 -->
	<div id="selectNPKI" class="popup full" role="dialog" aria-hidden="true">
		<article class="pop_wrap">
			<div class="pop_head">
				<h1>공인인증서 목록</h1>
				<a href="#" class="pop_close ui-pop-close"><span class="blind">팝업창 닫기</span></a>
			</div>
			<div class="pop_cont bg_gray2"><!-- 인증서 없을시 bg_gray2 삭제 -->
				<div class="section">
					<!-- 인증서 목록-->
					<div class="box_list_1 npki">
						<ul>
							<li>
								<div class="checkbox ty2 large"><input type="radio" id="npki01" name="npki" disabled><i aria-hidden="true"></i></div><!-- input:disabled 속성 -->
								<label for="npki01" class="inner disabled"><!-- disabled 클래스 -->
									<div class="card_info_tbl">
										<div>
											<div class="tit"><strong>이나현()00110213213212121</strong></div>
											<div class="sub">
												<ul>
													<li><strong>발급자</strong><span>금융결제원</span></li>
													<li><strong>구분</strong><span>은행개인</span></li>
													<li><strong>만료일</strong><span>2021.02.20</span><i class="ico_txt line red">만료</i></li>
												</ul>
											</div>
										</div>
									</div>
								</label>
							</li>
							<li>
								<div class="checkbox ty2 large"><input type="radio" id="npki02" name="npki"><i aria-hidden="true"></i></div>
								<label for="npki02" class="inner">
									<div class="card_info_tbl">
										<div>
											<div class="tit"><strong>이나현()00110213213212121</strong></div>
											<div class="sub">
												<ul>
													<li><strong>발급자</strong><span>금융결제원</span></li>
													<li><strong>구분</strong><span>은행개인</span></li>
													<li><strong>만료일</strong><span>2021.02.20</span></li>
												</ul>
											</div>
										</div>
									</div>
								</label>
							</li>
							<li>
								<div class="checkbox ty2 large"><input type="radio" id="npki03" name="npki"><i aria-hidden="true"></i></div>
								<label for="npki03" class="inner">
									<div class="card_info_tbl">
										<div>
											<div class="tit"><strong>이나현()00110213213212121</strong></div>
											<div class="sub">
												<ul>
													<li><strong>발급자</strong><span>금융결제원</span></li>
													<li><strong>구분</strong><span>은행개인</span></li>
													<li><strong>만료일</strong><span>2021.02.20</span></li>
												</ul>
											</div>
										</div>
									</div>
								</label>
							</li>
						</ul>
					</div>
					<!--// 인증서 목록-->
					<!-- 인증서 없음 -->
					<div class="no_list">
						<i class="i_ico_50 ico_2" aria-hidden="true"></i>
						<div class="txt">등록된 인증서가 없습니다.</div>
						<a href="#" class="button blue mt40">인증서 가져오기</a>
					</div>
					<!--// 인증서 없음 -->
				</div>
			</div>
		</article>
	</div>
	<!--// 공인인증서 목록 팝업-->
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>