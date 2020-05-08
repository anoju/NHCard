<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="form_item">
	<label for="cardName" class="fm_lb">성명</label>
	<div class="fm_cont">
		<div class="input">
			<input type="text" id="cardName" title="성명" placeholder="성명 입력">
		</div>
	</div>
</div>
<div class="form_item">
	<label for="cardJumin1" class="fm_lb">주민등록번호</label>
	<div class="fm_cont">
		<div class="tbl">
			<div class="td">
				<div class="input"><input type="tel" id="cardJumin1" maxlength="6" title="주민등록번호 앞6자리 입력" placeholder="앞 6자리"></div>
			</div>
			<div class="td dash">-</div>
			<div class="td w_80">
				<div class="input"><input type="tel" id="cardJumin2" class="t_center no_del" maxlength="1" title="주민등록번호 뒤7자리 중 첫번째자리 입력" placeholder="뒤 1자리"></div>
			</div>
			<div class="td w_100 fc_gray3">●●●●●●</div>
		</div>
		<div class="error_txt">주민등록번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
	</div>
</div>
<div class="form_item">
	<label for="cardNumber" class="fm_lb">카드번호</label>
	<div class="fm_cont">
		<div class="tbl">
			<div class="td">
				<div class="input"><input type="tel" id="cardNumber" class="no_del" maxlength="16" title="카드번호" placeholder="&prime;-&prime; 없이 16자리 입력"></div>
			</div>
		</div>
		<div class="error_txt">카드번호를 정확하게 입력해주세요.</div><!-- 에러메세지 입력영역 -->
	</div>
</div>
<div class="form_item">
	<label for="cardDate1" class="fm_lb">유효기간</label>
	<div class="fm_cont">
		<div class="tbl">
			<div class="td">
				<div class="input"><input type="tel" id="cardDate1" maxlength="2" placeholder="월(MM)" title="유효기간 월2자리 입력"></div>
			</div>
			<div class="td dash">/</div>
			<div class="td">
				<div class="input"><input type="tel" id="cardDate2" maxlength="4" placeholder="년도(YY)" title="유효기간 년4자리 입력"></div>
			</div>
		</div>
		<div class="error_txt">유효기간을 입력해주세요.</div><!-- 에러메세지 입력영역 -->
	</div>
</div>
<div class="form_item">
	<div class="fm_lb"><label for="cardCvcNumber">카드고유확인번호</label> <a href="#cvcInfoPop" class="tooltip_btn ui-pop-open">자세한 내용 확인</a></div>
	<div class="fm_cont">
		<div class="input">
			<input type="tel" id="cardCvcNumber" maxlength="3" placeholder="숫자 3자리 입력" title="카드고유확인번호 3자리 입력">
		</div>
		<div class="error_txt">카드고유확인번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
	</div>
</div>
<div class="form_item">
	<label for="cardPwd" class="fm_lb">카드비밀번호</label>
	<div class="fm_cont">
		<div class="tbl">
			<div class="td w_80">
				<div class="input"><input type="password" id="cardPwd" class="t_center" placeholder="앞 2자리" title="카드 비밀번호 앞 2자리 입력" maxlength="2"></div>
			</div>
			<div class="td fc_gray3" aria-hidden="true">● ●</div>
		</div>
		<div class="error_txt">비밀번호를 입력해주세요.</div><!-- 에러메세지 입력영역 -->
	</div>
</div>