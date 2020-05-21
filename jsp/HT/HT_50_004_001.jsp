<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('VIP우대서비스');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container">
		<section id="contents" class="pt0">
			<!-- 프라임 멤버 -->
			<div class="membership_info lv_prime">
				<div class="tbl">
					<div class="td ic" aria-hidden="true">
						<i class="icon"></i>
					</div>
					<div class="td">
						<div><span class="ico_txt line">프라임</span></div>
						<div class="tit"><strong>우대서비스 기간</strong></div>
						<div class="date">2018.00.00 ~ 2018.00.00</div>
					</div>
				</div>
			</div>
			<!-- 로얄 멤버 -->
			<div class="membership_info lv_royal">
				<div class="tbl">
					<div class="td ic" aria-hidden="true">
						<i class="icon"></i>
					</div>
					<div class="td">
						<div><span class="ico_txt line">로얄</span></div>
						<div class="tit"><strong>우대서비스 기간</strong></div>
						<div class="date">2018.00.00 ~ 2018.00.00</div>
					</div>
				</div>
			</div>
			<!-- 슈퍼로얄 멤버 -->
			<div class="membership_info lv_super">
				<div class="tbl">
					<div class="td ic" aria-hidden="true">
						<i class="icon"></i>
					</div>
					<div class="td">
						<div><span class="ico_txt line">슈퍼로얄</span></div>
						<div class="tit"><strong>우대서비스 기간</strong></div>
						<div class="date">2018.00.00 ~ 2018.00.00</div>
					</div>
				</div>
			</div>
			<!-- 노블레스 멤버 -->
			<div class="membership_info lv_nobless">
				<div class="tbl">
					<div class="td ic" aria-hidden="true">
						<i class="icon"></i>
					</div>
					<div class="td">
						<div><span class="ico_txt line">노블레스</span></div>
						<div class="tit"><strong>우대서비스 기간</strong></div>
						<div class="date">2018.00.00 ~ 2018.00.00</div>
					</div>
				</div>
			</div>
			<div class="tabmenu">
				<ul>
					<li class="active"><a href="#" title="현재선택">VIP 우대서비스</a></li>
					<li><a href="#">카드 이용내역</a></li>
				</ul>
				<div class="tab_line" aria-hidden="true"></div>
			</div>
			<div class="section">
				<div class="select block">
					<select id="inpSel1" title="구분 선택">
						<option value="1">NH채움 농협은행 회원</option>
						<option value="2">NH채움 농협은행 회원2</option>
						<option value="3">NH채움 농협은행 회원3</option>
					</select>
				</div>
				<ul class="accordion_list_1 ui-accordion">
					<li>
						<div class="tit">
							<a href="#">
								<div class="title">VIP CLUB(노블레스)</div>
								<div class="sub">[캠페인] 전 가맹점 2~4개월 무이자 할부</div>
								<div class="date">2018.01.01 ~ 2018.12.31</div>
							</a>
						</div>
						<div class="panel">
							<div class="txt_list">
								<ul>
									<li class="dot">전 가맹점 2~4개월 무이자 할부서비스
										<ul>
											<li class="dash">최소매출금액 : 5만원</li>
											<li class="dash">무이자 할부 제외 가맹점 : 공과금, 상품권, 기프트카드, 우체국 우편요금</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<div class="tit">
							<a href="#">
								<div class="title">VIP CLUB(노블레스)</div>
								<div class="sub">[캠페인] 전 가맹점 2~4개월 무이자 할부 전 가맹점 2~4개월 무이자 할부 전 가맹점 2~4개월 무이자 할부</div>
								<div class="date">2018.01.01 ~ 2018.12.31</div>
							</a>
						</div>
						<div class="panel">
							<div class="txt_list">
								<ul>
									<li class="dot">전 가맹점 2~4개월 무이자 할부서비스
										<ul>
											<li class="dash">최소매출금액 : 5만원</li>
											<li class="dash">무이자 할부 제외 가맹점 : 공과금, 상품권, 기프트카드, 우체국 우편요금</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<div class="tit">
							<a href="#">
								<div class="title">VIP CLUB(노블레스)</div>
								<div class="sub">[캠페인] 전 가맹점 2~4개월 무이자 할부 전 가맹점 2~4개월 무이자 할부 전 가맹점 2~4개월 무이자 할부</div>
								<div class="date">2018.01.01 ~ 2018.12.31</div>
							</a>
						</div>
						<div class="panel">
							<div class="txt_list">
								<ul>
									<li class="dot">전 가맹점 2~4개월 무이자 할부서비스
										<ul>
											<li class="dash">최소매출금액 : 5만원</li>
											<li class="dash">무이자 할부 제외 가맹점 : 공과금, 상품권, 기프트카드, 우체국 우편요금</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<div class="tit">
							<a href="#">
								<div class="title">VIP CLUB(노블레스)</div>
								<div class="sub">[캠페인] 전 가맹점 2~4개월 무이자 할부 전 가맹점 2~4개월 무이자 할부 전 가맹점 2~4개월 무이자 할부</div>
								<div class="date">2018.01.01 ~ 2018.12.31</div>
							</a>
						</div>
						<div class="panel">
							<div class="txt_list">
								<ul>
									<li class="dot">전 가맹점 2~4개월 무이자 할부서비스
										<ul>
											<li class="dash">최소매출금액 : 5만원</li>
											<li class="dash">무이자 할부 제외 가맹점 : 공과금, 상품권, 기프트카드, 우체국 우편요금</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</li>
					<li>
						<div class="tit">
							<a href="#">
								<div class="title">VIP CLUB(노블레스)</div>
								<div class="sub">[캠페인] 전 가맹점 2~4개월 무이자 할부 전 가맹점 2~4개월 무이자 할부 전 가맹점 2~4개월 무이자 할부</div>
								<div class="date">2018.01.01 ~ 2018.12.31</div>
							</a>
						</div>
						<div class="panel">
							<div class="txt_list">
								<ul>
									<li class="dot">전 가맹점 2~4개월 무이자 할부서비스
										<ul>
											<li class="dash">최소매출금액 : 5만원</li>
											<li class="dash">무이자 할부 제외 가맹점 : 공과금, 상품권, 기프트카드, 우체국 우편요금</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</li>
				</ul>
				<div class="btn_more">
					<a href="#" class="button line">더보기 (<strong>20</strong>/25)</a>
				</div>
				<!--조회내역 없음-->
				<div class="no_list">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<div class="txt">서비스 내역이 없습니다.</div>
				</div>
				<!--//조회내역 없음-->
			</div>
		</section>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>