<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="../include/meta.jsp" %>
<%@ include file="../include/head.jsp" %>
<script>
	$(function(){
		common.title('도시가스요금 조회/해지');
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
				<h2 class="blind">도시가스요금 자동납부 해지완료</h2>
				<div class="complete_wrap">
					<i class="i_ico_50 ico_1" aria-hidden="true"></i>
					<h2 class="tit_h2">해지 완료</h2>
					<p class="txt">도시가스요금 자동이체 해지가 완료되었습니다.</p>
				</div>
				<div class="table">
					<table>
						<caption>신청자정보</caption>
						<colgroup>
							<col style="width:120px">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">성명</th>
								<td>김농협</td>
							</tr>
							<tr>
								<th scope="row">카드정보</th>
								<td>
									<div>NH올인원카드</div>
									<div class="fz_13 fc_gray mt5">5421-****-****-1234</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="table mt10">
					<table>
						<caption>도시가스요금 정보</caption>
						<colgroup>
							<col style="width:120px">
							<col style="width:auto">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">납부자 주소</th>
								<td>서울 성북구 종암로21길 127, 106동 1403호(종암동, 현대아이파크 APT 1차)</td>
							</tr>
							<tr>
								<th scope="row">도시가스사명</th>
								<td>서울도시가스</td>
							</tr>
							<tr>
								<th scope="row">납부자번호</th>
								<td>1234-1234-1234-1234</td>
							</tr>
							<tr>
								<th scope="row">신규일자</th>
								<td>2020.12.20</td>
							</tr>
							<tr>
								<th scope="row">해지일자</th>
								<td>2020.12.20</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="btn_wrap bottom_fixed">
				<div class="flex">
					<a href="#" class="button h54 gray">조회 및 해지</a>
					<a href="#" class="button h54 blue">확인</a>
				</div>
			</div>
		</section>
	</div>

	<%@ include file="../include/footer.jsp" %>
</article>
</body>
</html>