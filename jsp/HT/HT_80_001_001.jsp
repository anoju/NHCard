<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('채움레터');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container">
		<section id="contents">
			<div class="chaeum_top">
				<div class="bg_1" aria-hidden="true" data-animation="fadeInDown"></div>
				<div class="bg_2" aria-hidden="true" data-animation="fadeInRight"></div>
				<div class="inner">
					<h2 class="tit">채움레터</h2>
					<div class="sub">채움이 드리는 다양한 혜택!</div>
					<div>할인꿀팁, 무이자 혜택, 채움만의<br>특별한 혜택 등 다양한 소식을<br>전해 드립니다.</div>
				</div>
			</div>
			<div class="section">
				<div class="form_item mt40">
					<div class="fm_cont">
						<div class="tbl">
							<div class="td">
								<div class="select">
									<select id="inpCompany1" title="채움레터 연도 선택">
										<option value="">연도 선택</option>
										<option value="1" selected>2020년</option>
										<option value="2">2020년</option>
									</select>
								</div>
							</div>
							<div class="td">
								<div class="select">
									<select id="inpCompany2" title="채움레터 월 선택">
										<option value="">월 선택</option>
										<option value="1">12월</option>
										<option value="2">11월</option>
										<option value="3">10월</option>
										<option value="4">9월</option>
										<option value="5">8월</option>
										<option value="6">7월</option>
										<option value="7">6월</option>
										<option value="8" selected>5월</option>
										<option value="9">4월</option>
										<option value="10">3월</option>
										<option value="11">2월</option>
										<option value="12">1월</option>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!--뷰영역-->
				<div class="chaeumletter">
					<div class="ui-swiper-wrap full">
						<div class="ui-swiper navi">
							<div class="item">
								<img src="../../images/temp/chaeumletter.png" alt="채움레터 임시 이미지">
							</div>
							<div class="item">
								<img src="../../images/temp/20-580x250.jpg" alt="채움레터 임시 이미지">
							</div>
							<div class="item">
								<img src="../../images/temp/30-580x250.jpg" alt="채움레터 임시 이미지">
							</div>
						</div>
					</div>
				</div>
				<!--//뷰영역-->
			</div>
		</section>
	</div>
	
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>