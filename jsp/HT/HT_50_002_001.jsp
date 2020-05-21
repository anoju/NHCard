<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('VIP 등급안내');
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
				<div class="tabmenu">
					<ul>
						<li class="active"><a href="#" title="현재선택">등급 기준안내</a></li>
						<li><a href="#">등급별 서비스</a></li>
					</ul>
					<div class="tab_line" aria-hidden="true"></div>
				</div>
				<div class="ht_vip_club_wrap">
					<div class="ht_vip_club">
						<h3 class="tit_h3">VIP CLUB 등급 기준안내</h3>
						<img src="../../images/contents/ht_graph.png" alt="등급기준 안내 - 5,500만원 노블레스/3,400만원 슈퍼로얄/2,300만원로얄/1,600만원 프라임">
						<span>연간사용 기준금액(단위:만원)</span>
					</div>	
				<div class="table">
					<table class="t_center">
						<caption>연간사용 실적기준 등급을 실적기준, 하나로가족으로 나타낸 표</caption><!--#200519 caption 수정-->
						<!--#200519 html수정-->
						<colgroup>
							<col style="width:33.33%">
							<col style="width:33.33%">
							<col>
						</colgroup>
						<!--//#200519 html수정-->
						<thead>
							<tr>
								<th scope="col">VIP 등급</th>
								<th scope="col">실적기준</th>
								<th scope="col">하나로가족</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>노블레스<br>(Nobless)</td>
								<td>5,500만원<br>이상</td>
								<td>-</td>
							</tr>
							<tr>
								<td>슈퍼로얄<br>(Super Royal)</td>
								<td>3,400만원<br>이상</td>
								<td>-</td>
							</tr>
							<tr>
								<td>로얄<br>(Royal)</td>
								<td>2,300만원<br>이상</td>
								<td>-</td>
							</tr>
							<tr>
								<td>프라임<br>(Prime))</td>
								<td>1,600만원<br>이상</td>
								<td>탑클래스<br>(1,000만원 이상)</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="gray_info_box mt20">
					<div class="txt_list">
						<ul>
							<li class="dash">위 실적기준 이외 신용등급(선정시점) 기준 동시 만족 회원 선정</li>
							<li class="dash">자세한 문의는 카드고객상담센터로 문의바랍니다.</li>
						</ul>
					</div>
				</div>
				<a href="tel:1644-4000" class="tel"><i class="tel_icon" aria-hidden="true"></i><span>문의전화 : </span><strong>1644-4000</strong></a>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>