<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('통신요금');
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
				<ul class="btn_toggle grid col2 ui-tab-rdo" data-hide="#panel1,#panel2">
					<li>
						<input type="radio" id="cardRdo" name="searchType" value="1" data-show="#panel1" checked>
						<label for="cardRdo"><span>카드번호</span></label>
					</li>
					<li>
						<input type="radio" id="phoneRdo" name="searchType" value="2" data-show="#panel2">
						<label for="phoneRdo"><span>전화번호</span></label>
					</li>
				</ul>
				<div id="panel1" class="tab_rdo_panel">
					<div class="form_item">
						<div class="fm_lb">카드선택</div>
						<div class="fm_cont">
							<!-- 카드선택 전 -->
							<div class="select btn">
								<a href="#" class="btn_select off" title="팝업으로 카드 선택" onclick="Layer.open('#cardSelectPop')">카드선택</a><!-- 선택전 off 클래스 -->
							</div>
							<!-- //카드선택 전 -->
							<!-- 카드선택 후 -->
							<div class="select btn">
								<a href="#" class="btn_select on" title="팝업으로 카드 선택" onclick="Layer.open('#cardSelectPop')">전체카드</a><!-- 선택후 on 클래스 -->
							</div>
							<div class="select btn">
								<a href="#" class="btn_select on" title="팝업으로 카드 선택" onclick="Layer.open('#cardSelectPop')"><!-- 선택후 on 클래스 -->
									<div class="card_info_box">
										<div class="name">채움(농협은행)</div>
										<div class="info">
											<div>올바른 BASIC+ 카드</div>
											<div>
												<span class="type master"><span class="blind">마스터카드</span></span>
												<!-- <span class="type visa"><span class="blind">비자카드</span></span>
												<span class="type jcb"><span class="blind">jcb카드</span></span>
												<span class="type w"><span class="blind">w카드</span></span>
												<span class="type unionpay"><span class="blind">unionpay카드</span></span>
												<span class="type domestic"><span class="blind">국내전용카드</span></span> -->
												<span class="num">1234-56**-****3456</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<!-- //카드선택 후 -->
						</div>
					</div>
				</div>
				<div id="panel2" class="tab_rdo_panel">
					<div class="form_item">
						<label for="phoneNum" class="fm_lb">휴대폰번호</label>
						<div class="fm_cont">
							<div class="input"><input type="tel" id="phoneNum" maxlength="8" title="휴대폰번호 나머지 7~8자리 입력" placeholder="&prime;-&prime; 없이 입력"></div>
							<div class="error_txt">휴대폰번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<div class="form_item">
						<label for="userType" class="fm_lb">고객구분</label>
						<div class="fm_cont">
							<div class="select">
								<select id="userType" title="고객구분">
									<option value="1">NH채움 농·축협 회원</option>
								</select>
							</div>
							<div class="error_txt">휴대폰번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
				</div>
				<div class="btn_wrap mt10">
					<div class="flex">
						<a href="#" class="button blue">조회</a>
					</div>
				</div>
				<div class="total_num_box">총 <strong>50</strong>건</div>
				<div class="line_list_3">
					<ul>
						<li>
							<div class="inner">
								<div class="info_dl ty2">
									<dl>
										<dt>휴대폰 번호</dt>
										<dd><strong>[SKT] 010-12**-12**</strong></dd>
									</dl>
									<dl>
										<dt>카드</dt>
										<dd>
											<div>올바른 POINT UP 카드</div>
											<div>1234-****-****-5555</div>
										</dd>
									</dl>
									<div class="last">
										<span class="fc_blue">이용중</span>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="info_dl ty2">
									<dl>
										<dt>휴대폰 번호</dt>
										<dd><strong>[SKT] 010-12**-12**</strong></dd>
									</dl>
									<dl>
										<dt>카드</dt>
										<dd>
											<div>올바른 POINT UP 카드</div>
											<div>1234-****-****-5555</div>
										</dd>
									</dl>
									<div class="last">
										<span class="fc_red">해지완료</span>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="btn_more">
					<a href="#" class="button line">더보기 (<strong>20</strong>/25)</a>
				</div>
				<!--검색결과 없음-->
				<div class="no_list">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<div class="txt">검색결과가 없습니다.</div>
				</div>
				<!--//검색결과 없음-->

				<dl class="accordion_list accordion_dl mt30">
					<dt class="tit">
						<a href="#" class="ui-toggle-btn open"><i class="i_ico_20 ico_1" aria-hidden="true"></i>이용안내</a>
					</dt>
					<dd class="panel">
						<div class="txt_list">
							<ul>
								<li class="dot">농협을 통해 신청한 내역만 확인 가능합니다.</li>
								<li class="dot">통신사를 통하여 신청하신 내용은 해당 통신사로 문의 부탁드립니다.</li>
							</ul>
						</div>
					</dd>
				</dl>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<a href="#" class="button h54 blue">확인</a>
				</div>
			</div>
		</section>
	</div>

	<!--카드선택 팝업-->
	<div data-include-html="../include/pop/cardSelect.html"></div>
	<!--//카드선택 팝업-->

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>