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

		$('.btn_filter').click(function(e){
			e.preventDefault();
			$('.filter_opt').stop(true,false).slideToggle(500);
		});
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
					<li><a href="#" role="button">VIP 우대서비스</a></li>
					<li class="active"><a href="#" title="현재선택">카드 이용내역</a></li>
				</ul>
				<div class="tab_line" aria-hidden="true"></div>
			</div>
			<div class="section">
				<!-- 이용내역 -->
				<div class="tit_h2">
					<div><h2 class="tit">이용내역</h2></div>
					<div><a href="#" class="btn_filter" title="팝업으로 필터 설정" onclick="Layer.open('#inquiryListPop')" role="button"><span class="blind">필터</span></a></div>
				</div>
				<div class="form_item">
					<div class="blueBox_list">
						<div class="left">
							<ul>
								<li>NH채움 농협은행</li>
								<li>20.04.01~20.04.16(당월)</li>
							</ul>
						</div>
						<div class="right fz_20 va_mid t_right"><strong class="fc_blue">369,000</strong>원</div>
					</div>
				</div>
				<div class="filter_opt hide">
					<hr class="hr_line ty2 short">
					<div class="form_item">
						<label for="date2" class="fm_lb">조회기간</label>
						<div class="fm_cont">
							<ul class="btn_toggle grid col4 ui-tab-rdo" data-hide="#datepickerTxt">
								<li>
									<input type="radio" id="thisMonth" name="togDate" value="1" checked>
									<label for="thisMonth"><span>당월</span></label>
								</li>
								<li>
									<input type="radio" id="months" name="togDate" value="3">
									<label for="months"><span>월간</span></label>
								</li>
								<li>
									<input type="radio" id="month1" name="togDate" value="6">
									<label for="month1"><span>1개월</span></label>
								</li>
								<li>
									<input type="radio" id="dateEtc" name="togDate" value="etc" data-show="#datepickerTxt">
									<label for="dateEtc"><span>직접입력</span></label>
								</li>
							</ul>
							<div id="datepickerTxt" class="datepicker_box hide">
								<div class="tbl date_wrap"><!-- 달력 2개일때 data_wrap 클래스 필요-->
									<div class="td">
										<div class="input"><input type="tel" class="datepicker" placeholder="YYYY.MM.DD" title="YYYY.MM.DD 형식으로 입력"></div>
									</div>
									<div class="td dash">-</div>
									<div class="td">
										<div class="input"><input type="tel" class="datepicker" placeholder="YYYY.MM.DD" title="YYYY.MM.DD 형식으로 입력"></div>
									</div>
								</div>
							</div>
							<div class="error_txt">기간를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<div class="btn_wrap mt10">
						<div class="flex">
							<a href="#" class="button line blue">차기선정기준</a>
						</div>
					</div>
					<div class="form_item">
						<label for="inpSel1" class="fm_lb">구분</label>
						<div class="fm_cont">
							<div class="select">
								<select id="inpSel1" title="구분 선택">
									<option value="1">NH채움 농협은행</option>
									<option value="2">NH채움 농협은행</option>
									<option value="3">NH채움 농협은행</option>
								</select>
							</div>
							<div class="error_txt">구분을 선택해주세요.</div><!-- 에러메세지 입력영역 -->
						</div>
					</div>
					<div class="btn_wrap mt10">
						<div class="flex">
							<a href="#" class="button blue">조회</a>
						</div>
					</div>
					<hr class="hr_line ty2 short">
				</div>
				<div class="box_list_2 mt30">
					<ul class="chk_list">
						<li>
							<div class="inner">
								<div class="list_tit"><strong>2020.04</strong></div>
								<div class="list_data">
									<ul>
										<li>
											<div class="th">체크카드</div>
											<div class="td">123,456,789 원</div>
										</li>
										<li>
											<div class="th">할부</div>
											<div class="td">0 원</div>
										</li>
										<li>
											<div class="th">일시불</div>
											<div class="td">123,456,789 원</div>
										</li>
										<li>
											<div class="th">단기카드대출(현금서비스)</div>
											<div class="td">123,456,789 원</div>
										</li>
										<li>
											<div class="th">일부결제금액이월(리볼빙) 결제</div>
											<div class="td">123,456,789 원</div>
										</li>
										<li>
											<div class="th">- 일시불</div>
											<div class="td">123,456,789 원</div>
										</li>
										<li>
											<div class="th">- 단기카드대출(현금서비스)</div>
											<div class="td">123,456,789 원</div>
										</li>
										<li class="last">
											<div class="th">합계</div>
											<div class="td"><span class="fc_blue fz_20">1,456,789</span> 원</div>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<li>
							<div class="inner">
								<div class="list_tit"><strong>2020.03</strong></div>
								<div class="list_data">
									<ul>
										<li>
											<div class="th">체크카드</div>
											<div class="td">123,456,789 원</div>
										</li>
										<li>
											<div class="th">할부</div>
											<div class="td">0 원</div>
										</li>
										<li>
											<div class="th">일시불</div>
											<div class="td">123,456,789 원</div>
										</li>
										<li>
											<div class="th">단기카드대출(현금서비스)</div>
											<div class="td">123,456,789 원</div>
										</li>
										<li>
											<div class="th">일부결제금액이월(리볼빙) 결제</div>
											<div class="td">123,456,789 원</div>
										</li>
										<li>
											<div class="th">- 일시불</div>
											<div class="td">123,456,789 원</div>
										</li>
										<li>
											<div class="th">- 단기카드대출(현금서비스)</div>
											<div class="td">123,456,789 원</div>
										</li>
										<li class="last">
											<div class="th">합계</div>
											<div class="td"><span class="fc_blue fz_20">1,456,789</span> 원</div>
										</li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="no_list">
					<i class="i_ico_50 ico_2" aria-hidden="true"></i>
					<div class="txt">조회내역이 없습니다.</div>
				</div>
				<!--// 이용내역 -->
				<!-- VIP전용 서비스 -->
				<div class="complete_wrap ty2">
					<i class="i_ico_50 ico_2"></i>
					<h2 class="tit_h2 fz_20">고객님,<br>대단히 죄송합니다.</h2>
					<p class="txt">본 서비스는 VIP 회원에 한해<br>이용 가능한 서비스입니다.</p>
					<a href="#" class="button blue ty2">VIP서비스 안내 바로가기</a>
				</div>
				<!--// VIP전용 서비스 -->
				<!-- 미보유 카드 -->
				<div class="complete_wrap ty2">
					<i class="i_ico_50 ico_2"></i>
					<h2 class="tit_h4">보유하신 카드가 없습니다.</h2>
					<div class="notice line">
						<strong>VIP CLUB</strong>
						<p>우대서비스 기간 : 2018.00.00 ~ 2020.00.00</p>
					</div>	
					<a href="#" class="button blue ty2 mt40">보유카드 조회 바로가기</a>
				</div>
				<!--// 미보유 카드 -->
			</div>
		</section>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>