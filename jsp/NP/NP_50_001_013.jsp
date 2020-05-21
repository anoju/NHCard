<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('NH신용Manager');
	});
</script>
</head>
<body>
<article id="wrap">
	<%@ include file="../include/top.jsp" %>
	<%@ include file="../include/gnb.jsp" %>
	<div id="container">
		<section id="contents">
			<div class="first_blue_box">
				<div class="bg" aria-hidden="ture" data-animation="fadeInRight"></div>
				<div class="inner">
					<h2 class="tit">소중한 신용정보보호를 위한<br><strong class="fc_blue">NH신용Manager 서비스</strong></h2>
					<div class="mt10">코리아크레딧뷰로(주)와 제휴를 통해 <br>제공되는 서비스 입니다.</div>
					<div class="link mt25">
						<a href="#" class="btn_link">서비스 바로가기<i class="bt_ic_arr" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
			<div class="tabmenu">
				<ul>
					<li><a href="#">서비스안내</a></li>
					<li><a href="#">신청</a></li>
					<li class="active"><a href="#" title="현재선택">변경/해지</a></li>
				</ul>
				<div class="tab_line" aria-hidden="true"></div>
			</div>
			<div class="section">
				<h2 class="tit_h2">서비스 신청 내역</h2>
				<div class="table">
					<table>
						<caption>서비스신청내역</caption>
						<colgroup>
							<col style="width:120px">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">성명</th>
								<td>김*협</td>
							</tr>
							<tr>
								<th scope="row">서비스 종류</th>
								<td>NH신용Manager (800원/월)</td>
							</tr>
							<tr>
								<th scope="row">신청일</th>
								<td>2020년 04월 13일</td>
							</tr>
							<tr>
								<th scope="row">휴대폰</th>
								<td>010-12**-56**</td>
							</tr>
							<tr>
								<th scope="row">이메일</th>
								<td>non*****@nonghyup.com</td>
							</tr>
							<tr>
								<th scope="row">서비스 이용료<br>결제방식</th>
								<td>카드 결제</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="btn_wrap mt60">
					<div class="flex">
						<a href="#" class="button line blue">변경</a>
						<a href="#" class="button blue">해지</a>
					</div>
				</div>
			</div>
		</section>
	</div>

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>