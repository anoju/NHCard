/********************************
 * NH카드 모바일 UI 스크립트 *
 * 작성자 : 안효주 *
 ********************************/
var $isApp = false;
$(function(){
	//다크모드 체크
	try{
		var prefersDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: Dark)').matches;
		if(prefersDark)$('html').addClass('dark');
	}catch(e){ }

	//앱인지 체크
	try{
		if(isApp){
			$('html').addClass('isApp');
			$isApp = true;
		}
	}catch(e){ }

	Html.include();
	device.check();
	device.hide();
	common.init();
	Layer.init();
	buttonUI.init();
	tooltip.init();
	scrollUI.init();
	formUI.init();
	listUI.init();

	if($('.ui-spl-txt').length)$('.ui-spl-txt').splitText();
	scrollItem.init();
	materialUI.init();

	$(window).scroll();
	$(window).resize();
});

$(window).on('load',function(){
	//console.log('window load complete');
	common.winLoad();
	formUI.winLoad();
	listUI.winLoad();
	buttonUI.winLoad();
	//buttonUI.tabNavi();

	swiperUI.init();
	Loading.aria();

	if($('.item_effect').length > 0) itemEffect('.item_effect');
	
	//이미지 미리로딩
	var preLoadingImgArry = [
		'/content/images/common/spr_bank_ico.png',
		'/content/images/common/spr_card_type.png',
		'/content/images/common/spr_card_type42.png',
		'/content/images/common/spr_card_type225.png',
		'/content/images/common/spr_ico_benefit.png',
		'/content/images/common/spr_ico_benefit_22.png',
		'/content/images/common/spr_ico_17.png',
		'/content/images/common/spr_ico_20.png',
		'/content/images/common/spr_ico_22.png',
		'/content/images/common/spr_ico_26.png',
		'/content/images/common/spr_ico_28.png',
		'/content/images/common/spr_ico_30.png',
		'/content/images/common/spr_ico_32.png',
		'/content/images/common/spr_ico_34.png',
		'/content/images/common/spr_ico_39.png',
		'/content/images/common/spr_ico_40.png',
		'/content/images/common/spr_ico_44.png',
		'/content/images/common/spr_ico_46.png',
		'/content/images/common/spr_ico_48.png',
		'/content/images/common/spr_ico_50b.png',
		'/content/images/common/spr_ico_56.png',
		'/content/images/common/spr_ico_59.png',
		'/content/images/common/spr_ico_70.png',
		'/content/images/common/spr_ico_80.png',
		'/content/images/common/spr_ico_88.png',
		'/content/images/common/spr_ico_122.png'
	];
	//preLoadingImg(preLoadingImgArry);

	$(window).scroll();
	$(window).resize();
});


/********************************
 * front 제작 플러그인 *
 ********************************/
//검색어 강조표시
$.fn.highlightTxt = function(keyword){
	return this.each(function(){
		var $firstHtml = $(this).data('html'),
			$html = $(this).html();
		if(!$firstHtml){
			$firstHtml = $(this).html();
			$(this).data('html',$html);
		}
		if(keyword != ''){
			if($firstHtml.indexOf(keyword) >= 0){
				$html = $firstHtml.split(keyword).join('<em class="t_keyword">'+keyword+'</em>');
			}else{
				$html = $firstHtml;
			}
		}else{
			$html = $firstHtml;
		}
		$(this).html($html);
	});
};

//접근성 관련 플러그인
//$(element).aria('hidden',true});
//$(element).aria({'hidden':true,'selected':true});
$.fn.aria = function(attr,val){
	var $ariaType = ['hidden','label','live','expanded','controls','selected','checked','pressed','disabled','readonly','required','labelledby','describedby','invalid','secret','valuemax','valuemin','valuenow','level','multiline','multiselectable','datatype','autocomplete','owns','haspopup','relevant','atomic','busy','dropeffect','grabbed','activedescendant','colcount','colindex','colspan','details','errormessage','flowto','posinset','rowcount','rowindex','rowspan','setsize'];
	return this.each(function(){
		var $this = $(this);
		if(typeof attr === 'string'){
			if(arrayIndexOf($ariaType,attr)){
				$this.attr('aria-'+attr,val);
			}else{
				console.log('aria-'+attr+': 확인안된 aria 속성 타입~~!\n$ariaType 및 철자 확인요망');
			}
		}else if (typeof attr == 'object'){
			var $key = Object.keys(attr),
				$length = $key.length;
			for(var i=0;i<$length;i++){
				if(arrayIndexOf($ariaType,$key[i])){
					$this.attr('aria-'+$key[i],attr[$key[i]]);
				}else{
					console.log('aria-'+$key[i]+': 확인안된 aria 속성 타입~~!\n$ariaType 및 철자 확인요망');
				}
			}
		}
	});
};
//$(element).removeAria('hidden');
//$(element).removeAria('hidden, selected');
$.fn.removeAria = function(attr){
	return this.each(function(){
		var $this = $(this);
		var $arry = txtSpaceDel(attr).split(',');
		for(var i=0;i<$arry.length;i++){
			$this.removeAttr('aria-'+$arry[i]);
		}
	});
}
//$(element).role('button');
$.fn.role = function(val){
	return this.each(function(){
		var $this = $(this);
		$this.attr('role',val);
	});
};

//resize가 끝나면: resizeEnd
//$(window).resizeEnd(function(){console.log('resizeEnd');},300);
var resizeEndCnt = 0;
$.fn.resizeEnd = function(callback, timeout){
	resizeEndCnt = resizeEndCnt+1;
	var cnt = resizeEndCnt;
	return this.each(function(){
		var $this = $(this);
		$this.resize(function(){
			if($this.data('resizeTimeout'+cnt)){
				clearTimeout($this.data('resizeTimeout'+cnt));
			}
			$this.data('resizeTimeout'+cnt, setTimeout(callback,timeout));
		});
	});
};

//scroll이 끝나면: scrollEnd
//$(window).scrollEnd(function(){console.log('scrollEnd');},300);
var scrollEndCnt = 0;
$.fn.scrollEnd = function(callback, timeout){
	scrollEndCnt = resizeEndCnt+1;
	var cnt = scrollEndCnt;
	return this.each(function(){
		var $this = $(this);
		$this.scroll(function(){
			if($this.data('scrollTimeout'+cnt)){
				clearTimeout($this.data('scrollTimeout'+cnt));
			}
			$this.data('scrollTimeout'+cnt, setTimeout(callback,timeout));
		});
	});
};

//css 지우기
// $('body').removeCss('background');
// $('body').removeCss(['border','background']);
// $('body').removeCss({color: 'white'});
$.fn.removeCss = function (css) {
	var properties = [];
	var is = $.type(css);

	if (is === 'array') properties = css;
	if (is === 'object') for (var rule in css) properties.push(rule);
	if (is === 'string') properties = css.replace(/,$/, '').split(',');

	return this.each(function () {
		var $this = $(this);
		$.map(properties, function (prop) {
			$this.css(prop, '');
		});
	});
};

//같은높이값: sameHeight(자기 아래 타켓지정 없으면 children);
//$('.ul').sameHeight();
//$('.ul').sameHeight('.li');
$.fn.sameHeight = function(item){
	var $this = this;
	$(window).on('resize',function(){
		$this.each(function(){
			var $heightArry = [],
				$item = $(this).find(item);
			if(item == null)$item = $(this).children();
			$item.each(function(){
				$(this).css('height','auto');
				var $height = $(this).outerHeight();
				$heightArry.push($height);
			});
			var $maxHeight = Math.max.apply(null, $heightArry);
			$item.css('height',$maxHeight);
		});
	});
};

//글자바꾸기: changeTxt(바꿀텍스트,바낄텍스트)
//$('.txt').changeTxt('열기','닫기');
$.fn.changeTxt = function(beforeTxt, afterTxt){
	return this.each(function(){
		var element = $(this),
			$html = element.html();
		if($html != undefined && $html != ''){
			element.html($html.split(beforeTxt).join(afterTxt));
		}
	});
};
$.fn.changeAriaLabel = function(beforeTxt, afterTxt){
	return this.each(function(){
		var element = $(this),
			$ariaLabel = element.attr('aria-label');
		if($ariaLabel != undefined){
			var $ariaLabel2 = $ariaLabel.split(beforeTxt).join(afterTxt);
			element.attr('aria-label',$ariaLabel2);
		}
	});
};

//클래스 넣었다 빼기: addRemoveClass(클래스명, 붙는 시간, 빼는 시간)
//$(this).addRemoveClass('on', 500, 1000);
$.fn.addRemoveClass = function(className,addTime,removeTime,callback){
	var element = this;
	var addIt = function(){
		element.addClass(className);
	};
	var removeIt = function(){
		element.removeClass(className);
		if(!!callback){
			callback();
		}
	};
	setTimeout(function(){addIt();setTimeout(removeIt,removeTime);},addTime);
	return this;
};


/********************************
 * front 사용함수 *
 ********************************/
var $focusableEl = '[href], input:not([disabled]), select:not([disabled]), textarea:not([disabled]), button:not([disabled]), iframe, object, embed, [tabindex]';
//Focus.disabled();
var Focus = {
	disabled:function(el){
		var $number =  -10,
			$tabIdx = $(el).attr('tabindex'),
			$dataIdx = $(el).data('tabindex');
		if($dataIdx == undefined && $tabIdx > $number)$(el).data('tabindex',$tabIdx);
		$(el).attr('tabindex',$number);
	},
	abled:function(el){
		var $tabIdx = $(el).data('tabindex');
		if($tabIdx != undefined){
			$(el).attr('tabindex',$tabIdx);
		}else{
			$(el).removeAttr('tabindex');
		}
	}
};

//Html include
var Html = {
	include:function(){
		var $elements = $.find('*[data-include-html]');
		var $fileName = location.pathname.split('/').pop();
		if($elements.length){
			$.each($elements,function(){
				var $this = $(this),
					$html = $this.data('include-html'),
					$htmlAry = $html.split('/'),
					$htmlFile = $htmlAry[$htmlAry.length-1],
					$atvIdx = $this.data('active');
				if($atvIdx == undefined)$atvIdx = 1;
				$this.load($html,function(res,sta,xhr){
					if(sta == 'success'){
						console.log('Include '+$htmlFile+'!');
						//if($this.closest('.card_detail_cont').length)$detailSwiper.update();
						if($this.find('.ui-tab').length){
							$this.find('.ui-tab').each(function(){
								$(this).find('li').first().find('a').click();
								Layer.openEl = '';
							});
						}
						if($this.find('.ui-tab-rdo').length){
							$this.find('.ui-tab-rdo').each(function(){
								var $show = $(this).find(':checked').data('show');
								if($($show).hasClass('tab_rdo_panel')){
									$($show).addClass('show');
								}else{
									$($show).show();
								}
							});
						}
						if($this.find('.ui-tab-chk').length){
							$this.find('.ui-tab-chk').each(function(){
								var $tar = $(this).data('show');
				
								if($(this).prop('checked')){
									if($($tar).hasClass('tab_panel')){
										$($tar).addClass('show');
									}else{
										$($tar).show();
									}
								}
							});
						}
						if($this.find('.select').length){
							formUI.select();
						}
						if($this.find('.ui-accordion').length)accordion.listAria('.ui-accordion','.tit a','.panel');
						if($this.find('.ui-toggle-btn').length)accordion.btnAria('.ui-toggle-btn');
						
						if($htmlFile.indexOf('top')==0){
							common.fixed('#header');
							common.header();
							if(document.title.indexOf(' | ')>0){
								var $docTit = document.title.split(' | ').shift();
								if($docTit.indexOf(' - ')>0)$docTit = $docTit.split(' - ').pop();
								common.title($docTit);
							}else{
								common.title();
							}
						}
						if($htmlFile == 'gnb.html'){
							common.gnb();
						}
						if($htmlFile == 'footer.html' || $htmlFile == 'floatingBar.html'){
							common.footer();
							buttonUI.top();
						}
						if($htmlFile == 'floatingBar.html'){
							//common.floatingBar();
						}

						if($htmlFile == 'inc_guide_navi.html'){
							//$('.gd__navi').find('.tab').eq($atvIdx-1).addClass('active');
							$('.gd__navi').find('li').each(function(){
								var $href = $(this).find('a').attr('href');
								if($href == $fileName)$(this).addClass('active');
							});
							common.fixed('.gd__navi');
							//buttonUI.tabNavi();
							var $active = $('.gd__navi').find('.active');
							if($active.length)scrollUI.center($active);
						}

						if($htmlFile == 'user.html'){
							Html.include();
							//buttonUI.tabNavi();
						}

						Html.popup();
						$this.children().unwrap();
					}
				});
			});
		}
	},
	popup:function(){
		if($('#container .'+Layer.popClass).length){
			$('#container .'+Layer.popClass).each(function(){
				if($(this).hasClass('app_install') || $(this).hasClass('pop_main')){
					if($('#wrap').length){
						$('#wrap').prepend(this);
					}else{
						$('#container').before(this);
					}
				}else{
					$('#container').after(this);
				}
			});
		}
		$('.'+Layer.popClass).each(function(){
			var $ariaHidden = $(this).attr('aria-hidden'),
				$ishtml = $(this).data('ishtml');
			if($ariaHidden == undefined)$(this).attr('aria-hidden','true');
			//$(this).removeAttr('aria-hidden');
			if($ishtml == undefined)$(this).attr('data-ishtml','true');
		});
	},
	reloadUI:function(){
		buttonUI.winLoad();
		if($('.tooltip_wrap').length)tooltip.aria('.tooltip_wrap');
		if($('.ui-accordion').length)accordion.listAria('.ui-accordion','.tit a','.panel');
		if($('.ui-toggle-btn').length)accordion.btnAria('.ui-toggle-btn');
		if($('.ui-tab').length){
			buttonUI.tabAria('.ui-tab');
			$('.ui-tab').each(function(){
				if($(this).find('.active').length){
					$(this).find('li.active').find('a').trigger('click');
				}else{
					$(this).find('li').eq(0).find('a').trigger('click');
				}
				Layer.openEl = '';
			});
		}
		if($('.ui-tab-rdo').length){
			$('.ui-tab-rdo').each(function(){
				var $show = $(this).find(':checked').data('show');
				if($($show).hasClass('tab_rdo_panel')){
					$($show).addClass('show');
				}else{
					$($show).show();
				}
			});
		}
		if($('.ui-tab-chk').length){
			$('.ui-tab-chk').each(function(){
				var $tar = $(this).data('show');
				if($(this).prop('checked')){
					if($($tar).hasClass('tab_panel')){
						$($tar).addClass('show');
					}else{
						$($tar).show();
					}
				}
			});
		}
		if($('.ui-agree').length)formUI.agreeAria('.ui-agree', '.chk_item', '.chk_link.toggle','.chk_child');
		if($('.tabmenu').length)buttonUI.tabAria('.tabmenu');
		if($('.tabmenu2').length)buttonUI.tabAria('.tabmenu2');
		if($('.tab_fixed').length)common.fixed('.tab_fixed');
		if($('.ui-tab-scroll').length)buttonUI.tabScroll();
		if($('.ui-swiper').length)swiperUI.item();

		Html.popup();
		common.footer();
		scrollItem.init();
		$(window).scroll();
	}
};
var loadingPopup = function($url,popId,$popType,isLayer){
	var $divID = 'loadingPopup',
		$isLayer = true,
		$target = $(event.target),
		$type  = $url.split('.').pop(),
		$wrap = $('#wrap').length? $('#wrap') : $('body');

	if(popId == undefined){
		var $targetPopId = $target.data('popId');
		if($targetPopId !=  undefined){
			popId = $targetPopId;
		}else{
			popId = $url;
			if(popId.indexOf('/') >= 0)popId = popId.split('/').pop();
			if(popId.indexOf('.') >= 0)popId = popId.split('.').shift();
		}
	}	
	var $popId = popId;
	if($popType == undefined)$popType = 'full'
	if(isLayer != undefined)$isLayer = isLayer;
	if(!$('#'+$popId).length){
		if($isLayer){
			if($type == 'hct')$url = '/content/html'+$url.replace('hct','html');
			$wrap.append($('<div id="'+$divID+'"></div>'));
			$('#'+$divID).load($url,function(res,sta,xhr){
				if(sta == 'success'){
					console.log('loadingPopup: '+$url);
					var $popId2 = $('#'+$divID).children().attr('id');
					if($('[id='+$popId2+']').length > 1){
						$('#'+$divID).remove();
					}else{
						$target.data('popId',$popId2);
						$('#'+$divID).children().unwrap();
					}	
					Layer.open('#'+$popId2);
				}
			});
		}else{
			$wrap.append($('<div id="'+$popId+'" class="popup '+$popType+'" role="dialog" aria-hidden="true"></div>'));
			$('#'+$popId).load($url+' .pop_wrap',function(res,sta,xhr){
				if(sta == 'success'){
					console.log('loadingPopup: '+$url);
					Layer.open('#'+$popId);
				}
			});
		}
	}else{
		Layer.open('#'+$popId);
	}
};

//로딩함수
var Loading = {
	speed:150,
	open:function(txt){
		var $html = '<div id="loading" class="hide">';
			$html += '<div class="tl">';
				$html += '<div>';
					$html += '<div class="loading_icon" role="img"';
					//$html += '<div class="ld_img" role="img"';
					if(!txt){
					$html += ' aria-label="화면을 불러오는중입니다."';
					}
					$html += '>';
						$html += '<div></div>';
						//$html += '<div class="ld_logo"></div>';
						//$html += '<div class="ld_dot"><i></i><i></i><i></i><i></i></div>';
					$html += '</div>';
					if(!!txt){
					$html += '<div class="txt">'+txt+'</div>';
					}
				$html += '</div>';
			$html += '</div>';
		$html += '</div>';

		if(!$('#loading').length)$('body').prepend($html);
		$('#loading').stop(true,false).fadeIn(Loading.speed);
	},
	close:function(){
		$('#loading').stop(true,false).fadeOut(Loading.speed,function(){
			$(this).remove();
		});
	},
	open2:function(txt){
		var $html = '<div class="loading2"></div>';

		if(!$('.loading2').length)$('body').prepend($html);
	},
	close2:function(txt){
		if($('.loading2').length)$('.loading2').remove();
	},
	box:function(tar,height,txt){
		var $wrapTag = 'div';
		if($(tar).is('ul') || $(tar).is('ol'))$wrapTag = 'li';
		if($(tar).is('dl'))$wrapTag = 'dd';
		var $html = '<'+$wrapTag+' class="loading_box"';
			if(!!height && height != '')$html +=' style="height:'+height+'px"';
			$html += '>';
			$html += '<div class="tl">';
				$html += '<div>';
					$html += '<div class="ld_img ty2" role="img" ';
					if(!txt){
					$html += ' aria-label="데이터를 불러오는중입니다."';
					}
					$html += '>';
						$html += '<div class="ld_logo"></div>';
						$html += '<div class="ld_dot"><i></i><i></i><i></i><i></i></div>';
					$html += '</div>';
					if(!!txt){
					$html += '<div class="txt">'+txt+'</div>';
					}
				$html += '</div>';
			$html += '</div>';
		$html += '</'+$wrapTag+'>';

		$(tar).html($html);
	},
	dimmedClass:'.loading_dimmed',
	aria:function(){
		var $box = $('.section_box');
		$box.each(function(){
			var $this = $(this),
				$inBox = $this.find('.section_box_in');
			if($this.find(Loading.dimmedClass).length && $inBox.length){
				$inBox.attr('aria-hidden',true);
				//$inBox.find($focusableEl).attr('tabindex',-1);
				$inBox.find($focusableEl).each(function(){
					Focus.disabled(this);
				});
			}
		});
	},
	dimmed:function(tar,txt){
		var $inBox = $(tar).find('.section_box_in');
		var $logoHtml = '<div class="ld_img" role="img" ';
			if(!txt){
			$logoHtml += ' aria-label="데이터를 불러오는중입니다."';
			}
			$logoHtml += '>';
				$logoHtml += '<div class="ld_logo"></div>';
				$logoHtml += '<div class="ld_dot"><i></i><i></i><i></i><i></i></div>';
			$logoHtml += '</div>';
		if(!!txt){
			$logoHtml += '<div class="txt">'+txt+'</div>';
		}
		if($(tar).find(Loading.dimmedClass).length){
			$(tar).find(Loading.dimmedClass+' .tl>div').html($logoHtml);
		}else{
			var $wrapTag = 'div';
			if($(tar).is('ul') || $(tar).is('ol'))$wrapTag = 'li';
			if($(tar).is('dl'))$wrapTag = 'dd';
			var $html = '<'+$wrapTag+' class="'+Loading.dimmedClass.substring(1)+'">';
				$html += '<div class="tl">';
					$html += '<div>';
					$html += $logoHtml;
					$html += '</div>';
				$html += '</div>';
			$html += '</'+$wrapTag+'>';

			$(tar).prepend($html);
		}
		if($inBox.length){
			$inBox.attr('aria-hidden',true);
			//$inBox.find($focusableEl).attr('tabindex',-1);
			$inBox.find($focusableEl).each(function(){
				Focus.disabled(this);
			});
		}
	},
	undimmed:function(tar){
		var $inBox = $(tar).find('.section_box_in');
		if($inBox.length){
			$inBox.removeAttr('aria-hidden');
			//$inBox.find($focusableEl).removeAttr('tabindex');
			$inBox.find($focusableEl).each(function(){
				Focus.abled(this);
			});
		}
		if($(tar).find(Loading.dimmedClass).length)$(tar).find(Loading.dimmedClass).remove();
	}
};

var mobileImgLoading = function(){
	$(window).on('resize',function(){
		var $width = $(window).width(),
			$type = 'mobile';
		if($width > 760)$type = 'tablet';
		var $img = $('img[data-'+$type+'-src]');
		$img.each(function(){
			var $src = $(this).attr('src'),
				$dataSrc = $(this).data($type+'-src');
			if($src != $dataSrc){
				$(this).attr('src',$dataSrc);
				if($(this).closest('.ui-swiper.swiper-container-initialized').length)swiperUI.item();
				if($(this).closest('.main_page_cont.swiper-container-initialized').length)$mainSwiper.update();
			}
		});
	});
};

//body scroll lock
var Body = {
	scrollTop :'',
	lock: function(){
		// var _sclLock = '.scroll_lock';
		// if(!$(_sclLock).length){
		// 	$('#wrap').append('<div class="'+_sclLock.substring(1)+'" aria-hidden="true"></div>');
		// }
		// $(_sclLock).unbind('touchmove').bind('touchmove',function(e){
		// 	e.preventDefault();
		// });

		if(!$('html').hasClass('lock')){
			Body.scrollTop = window.pageYOffset;
			$('#wrap').css('top',-(Body.scrollTop));
			$('html').addClass('lock');
		}
	},
	unlock: function(){
		if($('html').hasClass('lock')){
			$('html').removeClass('lock');
			$('#wrap').removeAttr('style');
			window.scrollTo(0, Body.scrollTop);
			window.setTimeout(function (){
				Body.scrollTop = '';
			}, 0);
		}
	}
};

//PC 디바이스 체크
var isPC = {
	window: function(){
		return navigator.userAgent.match(/windows/i) == null ? false : true;},
	mac: function(){
		return navigator.userAgent.match(/macintosh/i) == null ? false : true;},
	chrome: function(){
		return navigator.userAgent.match(/chrome/i) == null ? false : true;},
	firefox: function(){
		return navigator.userAgent.match(/firefox/i) == null ? false : true;},
	opera: function(){
		return navigator.userAgent.match(/opera|OPR/i) == null ? false : true;},
	safari: function(){
		return navigator.userAgent.match(/safari/i) == null ? false : true;},
	edge: function(){
		return navigator.userAgent.match(/edge/i) == null ? false : true;},
	msie: function(){
		return navigator.userAgent.match(/rv:11.0|msie/i) == null ? false : true;},
	ie11: function(){
		return navigator.userAgent.match(/rv:11.0/i) == null ? false : true;},
	ie10: function(){
		return navigator.userAgent.match(/msie 10.0/i) == null ? false : true;},
	ie9: function(){
		return navigator.userAgent.match(/msie 9.0/i) == null ? false : true;},
	ie8: function(){
		return navigator.userAgent.match(/msie 8.0/i) == null ? false : true;},
	any: function(){
		return (isPC.window()|| isPC.mac());},
	check: function(){
		if(isPC.any()){
			if(isPC.window())$('html').addClass('window');
			if(isPC.mac())$('html').addClass('mac');
			if(isPC.msie())$('html').addClass('msie');
			if(isPC.ie11())$('html').addClass('ie11');
			if(isPC.ie10())$('html').addClass('ie10');
			if(isPC.ie9())$('html').addClass('ie9');
			if(isPC.ie8())$('html').addClass('ie8');
			if(isPC.edge()){
				$('html').addClass('edge');
			}else if(isPC.opera()){
				$('html').addClass('opera');
			}else if(isPC.chrome()){
				$('html').addClass('chrome');
			}else if(isPC.safari()){
				$('html').addClass('safari');
			}else if(isPC.firefox()){
				$('html').addClass('firefox');
			}
		}
	}
};

//모바일 디바이스 체크
var isMobile = {
	Android: function(){
		return navigator.userAgent.match(/Android/i) == null ? false : true;
	},
	BlackBerry: function(){
		return navigator.userAgent.match(/BlackBerry/i) == null ? false : true;
	},
	iOS: function(){
		return navigator.userAgent.match(/iPhone|iPad|iPod/i) == null ? false : true;
	},
	iPhone :function(){
		return navigator.userAgent.match(/iPhone/i) == null ? false : true;
	},
	iPad :function(){
		return navigator.userAgent.match(/iPad/i) == null ? false : true;
	},
	iPhoneVersion :function(){
		var $sliceStart = navigator.userAgent.indexOf('iPhone OS') + 10,
			$sliceEnd = $sliceStart + 2,
			$version = parseFloat(navigator.userAgent.slice($sliceStart,$sliceEnd));
		return $version;
	},
	Opera: function(){
		return navigator.userAgent.match(/Opera Mini/i) == null ? false : true;
	},
	Windows: function(){
		return navigator.userAgent.match(/IEMobile/i) == null ? false : true;
	},
	tablet: function(){
		if(isMobile.any()){
			if(window.screen.width < window.screen.height){
				return window.screen.width > 760 ? true : false;
			}else{
				return window.screen.height > 760 ? true : false;
			}
		}
	},
	any: function(){
		return (isMobile.Android() || isMobile.iOS() || isMobile.BlackBerry() || isMobile.Opera() || isMobile.Windows());
	},
	check: function(){
		if(isMobile.any()){
			$('html').addClass('mobile');
			if(isMobile.tablet())$('html').addClass('tablet');
		}
		if(isMobile.iOS())$('html').addClass('ios');
		if(isMobile.Android())$('html').addClass('android');
		//if(isMobile.iPhoneVersion() >= 12)$('html').addClass('ios12');
	}
};

//앱인지 체크: isAppChk(),isAppChk('ios'),isAppChk('Android')
var isAppChk = function(os){
	if($isApp == true){
		switch(os){
			case 'ios':
				if(isMobile.iOS()){
					return true;
				}else{
					return false;
				}
				break;
			case 'Android':
				if(isMobile.Android()){
					return true;
				}else{
					return false;
				}
				break;
			default:
				if(os == undefined){
					return true;
				}else{
					console.log('isAppChk 함수 os 오류');
					return false;
				}
				break;
		}
	}else{
		return false;
	}
};

//디바이스체크 실행
var device = {
	iPhone8PlusH: 736,
	screenH:window.screen.height,
	screenW:window.screen.width,
	viewport:$('meta[name=viewport]').attr('content'),
	isIPhoneX: function(e){
		$('html').addClass('iPhoneX');
		$('meta[name=viewport]').attr('content',device.viewport+',viewport-fit=cover');
	},
	notIPhoneX:function(e){
		$('html').removeClass('iPhoneX');
		if(isMobile.Android()){
			$('meta[name=viewport]').attr('content',device.viewport+',target-densitydpi=medium-dpi');
		}else{
			$('meta[name=viewport]').attr('content',device.viewport);
		}
	},
	check:function(){
		isMobile.check();
		isPC.check();
		if(isMobile.any()){
			var $pixelRatio = Math.round(window.devicePixelRatio);
			if(!!$pixelRatio) $('html').addClass('pixelRatio'+$pixelRatio);
		}
		var $isIPhoneX = isMobile.iPhone() && device.screenH > device.iPhone8PlusH ? true : false;
		if($isIPhoneX){
			//첫로딩
			if($(window).width() < $(window).height()){
				device.isIPhoneX();
			}else{
				device.notIPhoneX();
			}
		}

		//가로, 세로 회전시
		if(isMobile.any()){
			if(window.orientation == 0){
				$('html').removeClass('landscape');
			}else{
				$('html').addClass('landscape');
			}
			$(window).on('orientationchange',function(){
				if(window.orientation == 0){
					$('html').removeClass('landscape');
					if($isIPhoneX)device.isIPhoneX();
				}else{
					$('html').addClass('landscape');
					if($isIPhoneX)device.notIPhoneX();
				}
			});
		}
	},
	hide:function(){
		if($('[data-device-hide]').length){
			$('[data-device-hide]').each(function(){
				var $device = $(this).data('device-hide');
				if(isMobile.any()){
					//모바일
					if($device == 'ios' && isMobile.iOS()){
						$(this).hide();
					}else if($device == 'android' && isMobile.Android()){
						$(this).hide();
					}
				}else{
					//PC
					if($device == 'ios' && $('html').hasClass('safari')){
						$(this).hide();
					}else if($device == 'android' && !$('html').hasClass('safari')){
						$(this).hide();
					}
				}
			});
		}
	}
};

//공통: 헤더, gnb, 레이아웃, 앱용플로팅버튼, 스킵네비, meta[og:image]
var common = {
	winLoad:function(){
		//hr태그 토크백 제외
		$('hr').each(function(){
			$(this).attr('aria-hidden',true);
		});

		//버튼없는 헤더 쓸때
		if($('.fake_header').length && $('#header').length){
			$('#header').addClass("no_btn");
			$('.fake_header').remove();
		}
	},
	path:function(type){
		var $path = location.pathname,
			$returnVal = $path;
		if($.isNumeric(type)){
			if($path.indexOf('/') >= 0){
				$path = $path.split('/');
				$returnVal = $path[type];
			}
		}else if(type === 'file'){
			if($path.indexOf('/') >= 0)$returnVal = $path.split('/').pop();
		}else if(type === 'fileName'){
			if($path.indexOf('/') >= 0)$path = $path.split('/').pop();
			if($path.indexOf('.') >= 0){
				$returnVal = $path.split('.').shift();
			}else{
				$returnVal = $path
			}
		}else if(type === 'fileType'){
			if($path.indexOf('/') >= 0)$path = $path.split('/').pop();
			if($path.indexOf('.') >= 0){
				$returnVal = $path.split('.').pop();
			}else{
				$returnVal = null;
			}
		}
		return $returnVal;
	},
	console:function(txt,delay){
		if(delay == undefined)delay = 3000;
		var $consoles = $('.console'),
			$top = 0;
		if($consoles.length){
			var $last = $('.console').last();
			$top = parseInt($last.css('top')) + $last.outerHeight();
		}
		$('#contents').append('<div class="console">'+txt+'</div>');
		$last = $('.console').last();
		if($top > 0)$last.css('top',$top);
		$last.delay(delay).fadeOut(500,function(){
			$(this).remove();
		});
	},
	gnbBgClass:'.gnb_bg',
	gnbBg:'<div class="gnb_bg" aria-hidden="true"></div>',
	gnbOutCont:'#skipNavi,#header,#container,#floatingBar,#footer',
	gnb:function(){
		if($('#gnb').length){
			$('#gnb').attr('aria-hidden',true);

			$(document).on('click','.btn_gnb',function(e){
				e.preventDefault();
				if($('#gnb').hasClass('show')){
					common.gnbClose();
				}else{
					common.gnbOpen();
				}
			});
			$(document).on('click','.btn_gnb_close',function(e){
				e.preventDefault();
				common.gnbClose();
			});
			$(document).on('click','.gnb_dep1>ul>li>a',function(e){
				e.preventDefault();
				common.gnbActive(this);
			});
			$(document).on('click','.gnb_content a.in_sub',function(e){
				e.preventDefault();
				common.gnbActive(this,true);
			});

			$(document).on('click','.btn_gnb_search',function(e){
				e.preventDefault();
				var $onclick = $(this).attr('onclick');
				if($onclick == undefined || $onclick == '')Layer.open('#totalSearchPop');
			});
		}
	},
	gnbOpen:function(){
		var $gnbTit = $('.gnb_header .user_setting_info').find('.tit').not('.ty2');
		if($gnbTit.find('strong').text().length > 10)$gnbTit.addClass('small');
		if($gnbTit.length && !$gnbTit.find('.ui-spl-item').length){
			$gnbTit.data('html',$gnbTit.html()).splitText(100,400);
		}

		$('.btn_gnb').addClass('on');
		Body.lock();
		$('#gnb').show().removeAttr('aria-hidden');
		$(common.gnbOutCont).attr('aria-hidden',true);
		$('#gnb').find($focusableEl).first().focus();
		$('#gnb').addClass('show');
		$('#gnb').before(common.gnbBg);
		$(common.gnbBgClass).addClass('show');
		if(!isMobile.any())Layer.focusMove('#gnb');
		if($('.btn_gnb').attr('aria-label') != '')$('.btn_gnb').changeAriaLabel('열기','닫기');
		if($('.btn_gnb').text() != '')$('.btn_gnb span').changeTxt('열기','닫기');

		$('#gnb a').each(function(){
			if($(this).attr('role') == undefined)$(this).attr('role','button');
		});
		$('.gnb_dep1>ul').attr({
			'role':'tablist'
		}).children('li').attr({
			'role':'presentation'
		}).children('a').attr({
			'role':'tab',
			'aria-selected':false
		});
		
		var $dep1Active = $('.gnb_dep1>ul').children('.active');
		if($dep1Active.length){
			$dep1Active.addClass('open').children('a').attr('aria-selected',true);
			var $dep2Active = $('.gnb_dep2>ul').children('.active');
			if($dep2Active.length){
				var $dep2ActiveTop = $dep2Active.position().top;
				var $dep2ScrollTop = $('.open>.gnb_dep2').scrollTop();
				$('.open>.gnb_dep2').stop(true,false).delay(300).animate({'scrollTop':$dep2ActiveTop+$dep2ScrollTop-25},500);
				//$('.open>.gnb_dep2').scrollTop($dep2ActiveTop+$dep2ScrollTop);
			}
		}else{
			$('.gnb_dep1>ul>li').first().addClass('open').children('a').attr('aria-selected',true);
		}
		$('.gnb_dep2 li').each(function(){
			if($(this).children('div').length){
				$(this).addClass('open');
				$(this).children('a').addClass('in_sub').attr('aria-expanded',true);
			}
		});
		

		swiperUI.item();

		//모바일 접근성보완: 모바일일때 마지막에 닫기 버튼 추가
		//var $lastCloseBtn = '<a href="#" class="btn_gnb_close last_focus" role="button" aria-label="전체메뉴 닫기"></a>';
		//if(isMobile.any() && !$('#gnb').find('.btn_gnb_close.last_focus').length)$('#gnb').append($lastCloseBtn);
	},
	gnbClose:function(){
		$('.btn_gnb').removeClass('on');
		Body.unlock();
		$('.btn_gnb').focus();
		$('#gnb').attr('aria-hidden',true);
		$(common.gnbOutCont).removeAttr('aria-hidden');
		$('#gnb').find('.gnb_head_top, .gnb_link').removeClass('fixed');
		$('#gnb').removeClass('show');
		$(common.gnbBgClass).removeClass('show');
		
		if($('.btn_gnb').attr('aria-label') != '')$('.btn_gnb').changeAriaLabel('닫기','열기');
		if($('.btn_gnb').text() != '')$('.btn_gnb span').changeTxt('닫기','열기');

		setTimeout(function(){
			$(common.gnbBgClass).remove();
			$('#gnb').removeAttr('style');
			common.gnbDepthReset();
			if($('#gnb').find('.btn_gnb_close.last_focus').length)$('#gnb').find('.btn_gnb_close.last_focus').remove();
		},610);
	},
	gnbDepthReset:function(){
		$('#gnb').find('.open').removeClass('open');
		$('#gnb').find('.close').removeClass('close');
		$('#gnb').find('.gnb_dep3').removeAttr('style');
		$('#gnb .in_sub').each(function(){
			$(this).attr('aria-expanded',false);
			if($(this).find('.offscreen').length)$(this).find('.offscreen').changeTxt('접기','펼치기');
		});
	},
	gnbActiveIng: false,
	gnbActive:function(target,isToggle){
		var $parent = $(target).parent(),
			$slideSpeed = 300,
			$dep2 = $parent.find('.gnb_dep2');
		//클릭시 메뉴 활성화
		if(isToggle){
			//뎁스2
			if(common.gnbActiveIng == false){
				common.gnbActiveIng = true;
				if($parent.hasClass('open')){
					$(target).attr('aria-expanded',false);
					$parent.removeClass('open');
					$(target).next().stop(true,false).slideUp($slideSpeed,function(){
						common.gnbActiveIng = false;

						var $dep1Height = $('.gnb_dep1').data('height'),
							$dep2Height = $parent.closest('.gnb_dep2').outerHeight();
						$('.gnb_dep1').animate({'height':Math.max($dep1Height,$dep2Height)},300);
					});
				}else{
					$(target).attr('aria-expanded',true);
					$parent.addClass('open');
					$(target).next().stop(true,false).slideDown($slideSpeed,function(){
						common.gnbInScroll(target,'sub');
						common.gnbActiveIng = false;

						var $dep1Height = $('.gnb_dep1').data('height'),
							$dep2Height = $parent.closest('.gnb_dep2').outerHeight();
						$('.gnb_dep1').animate({'height':Math.max($dep1Height,$dep2Height)},300);
					});
				}
			}
		}else{
			//뎁스1
			$parent.addClass('open').children('a').attr('aria-selected',true);
			$parent.siblings().removeClass('open').children('a').attr('aria-selected',false);
			$parent.siblings().find('.in_sub').each(function(){
				$(this).attr('aria-expanded',true).siblings('div').removeAttr('style');
				$(this).parent().addClass('open');
			});

			if($parent.hasClass('active')){
				var $dep2Active = $dep2.children('ul').children('.active');
				if($dep2Active.length){
					var $dep2ActiveTop = $dep2Active.position().top;
					var $dep2ScrollTop = $dep2.scrollTop();
					$dep2.scrollTop($dep2ActiveTop+$dep2ScrollTop-25);
				}
			}else{
				$dep2.scrollTop(0);
			}

			//$isScroll = true;
			//common.gnbInScroll(target);
		}
	},
	gnbInScroll:function(target,type){
		var $parent = $(target).parent(),
			$wrap = $('.gnb_content'),
			$wrapPdTop = parseInt($wrap.css('paddingTop')),
			$wrapHeight = $wrap.height(),
			$sclWrap = $wrap.find('.gnb_dep1'),
			$sclWrapTop = $sclWrap.scrollTop(),
			$parentTop = $parent.position().top + $sclWrapTop - $wrapPdTop,
			$parentHeight = $parent.outerHeight(),
			$scl = null,
			$sclSpeed = 200;

		if(type == 'sub'){		//뎁스2,3
			$sclWrap = $wrap.find('li.open>.gnb_dep2');
			$sclWrapTop = $sclWrap.scrollTop();
			$parentTop = $parent.position().top + $sclWrapTop;
			$sclSpeed = 300;
		}else{
			$wrap.find('.gnb_dep2').scrollTop(0);
		}

		if(($wrapHeight+$sclWrapTop) < ($parentTop+$parentHeight)){
			$scl = Math.min($parentTop,$parentTop+$parentHeight-$wrapHeight);
		}else if($parentTop < $sclWrapTop){
			$scl = $parentTop;
		}
		if($scl != null){
			$sclWrap.stop(true,false).animate({'scrollTop':$scl},$sclSpeed,function(){
				$isScroll = false;
			});
		}
	},
	title:function(str){
		var $header = $('#header');
		if(str != undefined && str != ''){
			var $title = document.title;
			if($title.indexOf(' | ')<0){
				if($title == '')$title == '농협카드 모바일';
				// if($('.tabmenu').not('.ui-tab').find('.active').length == 1){
				// 	document.title = $('.tabmenu .active a').text()+' - '+str+' | '+$title;
				// }else{
					document.title = str+' | '+$title;
				// }
			}
			if($header.length && !$header.find('h1').hasClass('logo')){
				$header.find('h1').html(str);
			}
		}
		/*else{
			str = '<a href="#">농협카드</a>';
			if($('#header').length){
				$('#header .btn_back').remove();
				$('#header h1').addClass('logo').html(str);
			}
		}*/

		
		if($header.outerHeight() < $header.children().outerHeight())$header.css('height',$header.children().outerHeight());
	},
	fixed:function(target){
		//고정(fixed)
		var $target = $(target),
			$gap = 50;
		if($target.length && $target.data('init') != true){
			$target.data('init',true);
			$(window).on('scroll',function(){
				if($('html').hasClass('lock'))return false;
				var $scrollTop = $(this).scrollTop();
				$target.each(function(){
					if($(this).closest('.'+Layer.popClass).length) return;
					var $offsetTop = Math.max(0,$(this).offset().top),
						$dataTop = $(this).data('top');
					if($dataTop == undefined){
						$dataTop = isAppChk()? 0: $gap;
					}
					if($dataTop != 0)$offsetTop = Math.max(0,$offsetTop - $dataTop);
					if($target.attr('id') == 'header' && $target.outerHeight() > $gap)$offsetTop = $offsetTop+($target.outerHeight()-$gap);
					if($scrollTop > $offsetTop){
						if(!$(this).hasClass('fixed')){
							$(this).addClass('fixed');
						}
					}else{
						if($(this).hasClass('fixed')){
							$(this).removeClass('fixed');
						}
					}
				});
			});
			$(window).resize(function(){
				$(window).scroll();
			});
		}
	},
	header: function(){
		var $header = $('#header');
		if($header.outerHeight() < $header.children('div').outerHeight())$header.css('height',$header.children('div').outerHeight());

		//버튼없는 헤더 쓸때(버튼 없이 타이틀만 있는 헤더)
		if($('.fake_header').length && $header.length){
			var $h1Tit = $header.find('h1').text(),
				$h1Tit2 = $('.fake_header h1').text();
			if($h1Tit != $h1Tit2)$('.fake_header h1').text($h1Tit);
		}

		if($('#container').hasClass('full'))$header.addClass('ty2');
	},
	footer: function(){
		if($('#footer').length && !$('html').hasClass('isApp') && $('#container').find('.fixed_space').length){
			var $div = $('#container').find('.fixed_space');
			$('body').append($div);
		}

		var $space = $('.fixed_space');
		var fixedSpaceHeight = function(){
			var $spaceArryHeight = [];
			var $naviBar = $('#floatingBar');
			if($naviBar.length && $naviBar.height() != 0){
				$spaceArryHeight.push($naviBar.outerHeight());
			}
			$('.bottom_fixed').each(function(){
				var $this = $(this);
				if(!$this.closest('.popup').length && !$this.hasClass('pop_btn')){
					$spaceArryHeight.push($this.children().outerHeight());
				}
			});

			var $maxHeight = Math.max.apply(null, $spaceArryHeight);
			$space.css('height',$maxHeight);
			if($('.floating_btn').length){
				$('.floating_btn').css('bottom',$maxHeight+20);
			}
		}
		fixedSpaceHeight();
		$(window).scroll(function(){
			var $spaceH = $space.height();
			if($space.length){
				fixedSpaceHeight();
			}
		});
	},
	step:function(){
		//<ol class="step_state" role="img" aria-label="총 4단계 중 현재단계 2단계">
		if($('.step_state').length){
			$('.step_state').each(function(){
				var $this = $(this),
					$length = $this.find('li').length,
					$onIdx = $this.find('li.on').index()+1;
				$this.attr({
					'role':'img',
					'aria-label':'총 '+$length+'단계 중 현재단계 '+$onIdx+'단계'
				});
			});
		}
	},
	skipNavi: function(){
		if(!isMobile.any()){
			//스킵네비 삽입
			var $naviHtml = '<div id="skipNavi"><a href="#contents" class="no_button">본문내용 바로가기</a></div>';
			if($('#contents').length && !$('#skipNavi').length)$('body').prepend($naviHtml);
		}
	},
	floatingBar:function(){
	 	if($('#floatingBar').length){
			if($('#container #floatingBar').length){
				var $bar = $('#floatingBar')[0];
				$('#footer').after($bar);
			}
			$('#floatingBar a').each(function(){
				var $pathname = location.pathname,
					$thisHref = $(this).attr('href');
				if($thisHref != '#'){
					if($pathname == $thisHref){
						$(this).attr('aria-selected',true).closest('li').addClass('active');
					}else{
						$(this).attr('aria-selected',false);
					}
				}
			});
		 }
	},
	landscape:function(){
		//가로모드 막기
		if(isMobile.any() && !$isApp){
			var _landscapeDiv = '.landscape_lock';
			if(!$(_landscapeDiv).length){
				var $landscapeHtml = '<div class="'+_landscapeDiv.substring(1)+'"><div class="tbl"><div class="td">이 사이트는 세로 전용입니다.<br>단말기를 세로모드로 변경해주세요.</div></div></div>';
				$('body').append($landscapeHtml);
			}
			$(_landscapeDiv).unbind('touchmove').bind('touchmove',function(e){
				e.preventDefault();
			});
		}
	},
	init:function(){
		if(!$('.fixed_space').length){
			var $wrap = $('body');
			if(!$('#footer').length && $('#container').length)$wrap = $('#container');
			$wrap.append('<div class="fixed_space" aria-hidden="true"></div>');
		}
		common.gnb();
		common.header();
		common.footer();
		common.step();
		//common.skipNavi();
		//common.floatingBar();
		//common.landscape();

		common.fixed('#header');
		if($('.tab_fixed').length)common.fixed('.tab_fixed');
	}
};

//레이어팝업(Layer): 레이어 팝업은 #container 밖에 위치해야함
var Layer = {
	id:'uiLayer',
	alertClass:'ui-alert',
	focusedClass:'pop_focused',
	focusInClass:'ui-focus-in',
	calendarClass:'ui-calendar',
	removePopClass:'ui-pop-remove',
	popClass:'popup',
	wrapClass:'pop_wrap',
	headClass:'pop_head',
	contClass:'pop_cont',
	innerClass:'section',
	showClass:'show',
	etcCont:'#skipNavi,#header,#container,#floatingBar,#footer',
	beforeCont:[],
	content:'',
	like:function(){
		var $delayTime = 2000,
			$wrap = $('#wrap').length ? $('#wrap') : $('body'),
			$html = '<div class="layer_like" aria-hidden="true"><div></div></div>';
		if(!$('.layer_like').length)$wrap.append($html);
		if(!$('.layer_like').hasClass('show'))$('.layer_like').addRemoveClass('show', 0, $delayTime);
	},
	tabFixed:function(pop,el){
		var $wrap = $(pop).find('.'+Layer.contClass),
			$head = $(pop).find('.'+Layer.headClass),
			$el = $(pop).find(el);
		if($wrap.data('init') != true){
			if($wrap.length && $el.length && ($wrap.get(0).scrollHeight > $wrap.outerHeight())){
				var $scrollTop = $wrap.scrollTop(),
					$headH = $head.outerHeight(),
					$elTop = $el.position().top+parseInt($el.css('margin-top'));
				if(($elTop-$headH) > 0){
					$wrap.data('init',true);
					$wrap.scroll(function(){
						var $this = $(this);
						$scrollTop = $this.scrollTop();
						
						if($scrollTop >= ($elTop-$headH)){
							$(el).addClass('fixed').children().css('top',$headH);
						}else{
							$(el).removeClass('fixed').children().removeAttr('style');
						}
					});
				}else{
					$(el).addClass('fixed').children().css('top',$headH);
				}
			}
		}
		if($el.data('click') != true){
			$el.data('click',true);
			$el.on('click','.ui-tab a',function(e){
				e.preventDefault();
				$wrap.scrollTop($elTop-$headH);
			});
		}
	},
	overlapChk: function(){
		//focus 이벤트 시 중복열림 방지
		var $focus = $(':focus');
		if(!!event){
			if(event.type === 'focus' && $($focus).hasClass(Layer.focusedClass)){
				return false;
			}
		}
		//같은 내용 중복열림 방지
		if(Layer.beforeCont.indexOf(Layer.content) >= 0){
			return false;
		}else{
			Layer.beforeCont.push(Layer.content);
		}
		return true;
	},
	alertHtml: function(type,popId,btnActionId,btnCancelId){
		var $html = '<div id="'+popId+'" class="'+Layer.popClass+' modal alert '+Layer.alertClass+'" role="dialog" aria-hidden="true">';
				$html += '<div class="'+Layer.wrapClass+'">';
					$html += '<div class="'+Layer.contClass+'">';
						$html += '<div class="'+Layer.innerClass+'">';
							if(type === 'prompt'){
							$html += '<div class="form_item">';
								$html += '<label for="inpPrompt" class="fm_lb" role="alert" aria-live="assertive"></label>';
								$html += '<div class="fm_cont">';
									$html += '<div class="input"><input type="text" id="inpPrompt" placeholder="입력해주세요."></div>';
								$html += '</div>';
							$html += '</div>';
							}else{
							$html += '<div class="message">';
								$html += '<div role="alert" aria-live="assertive"></div>';
							$html += '</div>';
							}
						$html += '</div>';
					$html += '</div>';
					$html += '<div class="pop_btn">';
						$html += '<div class="flex">';
							if(type === 'confirm' || type === 'prompt'){
							$html += '<button type="button" id="'+btnCancelId+'" class="button h48 gray">취소</button>';
							}
							$html += '<button type="button" id="'+btnActionId+'" class="button h48 blue">확인</button>';
						$html += '</div>';
					$html += '</div>';
				$html += '</div>';
			$html += '</div>';

		if($('#wrap').length){
			$('#wrap').append($html);
		}else{
			$('body').append($html);
		}
	},
	alertEvt: function(type, option, callback){
		var $length = $('.' +Layer.alertClass).length,
			$popId = Layer.id+'Alert'+$length,
			$actionId = $popId+'ActionBtn',
			$cancelId = $popId+'CancelBtn';

		if(typeof option === 'object'){
			Layer.content = option.content;
		}else if (typeof option == 'string'){
			//약식 설절
			Layer.content = option;
		}

		//텍스트가 아닌 배열이나 객체일때 텍스트 변환
		if(typeof Layer.content !== 'string')Layer.content = JSON.stringify(Layer.content);

		//내용있는지 체크
		if($.trim(Layer.content) == '' || Layer.content == undefined)return false;

		//중복팝업 체크
		if(Layer.overlapChk() === false)return false;

		//팝업그리기
		Layer.alertHtml(type,$popId,$actionId,$cancelId);
		if(!!option.title){
			var $titleHtml = '<div class="'+Layer.headClass+'"><h1>'+option.title+'</h1></div>';
			$('#'+$popId).find('.'+Layer.wrapClass).prepend($titleHtml);
		}
		if(!!option.actionTxt)$('#'+$actionId).text(option.actionTxt);
		if(!!option.cancelTxt)$('#'+$cancelId).text(option.cancelTxt);
		var $htmlContent = Layer.content;
		if(type === 'prompt'){
			$('#'+$popId).find('.fm_lb').html($htmlContent);
		}else{
			var $textAry = $htmlContent.split(' '),
				$textLengthAry = [];
			for(var i = 0;i<$textAry.length;i++){
				$textLengthAry.push($textAry[i].length)
			}
			var $maxTxtLength = Math.max.apply(null, $textLengthAry);
			if($maxTxtLength > 20)$('#'+$popId).find('.message>div').addClass('breakall');
			$('#'+$popId).find('.message>div').html($htmlContent);
		}
		Layer.open('#'+$popId);

		//click
		var $result = '',
			$actionBtn = $('#'+$actionId),
			$cancelBtn = $('#'+$cancelId),
			$inpVal = '';
		$actionBtn.on('click',function(){
			$result = true;
			$inpVal = $('#'+$popId).find('.input input').val();
			if(type === 'prompt'){
				if(!!option.action)option.action($result,$inpVal);
				if(!!option.callback)option.callback($result,$inpVal);
				if(!!callback)callback($result,$inpVal);
			}else{
				if(!!option.action)option.action($result);
				if(!!option.callback)option.callback($result);
				if(!!callback)callback($result);
			}
			Layer.close('#'+$popId);
		});
		$cancelBtn.on('click',function(){
			$result = false;
			if(!!option.cancel)option.cancel($result);
			if(!!option.callback)option.callback($result);
			if(!!callback)callback($result);
			Layer.close('#'+$popId);
		});
	},
	alert: function(option, callback){
		Layer.alertEvt('alert',option, callback);
	},
	confirm: function(option, callback){
		Layer.alertEvt('confirm',option, callback);
	},
	prompt: function(option, callback){
		Layer.alertEvt('prompt',option, callback);
	},
	keyEvt:function(){
		//컨펌팝업 버튼 좌우 방할기로 포거스 이동
		$(document).on('keydown', '.'+Layer.alertClass+' .pop_btn .button',function(e){
			var $keyCode = (e.keyCode?e.keyCode:e.which),
				$tar = '';
			if($keyCode == 37)$tar = $(this).prev();
			if($keyCode == 39)$tar = $(this).next();
			if (!!$tar)$tar.focus();
		});
	},
	selectId:'uiSelectLayer',
	selectIdx:0,
	selectClass:'ui-pop-select',
	select:function(target,col){
		var $target = $(target),
			$targetVal = $target.val(),
			$title = $target.attr('title'),
			//$popLength = $('.' +Layer.selectClass).length,
			//$popId = Layer.selectId+$popLength,
			$popId = Layer.selectId+Layer.selectIdx,
			$length = $target.children().length,
			$option = '',
			$opDisabled = '',
			$opTxt = '',
			$opVal = '',
			$popHtml = '',
			$isTouch = $target.hasClass('is-touch')?true:false,
			$isTouchMove = $target.hasClass('is-touch-move')?true:false,
			$isBank = false,
			$isCard = false,
			$isFullPop = false;

		Layer.selectIdx++;
		if($title == undefined)$title = '선택';
		if($title.indexOf('은행선택') >= 0 || $title.indexOf('은행 선택') >= 0){
			$isBank = true;
		}else if($title.indexOf('카드선택') >= 0 || $title.indexOf('카드 선택') >= 0){
			$isCard = true;
		}
		if($isBank){
			var $bankCut = 0,
				$bankCut2 = 0;
			$target.children().each(function(){
				var $val = $(this).val();
				if($val < 200){
					$bankCut++;
				}else{
					$bankCut2++;
				}
			});
			if(($bankCut > 8) || ($bankCut2 > 8))$isFullPop = true;
		}
		$popHtml += '<div id="'+$popId+'" class="'+Layer.popClass+' '+($isFullPop?'full':'bottom')+($isTouch || $isTouchMove?' is-touch':'')+($isTouchMove?' touchmove':'')+' '+Layer.selectClass+'" role="dialog" aria-hidden="true">';
			$popHtml += '<div class="'+Layer.wrapClass+'">';
				$popHtml += '<div class="'+Layer.headClass+'">';
					$popHtml += '<h1>'+$title+'</h1>';
					$popHtml += '<a href="#" class="pop_close ui-pop-close" role="button" aria-label="팝업창 닫기"></a>';
				$popHtml += '</div>';
				$popHtml += '<div class="'+Layer.contClass+'">';
					if($isBank){
						$popHtml += '<div class="tab_wrap tab_fixed">';
							$popHtml += '<div class="tabmenu ui-tab">';
								$popHtml += '<ul role="tablist">';
									$popHtml += '<li role="presentation"><a href="#uiSelPanel1" id="uiSelTab1" role="tab" aria-controls="uiSelPanel1" aria-selected="false">은행</a></li>';
									$popHtml += '<li role="presentation"><a href="#uiSelPanel2" id="uiSelTab2" role="tab" aria-controls="uiSelPanel2" aria-selected="false">증권</a></li>';
								$popHtml += '</ul>';
								$popHtml += '<div class="tab_line" aria-hidden="true"></div>';
							$popHtml += '</div>';
						$popHtml += '</div>';
						$popHtml += '<div id="uiSelPanel1" class="tab_panel" role="tabpanel" aria-labelledby="uiSelTab1" aria-expanded="false">';
					}

					$popHtml += '<ul class="select_item_wrap';
					if($isBank){
						$popHtml += ' bank';
					}else if($isCard){
						$popHtml += ' card';
					}else{
						if(!!col)$popHtml += ' col'+col;
					}
					$popHtml += '">';
					for(var i=0;i<$length;i++){
						$option = $target.children().eq(i);
						$opDisabled = $option.prop('disabled');
						$opTxt = $option.text();
						$opVal = $option.attr('value');
						if($opVal != ''){
							if($isBank){
								$popHtml += '<li class="'+($opVal >= 200 ? 'ty2' : 'ty1')+'">';
							}else{
								$popHtml += '<li>';
							}
							$popHtml += '<div class="select_item'+($targetVal == $opVal ? ' selected' : '')+'">';
								$popHtml += '<a href="#" class="ui-pop-select-btn'+($opDisabled?' disabled':'')+'" role="button" data-value="'+$opVal+'"';
								if($targetVal == $opVal)$popHtml +=  ' title="'+(($opTxt.length)>20 ?$opTxt.substring(20,$opTxt.lastIndexOf('(')):$opTxt)+' 선택됨"';
								$popHtml += '>';
									if($isBank)$popHtml += '<i class="bk_ico bk_'+$opVal+'" aria-hidden="true"></i>';
									if($isCard){
										if($opTxt.length > 20){
											$popHtml += '<strong class="tit">'+$opTxt.substring(20,$opTxt.lastIndexOf('('))+'</strong>';
											$popHtml += '<div class="sub"><span>'+$opTxt.substring(0,19)+'</span><span>'+$opTxt.substring($opTxt.lastIndexOf('(')+1,$opTxt.lastIndexOf(')'))+'</span></div>';
										}else{
											$popHtml += '<strong class="tit">'+$opTxt+'</strong>';
										}
									}else{
										$popHtml += '<span>'+$opTxt+'</span>';
									}
								$popHtml += '</a>';
							$popHtml += '</div>';
							$popHtml += '</li>';
						}
					}
					$popHtml += '</ul>';
					if($isBank){
						$popHtml += '</div>';
						$popHtml += '<div id="uiSelPanel2" class="tab_panel" role="tabpanel" aria-labelledby="uiSelTab2" aria-expanded="false">';
							$popHtml += '<ul class="select_item_wrap bank"></ul>';
						$popHtml += '</div>';
					}
				$popHtml += '</div>';
			$popHtml += '</div>';
		$popHtml += '</div>';

		if($('#wrap').length){
			$('#wrap').append($popHtml);
		}else{
			$('body').append($popHtml);
		}
		if($isBank){
			var isType2 = false;
			$('#'+$popId+' .select_item_wrap.bank>li').each(function(){
				if($(this).hasClass('ty2')){
					isType2 = true;
					var $wrap = $(this).closest('.tab_panel').next().find('.select_item_wrap');
					//if($wrap.find('.none').length)$wrap.find('.none').remove();
					$(this).appendTo($wrap);
				}
			});

			if(isType2 == false){ //증권사가 없으면
				$('#'+$popId).find('.tabmenu').remove();
				$('#'+$popId).find('#uiSelPanel2').remove();
				$('#'+$popId).find('.select_item_wrap.bank').unwrap();
			}else{
				if($targetVal >= 200){
					$('#uiSelTab2').click();
				}else{
					$('#uiSelTab1').click();
				}
			}
		}

		$target.data('popup','#'+$popId);

		$('#'+$popId).on('click','.ui-pop-select-btn',function(e){
			e.preventDefault();
			if(!$(this).hasClass('disabled')){
				var $btnVal = $(this).data('value'),
					$btnTxt = $(this).text();
				$(this).parent().addClass('selected').closest('li').siblings().find('.selected').removeClass('selected');
				$target.val($btnVal).change();
				Layer.close('#'+$popId);
			}
		});
	},
	isSelectOpen: false,
	selectOpen:function(select,e){
		var $select = $(select);
		var $txtLengthArry = [];
		if($select.prop('disabled')) return false;
		if($select.find('option').length < 1) return console.log('select에 option 없음');
		if($select.find('option').length == 1 && $select.find('option').val() == '') return console.log('select에 option의 value가 0이라 리턴');
		Layer.isSelectOpen = true;
		$select.find('option').each(function(){
			var $optVal = $(this).val(),
				$optTxt = $(this).text();
			if($optVal != ''){
				$txtLengthArry.push($optTxt.length);
			}
		});
		var $maxTxtLength = Math.max.apply(null, $txtLengthArry);

		//들어갈수 있는 글자수 체크
		var inWidthTxt = function(width,col){
			var	_fontSize = 14,
				_paddingBorder = 28,
				_val = ((width/col)-_paddingBorder)/(_fontSize*0.9);
			return Math.floor(_val);
		};
		var $winW = $(window).width(),
			$contW = $winW - (17*2),
			$inTxt1 = inWidthTxt($contW,3),
			$inTxt2 = inWidthTxt($contW,2);

		//글자수에따른 팝업 분류
		if($maxTxtLength <= $inTxt1){
			Layer.select($select,3);
		}else if($maxTxtLength <= $inTxt2){
			Layer.select($select,2);
		}else{
			Layer.select($select);
		}

		var $pop = $select.data('popup');
		//var $currentTarget = '';
		//if(!!e)$currentTarget = $(e.currentTarget);
		Layer.open($pop,function(){
			//if(!!e)$($pop).data('returnFocus',$currentTarget);
		});
	},
	selectUI:function(){
		//셀렉트 팝업
		$(document).on('click','.ui-select-open',function(e){
			e.preventDefault();
			if(Layer.isSelectOpen == false){
				var $select = $($(this).attr('href'));
				if(!$select.length)$select = $(this).siblings('select');
				Layer.selectOpen($select,e);
			}
		});
		$(document).on('click','.ui-select-lbl',function(e){
			e.preventDefault();
			var $tar = $(this).is('a') ? $(this).attr('href') : '#'+$(this).attr('for');
			$($tar).next('.ui-select-open').focus().click();
		});
		$(document).on('click','.' +Layer.selectClass,function(e){
			e.preventDefault();
			Layer.close(this,function(){
				if(typeof(closeCallbackAction) == "function" ){
					closeCallbackAction();
				}
			});
		}).on('click','.'+Layer.wrapClass,function(e){
			e.stopPropagation();
		});
	},
	reOpen:false,
	openEl:'',
	openPop:[],
	opening:0,
	open:function(tar,callback){
		if($(tar).length && $(tar).children('.'+Layer.wrapClass).length){
			Layer.opening++;
			var $idx = $(tar).index('.'+Layer.popClass),
				$show = $('.'+Layer.popClass+'.'+Layer.showClass).length,
				$id = $(tar).attr('id'),
				$lastPop = '',
				$lastCloseBtn = '<a href="#" class="pop_close last_focus ui-pop-close" role="button" aria-label="팝업창 닫기"></a>';
			
			if(Layer.openPop.length)$lastPop = Layer.openPop[Layer.openPop.length-1];
			if($show > 0)$(tar).css('z-index','+='+$show);
			if($id == undefined){
				$id = Layer.id+$idx;
				$(tar).attr('id',$id);
			}
			if(Layer.openPop.indexOf('#'+$id) < 0)Layer.openPop.push('#'+$id);

			//fixed버튼 있을때 빈공간삽입
			if($(tar).find('.'+Layer.contClass).next('.bottom_fixed').length){
				$(tar).find('.'+Layer.contClass).addClass('after_btn');
			}
			if(isMobile.iOS() && $(tar).find('.'+Layer.contClass).find('.bottom_fixed').length){
				$(tar).find('.'+Layer.contClass).addClass('auto_scroll');
			}

			var $openDelay = 50 * Layer.opening;
			//if($(tar).data('ishtml') != true && isMobile.iOS())$openDelay = 300 * Layer.opening;
			
			$(tar).attr('aria-hidden',false).show();
			setTimeout(function(){
				//리턴 포커스
				var $focusEl = '';
				try{
					if(event.currentTarget != document){
						$focusEl = $(event.currentTarget);
					}else{
						$focusEl = $(document.activeElement);
					}
				}catch(error){
					$focusEl = $(document.activeElement);
				}
				
				/*console.log($focusEl[0],$focusEl.attr('class'))
				if(common.path(3) == 'guide')common.console('$focusEl :'+$focusEl.attr('id')+','+$focusEl.attr('class')+'<br>Layer.openEl :'+$(Layer.openEl).attr('id')+','+$(Layer.openEl).attr('class'));*/

				if(Layer.openEl != '' && !$focusEl.is($focusableEl))$focusEl = $(Layer.openEl);
				if($($lastPop).data('returnFocus') == $focusEl)$focusEl = $(Layer.openEl);
				if($($focusEl).is($focusableEl)){
					$(tar).data('returnFocus',$focusEl);
					$focusEl.addClass(Layer.focusedClass);
				}

				//팝업 in 포커스
				if(!isMobile.any()){
					//PC
					if($(tar).hasClass(Layer.alertClass)){
						$(tar).find('.pop_btn .button').last().focus();
					}else{
						$(tar).attr({'tabindex':0}).focus();
					}
				}else{
					var $first = '',
						$focusInEl = $(tar).find('.'+Layer.focusInClass),
						$thisTxt = '',
						$childrenTxt = '';
					//모바일
					if($(tar).find('.'+Layer.headClass).length){
						$first = $(tar).find('.'+Layer.headClass).children().first()
						if(!$first.is($focusableEl))$first.attr('tabindex',-1);
						$first.focus();
					}else{
						if(!$focusInEl.length){
							$focusInEl = $(tar).find('.'+Layer.contClass);
							$first = $focusInEl.children().not('br').first();
							if($first.text() == '' || $first.attr('aria-hidden') == 'true')$first = $first.next();
							$thisTxt = $.trim($focusInEl.text());
							$childrenTxt = $.trim($first.text());
							while($focusInEl.children().not('br').length && $thisTxt.indexOf($childrenTxt) == 0){
								$focusInEl = $first;
								$first = $first.children().not('br').first();
								if($first.text() == '' || $first.attr('aria-hidden') == 'true')$first = $first.next();
								$thisTxt = $.trim($focusInEl.text());
								$childrenTxt = $.trim($first.text());
							}
							$focusInEl.addClass(Layer.focusInClass);
						}
						if(!$focusInEl.is($focusableEl))$focusInEl.attr('tabindex',-1);
						$focusInEl.focus();
					}
				}
				if($('#gnb').hasClass('show')){
					$('#gnb').attr('aria-hidden',true);
				}else{
					$(Layer.etcCont).attr('aria-hidden',true);
				}
				

				//열려있는 팝업
				if($lastPop != '' && $lastPop != tar)$($lastPop).attr('aria-hidden',true);

				//웹접근성
				var $tit = $(tar).find('.'+Layer.headClass+' h1');
				if($tit.length){
					if($tit.attr('id') == undefined){
						$tit.attr('id',$id+'Label');
						$(tar).attr('aria-labelledby', $id+'Label');
					}else{
						$(tar).attr('aria-labelledby', $tit.attr('id'));
					}
				}

				//popup(bottom:select)의 여러개의 tab_panel 높이 동일하게(안그럼 탭클릭시 왔다리 갔다리함)
				if($(tar).hasClass('bottom') && $(tar).find('.tab_panel').length > 1){
					$(tar).sameHeight('.tab_panel');
				}

				//팝업안 고정탭
				if($(tar).find('.tab_fixed').length)Layer.tabFixed(tar,'.tab_fixed');

				//팝업안 swiper
				if($(tar).find('.ui-swiper').length)swiperUI.item();
				if($(tar).find('.swipe_tab').length){
					if($tabSwiper != '' && $tabSwiper != undefined){
						$tabSwiper.update();
					}
				}

				//열기
				if($(tar).hasClass('modal ty2')){
					var $spaceH = $('.fixed_space').outerHeight();
					$(tar).find('.'+Layer.wrapClass).css('margin-bottom',$spaceH);
					$(tar).find('.pop_close').css('bottom',$spaceH+20);
				}
				if(!$('html').hasClass('lock'))Body.lock();
				$(tar).addClass(Layer.showClass);
				$(tar).find('.'+Layer.contClass).scrollTop(0);

				//열때 플루팅 버튼
				if($(tar).hasClass('modal ty2') && $focusEl.closest('.floating_btn').length){
					var $zIdx = parseInt($(tar).css('z-index'));
					$focusEl.closest('.floating_btn').addClass('pop_on').css('z-index',$zIdx+1);
				}

				var $popWrapH = '';
				var $isFull = false;
				if($(tar).hasClass('is-touch')){
					$(tar).find('.pop_head').on('touchstart',function(){
						var $this = $(this);
						$popWrapH = $this.closest('.pop_wrap').outerHeight();
					});
					$(tar).find('.pop_head').swipe({
						swipeStatus:function(event,phase,direction,distance,duration,fingerCount,fingerData,currentDirection){
							var $this = $(this),
								$popup = $(tar),
								$wrap = $this.closest('.pop_wrap'),
								$min = 200,
								$max = $popup.height(),
								$isUp = direction == 'up'?true:false,
								$isDown = direction == 'down'?true:false,
								$distance = $isDown?-distance:distance,
								$height = Math.max($min,Math.min($max,$popWrapH+$distance));
							if($isUp || $isDown){
								if($(tar).hasClass('touchmove')){
									//터치무브만큼 크기조절
									$wrap.css('height',$height);
									if($height == $max){
										$popup.removeClass('bottom').addClass('full');
									}else{
										$popup.removeClass('full').addClass('bottom');
									}
								}else{
									//터치무브로 상태값 바로 변경
									if($popup.hasClass('bottom'))$wrap.css('height',$height);
									if($popup.hasClass('full')){
										$isFull = true;
										$popup.removeClass('full').addClass('bottom');
										$wrap.css('height',$height);
									}
									if(phase == 'end' || phase == 'cancel'){
										if(distance > 50){
											if($popup.hasClass('bottom') && !$isFull){
												if($isUp){
													$wrap.animate({'height':'100%'},300,function(){
														$wrap.removeCss('height');
														$popup.removeClass('bottom').addClass('full');
													});
												}
												if($isDown){
													Layer.close(tar);
												}
											}
											if($isFull && $isDown){
												$wrap.animate({'height':'50%'},300,function(){
													$isFull = false;
													$wrap.removeCss('height');
												});
											}
										}else{
											if($isFull){
												$wrap.animate({'height':'100%'},300,function(){
													$isFull = false;
													$wrap.removeCss('height');
													$popup.removeClass('bottom').addClass('full');
												});
											}else{
												$wrap.animate({'height':'50%'},300,function(){
													$wrap.removeCss('height');
												});
											}
											
										}
									}
								}
							}

							

						},
						cancleTreshold:0
					});
				}

				//as-is:iframe
				if($(tar).find('#box_interest').length)calcHeight();

				if(!isMobile.any())Layer.focusMove(tar);
				Layer.position(tar);
				if(!!callback){
					callback();
				}
				setTimeout(function(){
					$(window).resize();
				},10);
				Layer.opening--;
			}, $openDelay);
			//모바일 접근성보완: 모바일일때 마지막에 닫기 버튼 추가
			//if(!isAppChk() && isMobile.any() && !$(tar).find('.pop_close.last_focus').length && $(tar).find('.pop_close').not('.last').length)$(tar).children('.'+Layer.wrapClass).append($lastCloseBtn);
		}else{
			//팝업 없을때
			if(!Layer.reOpen){
				Layer.reOpen = true;
				console.log(tar,'팝업없음, 0.5초 후 open 재시도');
				setTimeout(function(){
					Layer.open(tar,callback);
				},500);
			}else{
				Layer.reOpen = false;
				console.log(tar,'재시도해도 팝업없음');
			}
		}
	},
	close:function(tar,callback){
		if(!$(tar).hasClass(Layer.showClass)) return console.log(tar,'해당팝업 안열려있음');
		var $id = $(tar).attr('id'),
			$closeDelay = 700,
			$lastPop = '',
			$visible = $('.'+Layer.popClass+'.'+Layer.showClass).length;

		Layer.openPop.splice(Layer.openPop.indexOf('#'+$id),1);
		if(Layer.openPop.length)$lastPop = Layer.openPop[Layer.openPop.length-1];
		if($visible == 1){
			if($('#gnb').hasClass('show')){
				$('#gnb').removeAttr('aria-hidden');
			}else{
				Body.unlock();
				$(Layer.etcCont).removeAttr('aria-hidden');
			}
		}
		if($lastPop != '')$($lastPop).attr('aria-hidden',false);

		//포커스
		var $returnFocus = $(tar).data('returnFocus');
		if($returnFocus != undefined){
			$returnFocus.removeClass(Layer.focusedClass).focus();
			//플루팅 버튼
			if($returnFocus.closest('.floating_btn').length && $returnFocus.closest('.floating_btn').hasClass('pop_on')){
		 		$returnFocus.closest('.floating_btn').removeCss('z-index').removeClass('pop_on');
			}
		}else{
			//리턴 포커스가 없을때
			if($('#header').length && !$('html').hasClass('isApp')){
				if($('.btn_back').length){
					$('.btn_back').focus();
				}else if($('#header h1.logo').length){
					$('#header h1.logo a').focus();
				}else{
					$('#header').focus();
				}
			}else{
				$('#container').focus();
			}
		}

		//닫기
		$(tar).removeClass(Layer.showClass).data('focusMove',false).data('popPosition',false);
		$(tar).attr('aria-hidden','true').removeAttr('tabindex aria-labelledby');
		if($(tar).hasClass('no_motion'))$closeDelay = 10;
		setTimeout(function(){
			$(tar).removeAttr('style');
			$(tar).find('.'+Layer.headClass).removeAttr('style').removeClass('shadow').find('h1').removeAttr('tabindex');
			$(tar).find('.'+Layer.contClass).removeAttr('tabindex style');
			$(tar).find('.'+Layer.focusInClass).removeAttr('tabindex');
			if($(tar).find('.pop_close.last_focus').length)$(tar).find('.pop_close.last_focus').remove();
		},$closeDelay);

		//알럿창
		if($(tar).hasClass(Layer.alertClass) || $(tar).hasClass(Layer.selectClass) || $(tar).hasClass(Layer.calendarClass) || $(tar).hasClass(Layer.removePopClass)){
			setTimeout(function(){
				if($(tar).hasClass(Layer.selectClass))Layer.isSelectOpen = false;
				if($(tar).hasClass(Layer.alertClass)){
					var $content = $(tar).find('.message>div').html();
					Layer.beforeCont.splice(Layer.beforeCont.indexOf($content),1);
				}
				$(tar).remove();
			},$closeDelay);
		}

		//callback
		if(!!callback){
			setTimeout(function(){
				callback();
			},$closeDelay);
		}
	},
	position:function(tar){
		var isWinPop = false;
		if($(tar).hasClass('win'))isWinPop = true;	//win클래스로 윈도우팝업인지 체크
		if(!$(tar).hasClass(Layer.showClass) && isWinPop == false)return false;
		if($(tar).data('popPosition') == true)return false;
		$(tar).data('popPosition',true);
		var $head = $(tar).find('.'+Layer.headClass),
			$tit = $head.find('h1'),
			$content = $(tar).find('.'+Layer.contClass);
		
		//shadow 넣기
		var addShadow = function(el){
			var $contScrollTop = $(el).scrollTop();
			if($contScrollTop > 50){
				$head.addClass('shadow');
			}else{
				$head.removeClass('shadow');
			}
		};


		var headTitHeight = function(headCont, titCont, contentCont){
			var $headH = headCont.outerHeight(),
				$titH = titCont.outerHeight(),
				$padTop = parseInt(contentCont.css('padding-top'));
			if($headH < $titH && !headCont.hasClass('blind')){
				headCont.css('height',$titH+(parseInt(headCont.css('paddingTop'))));
				contentCont.css('padding-top',$titH+($padTop-$headH));
			}
		};

		$(window).resize(function(){
			$head.removeAttr('style').removeClass('shadow');
			$content.removeAttr('tabindex style');

			//타이틀이 두줄 이상이 될때
			//개발에서 스크립트로 제목제어 시 제대로된 높이값을 갖고올수 없어 setTimeout케이스 추가
			if($.trim($tit.text()).length < 2){
				setTimeout(function(){
					headTitHeight($head,$tit,$content);
				},200);
			}else{
				headTitHeight($head,$tit,$content);
			}
			
			if(!isWinPop){	//레이어팝업
				//컨텐츠 스크롤이 필요할때
				var $height = $(tar).height(),
					$popHeight = $(tar).find('.'+Layer.wrapClass).outerHeight();
				if(!$(tar).hasClass('full'))$content.css('max-height',$height);

				//팝업 헤더 shadow
				addShadow($content);

				//바텀시트 선택요소로 스크롤
				var $sclWrp = $(tar).find('.pop_cont');
				if($(tar).hasClass(Layer.showClass) && $(tar).hasClass(Layer.selectClass) && $(tar).find('.selected').length && !$sclWrp.hasClass('scrolling')){
					
					var $sclWrpPdT = parseInt($sclWrp.css('padding-top')),
						$sclWrpH = $sclWrp.outerHeight(),
						$sclWrpH2 = $sclWrp.get(0).scrollHeight,
						$selected = $sclWrp.find('.selected'),
						$selectedH = $selected.outerHeight(),
						$selectedTop = $selected.position().top;

					if($sclWrpH < $sclWrpH2){
						$sclWrp.addClass('scrolling');
						var $sclTop = ($selectedTop-$sclWrpH+($sclWrpH/2)-($selectedH/2)+($sclWrpPdT/2));
						$sclWrp.animate({'scrollTop':$sclTop},300,function(){
							$sclWrp.removeClass('scrolling');	
						});
					}
				}
			}else{ //윈도우팝업
				addShadow(window);
			}
		});

		

		//팝업 헤더 shadow
		if(!isWinPop){	//레이어팝업
			$content.scroll(function(){
				addShadow(this);
			});
		}else{ //윈도우팝업
			$(window).scroll(function(){
				addShadow(this);
			});
		}
	},
	focusMove:function(tar){
		if(!$(tar).hasClass(Layer.showClass))return false;
		if($(tar).data('focusMove') == true)return false;
		$(tar).data('focusMove',true);
		var $tar = $(tar),
			$focusaEls = $tar.find($focusableEl),
			$isFirstBackTab = false;

		$focusaEls.on('keydown',function(e){
			var $keyCode = (e.keyCode?e.keyCode:e.which),
				$focusable = $tar.find($focusableEl).not('.last_focus'),
				$focusLength = $focusable.length,
				$firstFocus = $focusable.first(),
				$lastFocus = $focusable.last(),
				$index = $focusable.index(this);

			$isFirstBackTab = false;
			if($index == ($focusLength-1)){ //last
				if ($keyCode == 9){
					if(!e.shiftKey){
						$firstFocus.focus();
						e.preventDefault();
					}
				}
			}else if($index == 0){	//first
				if($keyCode == 9){
					if(e.shiftKey){
						$isFirstBackTab = true;
						$lastFocus.focus();
						e.preventDefault();
					}
				}
			}
		});

		$tar.on('keydown',function(e){
			var $keyCode = (e.keyCode?e.keyCode:e.which),
				$focusable = $tar.find($focusableEl).not('.last_focus'),
				$lastFocus = $focusable.last();

			if(e.target == this && $keyCode == 9){
				if(e.shiftKey){
					$lastFocus.focus();
					e.preventDefault();
				}
			}
		});

		$(document).on('focusin',$tar.selector+' .last_focus',function(e){
			var $focusable = $tar.find($focusableEl).not('.last_focus'),
				$firstFocus = $focusable.first(),
				$lastFocus = $focusable.last();
			if($isFirstBackTab){
				$lastFocus.focus();
			}else{
				$firstFocus.focus();
			}
		});
	},
	init:function(){
		Html.popup();

		$(document).on('click',$focusableEl, function(e){
			Layer.openEl = e.currentTarget;
		});
		setTimeout(function(){
			Layer.openEl = '';
		},100);

		//열기
		$(document).on('click','.ui-pop-open',function(e){
			e.preventDefault();
			var $pop = $(this).attr('href'),
				$currentTarget = $(e.currentTarget);
			if(isAppChk() && typeof(callHeaderVisible) == 'function')callHeaderVisible(false);
			Layer.open($pop,function(){
				$($pop).data('returnFocus',$currentTarget);
			});
		});

		//닫기
		$(document).on('click', '.ui-pop-close',function(e){
			e.preventDefault();
			if($(this).closest('.'+Layer.wrapClass).hasClass('win') && !$(this).closest('.'+Layer.popClass).length){
				//윈도우팝업
				// if(window.history.length == 1){
				// 	window.close();
				// }else{
				// 	history.back();
				// }
			}else{
				//레이어팝업
				var $pop = $(this).attr('href');
				if ($pop == '#' || $pop == '#none' || $pop == undefined)$pop = $(this).closest('.'+Layer.popClass);
				if(isAppChk() && typeof(callHeaderVisible) == 'function')callHeaderVisible(true);
				Layer.close($pop);
			}
		});
		$(document).on('click', '.bg-pop-close',function(e){
			var $btnClose = $(this).find('.pop_head .pop_close');
			if($btnClose.length){
				$btnClose.click();
			}else{
				Layer.close(this);
			}
		}).on('click','.bg-pop-close .'+Layer.wrapClass,function(e){
			e.stopPropagation();
		});;

		Layer.keyEvt();
		Layer.selectUI();

		//윈도우팝업
		if($('.pop_wrap.win').length){
			Layer.position('.pop_wrap.win');
		}

		//윈도우팝업 열기버튼
		$(document).on('click','.btn_winpop',function(e){
			e.preventDefault();
			var $href = $(this).attr('href'),
				$hrefFile = $href.split('/').pop().split('.').shift(),
				$popWidth = $(this).data('pop-width'),
				$popHeight= $(this).data('pop-height'),
				$popLeft = $(this).data('pop-left'),
				$popTop = $(this).data('pop-top');

			if(isMobile.any()){
				window.open($href,$hrefFile);
			}else{
				if(!$popWidth)$popWidth = 400;
				if(!$popHeight)$popHeight = 500;
				if($(this).hasClass('screen')){
					//스크린기준 센터
					if($popHeight >= screen.availHeight){
						$popHeight = Math.min(screen.availHeight,$popHeight);
					}
					if(!$popTop)$popTop=screenCenter.top($popHeight);
					if(!$popLeft)$popLeft=screenCenter.left($popWidth);
				}else{
					//브라우저기준 센터
					if($popHeight >= window.innerHeight){
						$popHeight = Math.min(window.innerHeight,$popHeight);
					}
					if(!$popTop)$popTop = winPopCenter.top($popHeight);
					if(!$popLeft)$popLeft = winPopCenter.left($popWidth);
				}
				window.open($href,$hrefFile,"width="+$popWidth+",height="+$popHeight+", left="+$popLeft+", top=" +$popTop+", scrollbars=yes, menubars=no, location=no, toolbar=no, status=no, resizable=no").focus();
			}
		});
	}
};
var winPopCenter = {
	top: function(num){
		var $num = Math.min(window.outerHeight,parseInt(num)),
			result = window.screenY + (window.outerHeight/2) - ($num/2);
		result = result-34; //브라운제상단 영역(주소창 등등)
		return result;
	},
	left: function(num){
		var $num = Math.min(window.outerWidth,parseInt(num)),
			result = window.screenX + (window.outerWidth/2) - ($num/2);
		//console.log(window.screenX,window.outerWidth,$num,num);
		return result;
	}
};

//토스트팝업
var toastBox = function(txt,delayTime){
	var $className = '.toast_box',
		closeTime = 500;

	if(delayTime == undefined )delayTime = 3000;

	var $boxHtml = '<div class="'+$className.substring(1)+'">';
		$boxHtml += '<div class="txt">'+txt+'</div>';
		$boxHtml += '</div>';
	$('#contents').before($boxHtml);
	var $toast = $($className).last();
	if($('.fixed_space').length){
		var $bottom = parseInt($toast.css('bottom')),
			$spaceH = $('.fixed_space').outerHeight();
		$toast.css('bottom',$bottom+$spaceH);
	}
	$toast.addRemoveClass('on', 0, delayTime,function(){
		setTimeout(function(){
			$toast.addClass('off').removeAttr('style');
		},closeTime);
	});
};

//버튼 관련
var $tabNavis = [];
var $tabSwiper = '';
var buttonUI ={
	winLoad: function(){
		//링크없는 a태그 role=button 추가
		$('a').each(function(e){
			var $href = $(this).attr('href'),
				$role = $(this).attr('role'),
				$onclick = $(this).attr('onclick');
			if(!$(this).hasClass('no_button')){
				if($href == undefined || $href == '#' || $href == '#none'){
					if($href == undefined || $href == '#')$(this).attr({'href':'#none'});
					$(this).removeAttr('target');
					if($role == undefined)$(this).attr('role','button');
				}else{
					if(($href.startsWith('#') || $href.startsWith('javascript')) && $role == undefined)$(this).attr('role','button');
				}
			}
			if($(this).hasClass('tel') || ($href != undefined && $href.startsWith('tel')))$(this).attr('title','전화걸기');
			if($onclick != undefined && $onclick.startsWith('callMakeCall'))$(this).attr('title','전화걸기');
		});

		//type없는 button들 type 추가
		$('button').each(function(e){
			var $type = $(this).attr('type');
			if($type == undefined)$(this).attr('type','button');
		});
	},
	default: function(){
		//href가 #시작할때 a태그 클릭 시 기본속성 죽이기
		$(document).on ('click','a',function(e){
			var $href = $(this).attr('href'),
				$target = $(this).attr('target');
			if(!$(this).hasClass('no_button')){ //기본속성 살리는 클래스(스킵네비 등)
				if($href.startsWith('#')){
					e.preventDefault();
				}
			}

			if(isAppChk()){
				//앱에서 'tel:'도 전화걸기
				if($href.indexOf('tel:') == 0 && typeof(callMakeCall) == 'function'){
					e.preventDefault();
					var $callNumber = $.trim($href.substr(4));
					callMakeCall($callNumber);
				}

				//앱에서 새창열기
				if($target == '_blank' && typeof(openBrowser) == 'function'){
					e.preventDefault();
					openBrowser($href);
				}
			}
		});
	},
	effect: function(){
		//버튼 클릭 효과
		var btnInEfList = 'a.button, button.button, .btn_click';
		$(document).on('click', btnInEfList,function(e){
			var $btnEl = $(this),
				$delay = 650;

			if(!$btnEl.is('.disabled')){
				if(!$btnEl.find('.btn_click_in').length)$btnEl.append('<i class="btn_click_in"></i>');
				var $btnIn = $btnEl.find('.btn_click_in'),
					$btnMax = Math.max($btnEl.outerWidth(), $btnEl.outerHeight()),
					$btnX = e.pageX - $btnEl.offset().left - $btnMax/2,
					$btnY = e.pageY - $btnEl.offset().top - $btnMax/2;
				$btnIn.css({
					'left':$btnX,
					'top':$btnY,
					'width':$btnMax,
					'height':$btnMax
				}).addClass('animate').delay($delay).queue(function(next){
					$btnIn.remove();
					next();
				});
			}
		});
	},
	top:function(){
	//top 버튼
		var settings = {
			button:'#btnTop',
			text:'컨텐츠 상단으로 이동',
			min:100,
			onClass:'on',
			hoverClass:'hover',
			scrollSpeed:300
		};
		var btnHtml = '<div class="floating_btn btn_top"><a href="#" id="'+settings.button.substring(1)+'" class="btn" title="'+settings.text+'" role="button" aria-label="'+settings.text+'"></a></div>';
		if(!$(settings.button).length){
			if($('#floatingBar').length && $('#floatingBar').is(':visible')){
				$('#floatingBar .ft_wrap').append(btnHtml);
			}else if($('#wrap').length){
				$('#wrap').append(btnHtml);
			}else{
				$('body').append(btnHtml);
			}
		
			$(document).on('click',settings.button,function(e){
				e.preventDefault();
				$('html, body').animate({scrollTop:0},settings.scrollSpeed);
				$('#wrap').find($focusableEl).first().focus();
			}).on('mouseenter',function(){
				$(settings.button).addClass(settings.hoverclass);
			}).on('mouseleave',function(){
				$(settings.button).removeClass(settings.hoverClass);
			});

			var btnTopOn = function(){
				$(settings.button).attr('aria-hidden','false').parent().addClass(settings.onClass);
				$('.floating_btn').not('.btn_top').addClass('top_on');
			};

			var btnTopOff = function(){
				$(settings.button).attr('aria-hidden','true').parent().removeClass(settings.onClass);
				$('.floating_btn').not('.btn_top').removeClass('top_on');
			};

			$(settings.button).swipe({
				swipeStatus:function(event,phase,direction,distance,duration,fingerCount,fingerData,currentDirection){
					var $this = $(this),
						$parent = $this.parent(),
						$min = 20,
						$max = 150,
						$speed = 300,
						$isRight = direction == 'right'?true:false,
						$distance = $min-distance;
					
					if($isRight){
						$parent.css('right',$distance);
						if(phase == 'end' || phase == 'cancel'){
							if($distance < -10){
								$parent.stop(true,false).animate({'right':-$max},$speed,function(){
									$(this).removeCss('right');
									btnTopOff();
								});
							}else{
								$parent.stop(true,false).animate({'right':$min},$speed,function(){
									$(this).removeCss('right');
									btnTopOn();
								});
							}
						}
					}
				},
				cancleTreshold:0
			});
			

			var $lastSclTop = $(window).scrollTop();
			$(window).on('scroll',function(){
				var $SclTop = $(this).scrollTop(),
					$spaceH = $('.fixed_space').outerHeight(),
					$bottom = parseInt($(settings.button).parent().css('bottom')),
					$margin = 20;
				if($spaceH>0 && $spaceH != ($bottom-$margin)){
					$('.floating_btn').css('bottom',$spaceH+$margin);
				}

				if($SclTop > settings.min && $SclTop < $lastSclTop){ //최소보다 높고, 위로 스크롤할때
					if($SclTop < $lastSclTop-(settings.min/2)){
						btnTopOn();
					}
				}else{
					btnTopOff();
				}
				setTimeout(function(){
					$lastSclTop = $SclTop;
				},50);
			});
		}else{
			if($('#floatingBar').length){
				$('#floatingBar .ft_wrap').append($('.floating_btn.btn_top'));
			}
		}
	},
	tabAria:function(element){
		if($(element).length){
			$(element).each(function(){
				var isFirst = false;
				if($(this).is('ul')){
					if($(this).attr('role') != 'tablist')isFirst = true;
					if(isFirst)$(this).attr('role','tablist');
				}else{
					if($(this).find('ul').attr('role') != 'tablist')isFirst = true;
					if(isFirst)$(this).find('ul').attr('role','tablist');
				}
				
				$(this).find('li').each(function(f){
					var _a = $(this).find('a');
					if(_a.length){
						if(isFirst)$(this).attr('role','presentation');
						if(isFirst)_a.attr('role','tab');
						if($(this).hasClass('active')){
							_a.attr('aria-selected',true);
						}else{
							_a.attr('aria-selected',false);
						}
					}
				});
			});
		}
	},
	tab:function(){
		var $uiTab = $('.ui-tab');

		buttonUI.tabAria('.tabmenu');
		buttonUI.tabAria('.tabmenu2');
		buttonUI.tabAria('.is-tab');
		buttonUI.tabAria('.ui-tab');

		var tabOnLine = function (el,wrap){
			if(el.is('li') || el[0] == undefined)return false;
			var $el = el,
				$line = wrap.find('.tab_line'),
				$lineWdith = $el.outerWidth(),
				$lineLeft = $el.closest('li').position().left + $el.position().left;
			$line.css({
				'width':$lineWdith,
				'left':$lineLeft
			});
		};

		$(document).on('click','.ui-tab a',function(e){
			e.preventDefault();
			var $this = $(this),
				$idx = $this.closest('li').index(),
				$closest = $this.closest('.ui-tab'),
				$line = $closest.find('.tab_line'),
				$isHash = $closest.hasClass('is_hash') ? true : false,
				$isFirst = $closest.data('first'),
				$href = $this.attr('href'),
				$target = $closest.data('target'),
				$winScrollTop = $(window).scrollTop();

			if($($href).length){
				if($isFirst == true){
					$closest.data('first', false) ;
				}
				if($isHash == true){
					location.hash = $href;
					$(window).scrollTop($winScrollTop);
				}
				if($this.closest('.fixed').length){
					var $scrollTop = $this.closest('.fixed').offset().top - $('#header').outerHeight();
					scrollUI.move($scrollTop);
				}

				if($target == undefined){
					$($href).addClass('active').attr('aria-expanded',true).siblings('.tab_panel').attr('aria-expanded',false).removeClass('active');
					if($($href).find('.bottom_fixed').length)$($href).addClass('add_fixed_btn');
				}else{
					$($target).attr('aria-expanded',false).removeClass('active');
					$($href).addClass('active').attr('aria-expanded',true);
				}
				$this.parent().addClass('active').siblings().removeClass('active').find('a').removeAttr('title');
				$this.attr('aria-selected',true).closest('li').siblings().find('[role=tab]').attr('aria-selected',false);

				//fixedBtn
				if($($href).find('.bottom_fixed').not('.pop_btn').length){
					$(window).resize();
				// 	$('#footer').addClass('add_fixed_btn');
				// 	$('#floatingBar').addClass('hide');
				// }else if(!$('.bottom_fixed:visible').length){
				// 	$('#footer').removeClass('add_fixed_btn');
				// 	$('#floatingBar').removeClass('hide');
				}

				//scrollItem
				if($($href).find('.animated').length){
					setTimeout(function(){
						$($href).find('.animated').addClass('paused');
						$(window).scroll();
					},100);
				}

				var $arr = $closest.children('.arr');
				if($arr.length){
					var $liLength = $closest.find('>ul>li').length,
						$liWidth = 100/$liLength,
						$arrLeft = ($liWidth*$idx)+($liWidth/2);
					$arr.css('left',$arrLeft+'%');
				}

				if($line.length){
					$(window).resize();	
				}
				if($($href).find('.ui-swiper').length){
					swiperUI.item();
				}
			}else{
				console.error('대상 지정 오류! href값에 해당 id값을 넣어 주세요~');
			}
		});

		var $hash = location.hash;
		
		if($uiTab.length){
			$uiTab.each(function(e){
				var isHash =false,
					isHashClk = '',
					tarAry = [],
					$isFirst = $(this).data('first');
				$(this).find('li').each(function(f){
					var _a = $(this).find('a'),
						_aId = _a.attr('id'),
						_href = _a.attr('href');
					if(_a.length){
						if(!_aId) _aId = 'tab_btn_'+e+'_'+f;
						tarAry.push(_href);
						_a.attr({
							'id' :_aId,
							'aria-controls': _href.substring(1)
						});
						$(_href).attr({
							'role':'tabpanel',
							'aria-labelledby':_aId
						});
						if(_href == $hash || $(_href).find($hash).length){
							isHash = true;
							isHashClk = _a;
						}
					}
				});
				$(this).data('target',tarAry.join(','));
				if(isHash == false){
					if($isFirst == undefined || $isFirst == true){
						$(this).data('first',true);
						if($(this).find('.active').length){
							$(this).find('.active').find('a').trigger('click');
						}else{
							$(this).find('li').eq(0).find('a').trigger('click');
						}
					}
				}
				if(isHash == true){
					isHashClk.trigger('click');
				}
				Layer.openEl = '';
			});
		}
		$(window).resize(function(){
			var $tabLine = $('.tab_line');
			if($tabLine.length){
				$tabLine.each(function(e){

					var $this = $(this),
						$closest = $this.parent(),
						$active = $closest.find('.active').find('a');
					if($this.closest('.tab_wrap').length){
						$this.remove();
					}else{
						tabOnLine($active,$closest);
					}
				});
			}
		});

		
		$(document).on('click','.tab_wrap .ui-tab a',function(e){
			e.preventDefault();
			scrollUI.center($(this).parent());
		});
		if($('.tab_wrap .tabmenu').length){
			$('.tab_wrap .tabmenu').each(function(){
				var $active = $(this).find('.active');
				if($active.length)scrollUI.center($active);
			});
		}

		$(document).on('click','.tabmenu2.ui-tab a',function(e){
			e.preventDefault();
			scrollUI.center($(this).parent());
		});
		if($('.tabmenu2').length){
			$('.tabmenu2').each(function(){
				var $active = $(this).find('.active');
				if($active.length)scrollUI.center($active);
			});
		}

		//radio tab
		$(document).on('change','.ui-tab-rdo input',function(e){
			var $show = $(this).data('show'),
				$hide = $(this).closest('.ui-tab-rdo').data('hide');

			if($($hide).hasClass('tab_rdo_panel')){
				$($hide).removeClass('show');
			}else{
				$($hide).hide();
			}

			if($($show).hasClass('tab_rdo_panel')){
				$($show).addClass('show');
			}else{
				$($show).show();
			}	
		});
		if($('.ui-tab-rdo').length){
			$('.ui-tab-rdo').each(function(){
				var tarAry = [];
				$(this).find('input[type=radio]').each(function(){
					var $tar = $(this).data('show');
					if(tarAry.indexOf($tar) < 0 && !!$tar)tarAry.push($tar);
					if($(this).prop('checked')){
						if($($tar).hasClass('tab_rdo_panel')){
							$($tar).addClass('show');
						}else{
							$($tar).show();
						}
					}
				});
				if($(this).data('hide') == undefined)$(this).data('hide',tarAry.join(','));
			});
		}

		//checkbox tab
		$(document).on('change','.ui-tab-chk input',function(e){
			var $tar = $(this).data('show');

			if($(this).prop('checked')){
				if($($tar).hasClass('tab_panel')){
					$($tar).addClass('show');
				}else{
					$($tar).show();
				}

				//보인영역 스크롤 안으로
				if($.trim($tar).indexOf(',')){
					$tar = $tar.split(',').pop();
				}
				var $winT = $(window).scrollTop(),
					$winH = $(window).height(),
					$spaceH = $('.fixed_space').outerHeight(),
					$tarT = $($tar).offset().top,
					$tarH = $($tar).outerHeight(),
					$gap = ($tarT+$tarH+10) - ($winT+$winH-$spaceH);
				if($gap > 0)scrollUI.move($winT+$gap);
			}else{
				if($($tar).hasClass('tab_panel')){
					$($tar).removeClass('show');
				}else{
					$($tar).hide();
				}
			}
		});
		if($('.ui-tab-chk').length){
			$('.ui-tab-chk').each(function(){
				var $tar = $(this).data('show');

				if($(this).prop('checked')){
					if($($tar).hasClass('tab_panel')){
						$($tar).addClass('show');
					}else{
						$($tar).show();
					}
				}
			});
		}
	},
	tabScroll:function(){
		//탭 스크롤
		var $wrap = '.ui-tab-scroll',
			$areaClass = '.ui-scroll-area';
		if($($wrap).length && $($wrap).data('init') != true){
			$($wrap).data('init',true);
			var $topGap = isAppChk()? 80 : 130;
			$($wrap+' a').each(function(e){
				var $href = $(this).attr('href');
				$($href).addClass($areaClass.substring(1));
			});
			$(document).on('click',$wrap+' a',function(e){
				e.preventDefault();
				scrollUI.move($($(this).attr('href')).offset().top-$topGap,150);
			});
			var $beforeIdx = -1;
			$(window).scroll(function(){
				
				var $swipeIdx = $($wrap).data('idx');
				var $scrollTop = $(window).scrollTop(),
					$area = $($areaClass),
					$activeIdx = 0;
				if($area.length){
					$area.each(function(){
						var $areaTop = $(this).offset().top - $topGap,
							$areaIdx = $(this).index($areaClass);
						if($areaTop <= $scrollTop+50){
							$activeIdx = $areaIdx;
						}
					});
				
					var centerAni = '';
					clearTimeout(centerAni);
					centerAni = setTimeout(function(){
						if($beforeIdx != $activeIdx){
							$beforeIdx = $activeIdx;
							var $activeLi = $($wrap).find('li').eq($activeIdx);
							$activeLi.addClass('active').find('a').attr('aria-selected',true);
							$activeLi.siblings().removeClass('active').find('a').attr('aria-selected',false);
							
							scrollUI.center($($wrap).find('.active'));
						}
					},200);
				}
			});
			$(window).scroll();
		}
	},
	tabNavi:function(){
		$('.tab_wrap .tabmenu').each(function(i){
			var $this = $(this);
			if($(this).hasClass('swiper-container-initialized')){
				var $idx = $this.data('idx');
				$tabNavis[$idx].update();
				return false;
			}else{
				$(this).find('ul').addClass('swiper-wrapper');
				$(this).find('li').addClass('swiper-slide');
			
				var $navi = $this,
					$widthSum = 0,
					$class = 'ui-tabnavi-'+i;

				$navi.find('.swiper-slide').each(function(){
					$widthSum = $widthSum + $(this).outerWidth();
				});
				$navi.addClass($class);
				var $tabNavi = new Swiper('.'+$class,{
					slidesPerView: 'auto',
					//resizeReInit:true,
					on: {
						touchMove:function(){
							if(buttonUI.tabNaviActiveChk == true){
								$tabNavi.params.centeredSlides = false;
								$tabNavi.update();
							}
						}
					}
				});

				$navi.data('idx',$tabNavis.length);
				$tabNavis.push($tabNavi);

				var $activeCheckNum = 0;
				var $activeCheck = setInterval(function(e){
					$activeCheckNum++;
					var $active = $navi.find('.swiper-slide.active'),
						$activeIdx = $active.index();
					if($activeIdx < 0){
						$navi.find('.swiper-slide').first().addClass('active');
						$activeIdx = 0;
					}
					if($activeIdx >= 0){
						buttonUI.tabNaviActive($navi,i,$activeIdx,0);
						clearInterval($activeCheck);
					}
					if($activeCheckNum >= 20)clearInterval($activeCheck);
				},100);

				$(window).resize(function(){
					var $parenW = $navi.parent().width();
					if($parenW > $widthSum){
						$navi.find('.swiper-wrapper').addClass('center');
						$tabNavis[i].params.followFinger = false;
						$tabNavis[i].update();
					}else{
						$navi.find('.swiper-wrapper').removeClass('center');
						$tabNavis[i].params.followFinger = true;
						$tabNavis[i].update();
					}
				});

				$navi.on('click','a',function(e){
					var $jstab = $(this).closest('.ui-tab');
					if($jstab.length){
						e.preventDefault();
						var $liIdx = Math.max($(this).closest('li').index());
						buttonUI.tabNaviActive($navi,i,$liIdx);
					}
				});
			}
		});
	},
	tabNaviActiveChk:false,
	tabNaviActive:function($navi, i, idx,speed){
		var $widthSum = 0;
		$navi.find('.swiper-slide').each(function(){
			$widthSum = $widthSum + $(this).outerWidth();
		});
		var $windowCenter = $(window).width()/2,
			$activeTab = $navi.find('.swiper-slide').eq(idx),
			$tabLeft = $activeTab.position().left,
			$tabWidth = $activeTab.outerWidth(),
			$tabCenter = $tabLeft + ($tabWidth/2);
		if(speed == undefined)speed=300;
		if($windowCenter < $tabCenter && $tabCenter < ($widthSum-$windowCenter)){
			buttonUI.tabNaviActiveChk = true;
			$tabNavis[i].params.centeredSlides = true;
			$tabNavis[i].update();
		}else{
			buttonUI.tabNaviActiveChk = false;
			$tabNavis[i].params.centeredSlides = false;
			$tabNavis[i].update();
		}
		if($windowCenter < $tabCenter){
			$tabNavis[i].slideTo(idx,speed);
		}else{
			$tabNavis[i].slideTo(0,speed);
		}
		//$activeTab.find('a').attr('title','현재선택');
		//$activeTab.siblings().find('a').removeAttr('title');
	},
	swipeTab:function(idx){
		if(idx == undefined)idx = 0;
		var $tabContainer = '.swipe_tab .swiper-container';
		if($($tabContainer).length){
			var $itemLength =$($tabContainer).find('.swiper-slide').length;
			$tabSwiper = new Swiper($tabContainer,{
				//resizeReInit:true,
				autoHeight:true,
				//threshold:30,
				pagination:{
					el: '.tab_pagination',
					renderBullet:function(index, className) {
						return '<button type="button" class="'+className+'">'+(index+1)+'번째 슬라이드</button>';
					}
				},
				on:{
					init:function(){
						setTimeout(function(){
							var $length = $tabSwiper.pagination.bullets.length,
								$idx = $tabSwiper.snapIndex>=0?$tabSwiper.snapIndex:$tabSwiper.realIndex;
							swiperUI.focusAria($tabContainer,$idx,$itemLength-$length);
							if(idx > 0){
								$tabSwiper.slideTo(idx);
								$idx = idx;
							}else{
								$('.swipe_tab .navi').find('li').eq(idx).addClass('active').find('a').attr('aria-selected',true);
							}
							buttonUI.tabAria('.swipe_tab .navi');
						},10);
					},
					resize:function(){
						var $length = $tabSwiper.pagination.bullets.length,
							$idx = $tabSwiper.snapIndex>=0?$tabSwiper.snapIndex:$tabSwiper.realIndex;
						swiperUI.focusAria($tabContainer,$idx,$itemLength-$length);
					},
					slideChangeTransitionEnd:function(e){
						var $length = $tabSwiper.pagination.bullets.length,
							$idx = $tabSwiper.snapIndex>=0?$tabSwiper.snapIndex:$tabSwiper.realIndex;
						swiperUI.focusAria($tabContainer,$idx,$itemLength-$length);

						var $activeLi = $('.swipe_tab .navi').find('li').eq($tabSwiper.snapIndex);
						$activeLi.addClass('active').find('a').attr('aria-selected',true);
						$activeLi.siblings().removeClass('active').find('a').attr('aria-selected',false);
						scrollUI.center($activeLi);
					}
				}
			});
			$(document).on('click','.swipe_tab .navi a',function(e){
				e.preventDefault();
				var idx = $(this).closest('li').index();
				$tabSwiper.slideTo(idx);
			});
		}
	},
	rotate:function(){
		//카드이미지 회전버튼
		$(document).on('click','.img_rotate .btn_rotate',function(e){
			e.preventDefault();
			var $this = $(this),
				$isReverse = false,
				$img = $this.siblings('img'),
				$time = (parseFloat($img.css('transition-duration')).toFixed(3))*1000,
				$click = $img.data('click'),
				$rotating = $img.data('rotating');
			if($this.hasClass('backword'))$isReverse = true;
			if($click == undefined)$click = 0;
			if($rotating == undefined)$rotating = false;
			if($rotating == false){
				$img.data('rotating',true);
				if($isReverse){
					$click--;
				}else{
					$click++;
				}
				var $deg = $click * 90;
				if(Math.abs($click)%4 == 1)$img.removeAttr('style');
				$img.css({
					'-webkit-transform':'translate(-50%,-50%) rotate('+$deg+'deg)',
					'transform':'translate(-50%,-50%) rotate('+$deg+'deg)'
				});
				if(Math.abs($click)%4 == 0)$click = 0;
				$img.data('click',$click);
				setTimeout(function(){
					$img.data('rotating',false);
					if($click%4 == 0){
						$img.css({
							'-webkit-transform':'translate(-50%,-50%) rotate(0deg)',
							'transform':'translate(-50%,-50%) rotate(0deg)',
							'-webkit-transition-duration':'0s',
							'transition-duration':'0s',
						});
					}
				},$time);
			}
		});

		$('.img_rotate .img_swipe').swipe({
			swipeLeft:function(event,direction,distance,duration,fingerCount,fingerData,currentDirection){
				var $this = $(this),
					$closest = $this.closest('.img_rotate');
				if($this.hasClass('top')){
					$closest.find('.btn_rotate.backword').click().find('.btn_click_in').remove();
				}else{
					$closest.find('.btn_rotate.forword').click().find('.btn_click_in').remove();
				}
			},
			swipeRight:function(event,direction,distance,duration,fingerCount,fingerData,currentDirection){
				var $this = $(this),
					$closest = $this.closest('.img_rotate');
				if($this.hasClass('top')){
					$closest.find('.btn_rotate.forword').click().find('.btn_click_in').remove();
				}else{
					$closest.find('.btn_rotate.backword').click().find('.btn_click_in').remove();
				}
			}
		});
	},
	init: function(){
		buttonUI.default();
		buttonUI.effect();
		buttonUI.tab();
		buttonUI.tabScroll();
		buttonUI.rotate();
		buttonUI.top(); //메인에는 탑버튼 미사용

		//보안키패드 클릭 시 스와이프 현상방지
		$(document).on('tap touchstart touchmove','.swipe_tab .nppfs-keypad',function(){
			if($tabSwiper != '' && $tabSwiper != undefined){
				if($tabSwiper.allowTouchMove == true){
					$tabSwiper.allowTouchMove = false;
					$tabSwiper.update();
				}
			}
		});
		$(document).on('touchend',function(){
			if($tabSwiper != '' && $tabSwiper != undefined){
				if($tabSwiper.allowTouchMove == false){
					$tabSwiper.allowTouchMove = true;
					$tabSwiper.update();
					console.log('allowTouchMove = true');
				}
			}
		});
	}
};

var reTabAria = function(){
	if($('.tabmenu').length)buttonUI.tabAria('.tabmenu');
	if($('.tabmenu2').length)buttonUI.tabAria('.tabmenu2');
	if($('.is-tab').length)buttonUI.tabAria('.is-tab');
	if($('.ui-tab').length)buttonUI.tabAria('.ui-tab');
};

//툴팁
var tooltip = {
	position:function(tar){
		var $tar = $(tar),
			$btn = $tar.closest('.tooltip_wrap').find('.tooltip_btn');
		if(!$tar.children('.arr').length)$tar.prepend('<i class="arr" aria-hidden="true"></i>');
		if(!$tar.children('.tooltip_close').length)$tar.append('<a href="#" class="tooltip_close" role="button" aria-label="툴팁닫기"></a>');
		$(window).resize(function(){
			var $winW	= $(window).width()-40,
				$btnW	= $btn.width(),
				$btnX	= Math.min($winW+($btnW/2)-2,$btn.offset().left)-20,
				$scrollEnd	= $(window).height()+$(window).scrollTop();
			if($('.bottom_fixed:visible').not('.pop_btn').length)$scrollEnd = $scrollEnd-60;
			var $left = Math.max(-4,$btnX);
			$tar.children('.arr').css({
				'left': $left+($btnW/2)
			});
			$tar.css({
				'width': $winW,
				'left': -$left
			});
			var $tarH = $tar.outerHeight(),
				$tarY = $tar.closest('.tooltip_wrap').offset().top + parseInt($tar.css('margin-top'));
			if($tar.hasClass('is-bottom')){
				$tar.addClass('bottom');
			}else{
				if($scrollEnd < ($tarH+$tarY)){
					$tar.addClass('bottom');
				}else{
					$tar.removeClass('bottom');
				}
			}
		});
	},
	aria:function(element){
		$(element).each(function(e){
			var $btn = $(this).find('.tooltip_btn'),
				$cont = $(this).find('.tooltip_cont'),
				$contId = $cont.attr('id'),
				$closeBtn = $(this).find('.tooltip_close');
			if(!$contId)$contId = 'tt_cont_'+e;
			$btn.attr({
				'role':'button',
				'aria-describedby':$contId
			});
			$cont.attr({
				'id':$contId,
				'role':'tooltip'
			});
			$closeBtn.attr('role','button');
		});
	},
	init:function(){
		tooltip.aria('.tooltip_wrap');

		//열기
		$(document).on('click','.tooltip_wrap .tooltip_btn',function(e){
			e.preventDefault();
			var $cont = $(this).closest('.tooltip_wrap').find('.tooltip_cont');
			if($(this).hasClass('on')){
				$(this).removeClass('on');
				$cont.stop(true,false).fadeOut();
			}else{
				$(this).addClass('on');
				$('.tooltip_cont').fadeOut();
				tooltip.position($cont);
				$(window).resize();
				$cont.stop(true,false).fadeIn();
			}
		});
		//닫기
		$(document).on('click','.tooltip_close',function(e){
			e.preventDefault();
			var $cont = $(this).closest('.tooltip_cont');
			$cont.siblings('.tooltip_btn').removeClass('on').focus();
			$cont.stop(true,false).fadeOut();
		});
		$(document).on('click touchend',function(e){
			$('.tooltip_wrap .tooltip_btn').removeClass('on');
			$('.tooltip_cont').stop(true,false).fadeOut();
		}).on('click touchend','.tooltip_wrap',function(e){
			e.stopPropagation();
		});
		$(document).on('click touchend',function(e){
			$('.btn_recommend .num_box').removeClass('show');
		}).on('click touchend','.btn_recommend',function(e){
			e.stopPropagation();
		});
	}
};

//공유하기
//카카오톡 공유하기 -  https://developers.kakao.com/ 에서 키값 발급 필요
//<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
var share = {
	kakaoKey:'2b9d5c1ae618c224aebf9fd012228304',
	kakaoInit: false,
	copy:function($link){
		if($link == '' || $link == undefined)$link = location.href;
		if(isPC.ie8()||isPC.ie9()){	//구형 ie
			window.clipboardData.setData("Text", $link);
			if(window.clipboardData.getData("Text") == ''){
				Layer.alert('복사되지않았습니다.<br>클립보드를 허용해주세요.');
			}else{
				Layer.alert('주소가 복사되었습니다.<br>원하는곳에 붙여넣으세요.');
			}
		}else{
			var t = $('<div class="blind"><textarea class="clipbordTxt" title="복사하는 주소경로"></textarea></div>');
			$(event.target).after(t);
			$('.clipbordTxt').val($link);
			$('.clipbordTxt').select();
			document.execCommand('Copy');
			$('.clipbordTxt').parent().remove();
			Layer.alert('주소가 복사되었습니다.<br>원하는곳에 붙여넣으세요.');
		}
	},
	sns:function($snsType,$title,$image,$description,$link){
		if($title == '' || $title == undefined)$title = $('meta[property="og:title"]').attr("content");
		if($image == '' || $image == undefined)$image = $('meta[property="og:image"]').attr("content");
		if($description == '' || $description == undefined)$description = $('meta[property="og:description"]').attr("content");
		if($link == '' || $link == undefined)$link = location.href;
		var $protocol = location.protocol,
			$width = 500,
			$href = '',
			$url = encodeURIComponent($link);
			
		switch ($snsType) {
			case 'facebook':
				$href = '//www.facebook.com/sharer/sharer.php?u=' + $url;
				break;
			case 'twitter':
				$href = '//twitter.com/intent/tweet?url=' + $url + ' text=' + $title;
				break;
			case 'naver_blog':
				$href = '//blog.naver.com/openapi/share?url=' + $url + ' title=' + $title;
				break;
			case 'naver_band':
				$href = '//band.us/plugin/share?body=' + encodeURIComponent($title +'\n'+$description +'\n')+ $url;
				break;
			case 'google_plus':
				$href = '//plus.google.com/share?url=' + $url;
				$width = 400;
				break;
			case 'pinterest':
				$href = '//pinterest.com/pin/create/button/?url=' + $url + ' description=' + $title + ' media=' + $image;
				break;
			case 'kakao_story':
				$href = '//story.kakao.com/share?url=' + $url;
				break;
			case 'kakao_talk':
				var kakaoSend = function(){
					Kakao.Link.sendDefault({
						objectType: 'feed',
						content: {
							title: $title,
							imageUrl: $image,
							description: $description,
							link: {
								mobileWebUrl: $link,
								webUrl: $link
							}
						}
					});
				};

				if(share.kakaoKey != ''){
					if(share.kakaoInit == false){
						share.kakaoInit = true;
						loadScript('//developers.kakao.com/sdk/js/kakao.min.js',function(){
							Kakao.init(share.kakaoKey);
							kakaoSend();
						});
					}else{
						kakaoSend();
					}
				}else{
					Layer.alert('카카오톡 공유하기 API의 key값를 등록해주세요.');
				}
				break;
		}
		//'kakao_talk' !== $snsType && window.open($protocol + $href, $snsType + 'sns_share', 'scrollbars=1,width=' + $width + ',height=500,menubar=0,resizable=0');
		if($snsType !== 'kakao_talk')window.open($protocol + $href, $snsType + 'sns_share', 'scrollbars=1,width=' + $width + ',height=500,menubar=0,resizable=0');
	}
};
var loadScript = function(url, callback){
	var script = document.createElement("script");
	script.type = "text/javascript";
	if(script.readyState){  //IE
		script.onreadystatechange = function(){
			if (script.readyState == "loaded" || script.readyState == "complete"){
				script.onreadystatechange = null;
				callback();
			}
		};
	} else {  //Others
		script.onload = function(){
			callback();
		};
	}
	script.src = url;
	document.getElementsByTagName("head")[0].appendChild(script);
};

//스크롤 관련
var scrollUI = {
	inCheck:function(target){
		//스크린안에 있는지 확인
		var $window = $(window),
			$wHeight = $window.height(),
			$scrollTop = $window.scrollTop(),
			$winBottom = ($scrollTop + $wHeight),
			$el = $(target),
			$elHeight = $($el).outerHeight(),
			$elTop = $($el).offset().top,
			$elCenter = $elTop + ($elHeight/2),
			$elBottom = $elTop + $elHeight;

		if(($elCenter >= $scrollTop) && ($elCenter <= $winBottom)){
			return true;
		}else{
			return false;
		}
	},
	move: function(val,speed){
		var $top = 0;
		if(speed == undefined)speed = 300;
		if($.isNumeric(val)){
			$top = val;
		}else{
			if($(val).length)$top = $(val).offset().top;
		}
		$('html,body').stop(true,false).animate({'scrollTop':$top},speed);
	},
	center: function(el, speed, direction){
		var $parent = $(el).parent();
		if(speed == undefined)speed = 200;
		if(!!direction && direction == 'vertical'){
			var $prtH = $parent.height(),
				$prtSclH = $parent.get(0).scrollHeight,
				$thisT = $(el).position().top,
				$thisH = $(el).outerHeight(),
				//$sclT = ($prtH-$thisT) + ($thisH/2);
				$sclT = $thisT - ($prtH/2) + ($thisH/2);
			if($prtH < $prtSclH)$parent.stop(true,false).animate({'scrollTop':'+='+$sclT},speed);
		}else{
			var $prtW = $parent.outerWidth(),
				$prtSclW = $parent.get(0).scrollWidth,
				$thisL = $(el).position().left,
				$thisW = $(el).outerWidth(),
				$sclL = $thisL - ($prtW/2) + ($thisW/2);
			if($prtW < $prtSclW)$parent.stop(true,false).animate({'scrollLeft':'+='+$sclL},speed);
		}
	},
	hidden: function(){
		var $window = $(window),
			$position = $window.scrollTop(),
			$floatingBar = $('#floatingBar'),
			$isFloatingNav = false,
			$sclHidden = $('.btn_scl_hidden'),
			$sclHidden2 = $('.scl_hidden');

		if(isAppChk() && !$floatingBar.hasClass('hide'))$isFloatingNav = true;

		$window.on('scroll', function(){
			var $scrollTop = $(this).scrollTop(),
				$wrapH = $('#wrap').height(),
				$end = $wrapH - $(window).height() - 10;
			if($scrollTop >= $position){										//아래로 스크롤하면 숨김
				if($scrollTop >= $end){											//아래로 스크롤해도 마지막에 도달하면 보여줌
					//if($isFloatingNav)$floatingBar.removeClass('off');		//접근성 문제로 항상 보이게...
					//$sclHidden.removeClass('off');							//접근성 문제로 항상 보이게...
					$sclHidden2.removeClass('off');
				}else{
					//if($isFloatingNav)$floatingBar.addClass('off');
					//$sclHidden.addClass('off');
					if($scrollTop > 50)$sclHidden2.addClass('off');
				}
			}else{							//위로 스크롤하면 보여줌
				if(!$('html').hasClass('lock')){
					if(($position-$scrollTop) > 10){
						//if($isFloatingNav)$floatingBar.removeClass('off');	//접근성 문제로 항상 보이게...
						//$sclHidden.removeClass('off');						//접근성 문제로 항상 보이게...
					}
					if($scrollTop <= 50){
						$sclHidden2.removeClass('off');
					}else{
						$sclHidden2.addClass('off');
					}
				}
			}
		});
		$window.scrollEnd(function(){
			var $scrollTop = $(this).scrollTop();
			$position = $scrollTop;
		},300);
		$sclHidden.find('a').on('focusin', function(e){
			$sclHidden.removeClass('off');
		});
	},
	guide:function(element){
		var $el = $(element),
			$wrapClass = 'ui-scl-guide',
			$contClass = 'ui-scl-cont',
			$infoClass = 'ui-scl-info',
			$barClass = 'ui-scl-bar';
		$el.each(function(){
			var $this = $(this),
				$isSclGuide = $this.data('sclGuide');

			if(!$this.hasClass($contClass))$this.addClass($contClass);
			if(!$this.parent().hasClass($wrapClass))$this.wrap('<div class="'+$wrapClass+'"></div>');
			if(!$this.siblings('.'+$infoClass).length)$this.before('<div class="'+$infoClass+'" role="img" aria-label="스크롤하면 아래 숨겨진 컨텐츠를 확인 할 수 있습니다."></div>');
			if(!$this.siblings('.'+$barClass).length)$this.after('<div class="'+$barClass+'" aria-hidden="true"><div></div></div>');
			var $info = $this.siblings('.'+$infoClass);
			var $bar = $this.siblings('.'+$barClass);
			var $percent = scrollUI.scrllPer(this);
			if($percent <= 0){
				$bar.hide();	
			}else{
				$bar.show().children().css('width',$percent+'%');
			}
			var $sclGap = $this.get(0).scrollHeight - $this.outerHeight();
			if($sclGap < 1){
				$info.hide();
			}else{
				$info.show();
			}

			if(!$isSclGuide){
				$this.data('sclGuide',true);
				$this.on('scroll',function(){
					$percent = scrollUI.scrllPer(this);
					if($percent <= 0){
						$bar.hide();	
					}else{
						$bar.show().children().css('width',$percent+'%');
					}
					if($percent >= 100){
						$info.hide();
					}else{
						$info.show();
					}
				});
			}
		});
	},
	scrllPer:function(element,type){
		var $val = '';
		if(type == undefined)type = 'vertical';
		if(type == 'vertical'){
			$val = (Math.abs($(element).scrollTop()/($(element).get(0).scrollHeight - $(element).outerHeight())))*100;
		}else if(type == 'horizon'){
			$val = (Math.abs($(element).scrollLeft()/($(element).get(0).scrollWidth - $(element).outerHeight())))*100;
		}
		return $val;
	},
	loading:function(){
		$(window).scroll(function(){
			$('.loading_area').each(function(){
				var $this = $(this),
					$href = $this.data('href');
				if(scrollUI.inCheck(this)){
					$this.load($href,function(res,sta,xhr){
						if(sta == "success"){
							$this.children().unwrap();
						}
					});
				}
			});
		});
	},
	init: function(){
		scrollUI.hidden();
		scrollUI.loading();
	}
};

//폼요소 관련
var formUI = {
	winLoad:function(){
		//select off효과
		$('select').each(function(){
			var $val = $(this).val();
			if($val == '' || $val == null){
				$(this).addClass('off');
			}
		});
		$(document).on('change','select',function(){
			var $val = $(this).val();
			if($val == ''){
				$(this).addClass('off');
			}else{
				$(this).removeClass('off');
			}
		});

		//페이지 로딩 후 검색박스에 입력값이 있으면 X 버튼 추가
		$('.search_box .input input').each(function(){
			if($(this).val() != '')$(this).after('<a href="#" class="inp_del" role="button" aria-label="입력내용삭제"></a>');
		});

		//이메일 입력영역
		$('.email_form').each(function(){
			var $this = $(this),
				$inp = $this.find('.email_inp .input input'),
				$inpVal = $inp.val(),
				$sel = $this.find('.email_sel .select select'),
				$selVal = $sel.val();
			if($inpVal != '' && ($selVal == '' || $selVal == 'etc')){
				$this.emailForm();
				$inp.after('<a href="#" class="inp_del" role="button" aria-label="입력내용삭제"></a>');
			}
		});

		//입력 텍스트 카운팅(로딩)
		$('[data-text-count]').each(function(e){
			formUI.textCount(this);
		});
	},
	focus:function(){
		var $inpEls= 'input:not(:checkbox):not(:radio):not(:hidden), select, textarea, .btn_select';
		$(document).on('focusin',$inpEls,function(e){
			var $this = $(this);
			if(!$this.prop('readonly') && !$this.prop('disabled'))$('html').addClass('inpFocus');
			//if($this.closest('.form_item').length)$this.closest('.form_item').addClass('focus');
			if($this.is('input') && $this.closest('.input').length)$this.closest('.input').addClass('focus');
			if($this.is('select') && $this.closest('.select').length)$this.closest('.select').addClass('focus');
			if($this.hasClass('btn_select') && $this.closest('.select').length)$this.closest('.select').addClass('focus');
			if($this.is('textarea') && $this.closest('.textarea').length)$this.closest('.textarea').addClass('focus');

			//키패드로 포커스 요소 가려지면 스크롤
			
			
			if(isAppChk('ios')){ //아이폰앱 체크(아이폰앱에서만 안됨)
				if(!$this.is('a') && !$this.prop('readonly') && !$this.prop('disabled')){
					setTimeout(function(){
						var $top = $this.offsetParent().offset().top,
							$height = $this.outerHeight(),
							$wrap = $(window),
							$wrapH = $wrap.height(),
							$scrollTop = $wrap.scrollTop();
						
						if($this.closest('.popup').length){
							//팝업
							$wrap = $this.closest('.pop_cont');
							$wrapH = $wrap.outerHeight();
							$scrollTop = $wrap.scrollTop();
							var $wrapSclHeight = $wrap.get(0).scrollHeight,
								$parent = $this.offsetParent(),
								$parentTop = 0;
							while(!$parent.hasClass('pop_cont')){
								$parentTop = $parentTop+$parent.position().top;
								$parent = $parent.offsetParent();
							}
							$top = $parentTop+$scrollTop;
							if($wrapSclHeight-($wrapH/2) < $top)$('html').addClass('lastInp');
						}else{
							//body
							var $container = $('#wrap'),
								$containerH = $container.height();
							if(($containerH - ($wrapH/2)) < ($top-$height))$('html').addClass('lastInp');
						}
						var $gap = ($top+$height-$scrollTop)-($wrapH/2);
						if($gap > 0){
							$wrap.scrollTop($top-($wrapH/4)+($height/2));
						}
					},500);
				}
			}
		});
		$(document).on('focusout',$inpEls,function(e){
			var $this = $(this);
			$('html').removeClass('inpFocus lastInp');
			if($this.closest('.form_item').length)$this.closest('.form_item').removeClass('focus');
			if($this.is('input') && $this.closest('.input').length)$this.closest('.input').removeClass('focus');
			if($this.is('select') && $this.closest('.select').length)$this.closest('.select').removeClass('focus');
			if($this.hasClass('btn_select') && $this.closest('.select').length)$this.closest('.select').removeClass('focus');
			if($this.is('textarea') && $this.closest('.textarea').length)$this.closest('.textarea').removeClass('focus');
		});
	},
	select:function(){
		var $select = $('.select').not('.btn');
		if($select.length){
			$select.each(function(e){
				var $this = $(this),
					$sel = $this.find('select'),
					$selId = $sel.attr('id'),
					$title = $sel.attr('title');
				if($selId == undefined)$selId = 'none';
				if($title == undefined)$title = '선택';
				var $btnTitle = '팝업으로 '+$title,
					$btnHtml = '<a href="#'+$selId+'" class="btn_select ui-select-open" title="'+$btnTitle+'" role="button"><span class="val"></span></a>';

				if(!$this.find('.btn_select').length){
					$sel.hide();
					$this.append($btnHtml);
					var $forLbl = $('label[for="'+$selId+'"]');
					if($forLbl.length){
						$forLbl.addClass('ui-select-lbl').attr('title',$btnTitle);
						//$forLbl.replaceWith('<a href="#'+$selId+'" class="'+$forLbl.attr('class')+' ui-select-lbl" title="'+$btnTitle+'">'+$forLbl.html()+'</a>');
					}

					$sel.change(function(){
						var $val = $(this).val(),
							$selectTxt = $(this).find(':selected').text();
						if(($title == '카드선택' || $title == '카드 선택') && $selectTxt.length > 20){
							$selectTxt = $selectTxt.substring(20,$selectTxt.lastIndexOf('(')) +'<span class="sub">'+ $selectTxt.substring(0,19) +'</span>';
						}
						if($selectTxt == '')$selectTxt = '선택';
						$this.find('.btn_select .val').html($selectTxt);
						if($val == ''){
							$this.find('.btn_select').addClass('off');
						}else{
							$this.find('.btn_select').removeClass('off');
						}
					});
					$sel.change();
				}
			});
		}
	},
	input:function(){
		//input[type=number][maxlength] 되게 처리..(하지만 디바이스 탐): number type을 안쓰는게 좋음
		$(document).on('change keyup input','input[type=number][maxlength]',function(e){
			var $this = $(this),
				$val = $this.val(),
				$max = $this.attr('maxlength'),
				$length = $val.length,
				$dataVal = $this.data('val');
			if($dataVal == undefined)$dataVal ='';
			if($length > $max){
				$this.val($dataVal);
			}else{
				$this.data('val',$val);
			}
		});

		//form 안에 input이 1개일때 엔터시 새로고침 현상방지
		$(document).on('keydown','form input',function(e){
			var $keyCode = (e.keyCode?e.keyCode:e.which),
				$form = $(this).closest('form'),
				$length = $form.find('input').not('[type=checkbox],[type=radio]').length;

			if($length == 1 && !$(this).closest('.search_box').length){ //.search_box 검색창은 예외
				if($keyCode==13)return false;
			}
		});

		//input[type=date]
		$(document).on('change','.input input.date+input[type=date]',function(){
			var $val = $(this).val();
			if($val.indexOf('-') < 0){
				$val = new Date($val).toISOString().split('T')[0];
			}
			$val = $val.split('-').join('.');
			$(this).prev('input.date').val($val).change().focus();
		});

		//password
		$(document).on('keyup change','.password input',function(){
			var $val = $(this).val(),
				$closest = $(this).closest('.password'),
				$dot = $closest.find('.dot span');
			$dot.slice(0,$val.length).addClass('on');
			$dot.slice($val.length).removeClass('on');
		});

		//list input[type=checkbox]
		$(document).on('change','[class*=box_list_] .checkbox input',function(){
			var $this = $(this);
			if($this.prop('checked') == true){
				$this.closest('li').addClass('checked');
				if($this.attr('type') == 'radio')$this.closest('li').siblings().removeClass('checked');
			}else{
				$this.closest('li').removeClass('checked');
			}
		});
		$(document).on('change','.chk_item.ty2 input',function(){
			var $this = $(this);
			if($this.prop('checked') == true){
				$this.closest('.chk_item').addClass('checked');
				if($this.attr('type') == 'radio')$this.closest('.chk_item').siblings('.chk_item').removeClass('checked');
			}else{
				$this.closest('.chk_item').removeClass('checked');
			}
		});

	},
	delBtn:function(){
		//input 삭제버튼
		$(document).on('keyup focus','.input input, .textarea textarea',function(){
			var $this = $(this), $val = $this.val();
			if($this.prop('readonly') || $this.prop('disabled') || $this.hasClass('no_del') || $this.hasClass('nppfs-npv') || $this.hasClass('hasDatepicker') || $this.hasClass('time') || $this.hasClass('t_right')){
				return false;
			}
			if($val != ''){
				if(!$this.next('.inp_del').length && !$this.next('.datepicker').length){
					$this.after('<a href="#" class="inp_del" role="button" aria-label="입력내용삭제"></a>');
				}
			}else{{}
				if($this.next('.inp_del').length){
					setTimeout(function(){
						$this.next('.inp_del').remove();
					},10);
				}
			}
		});
		$(document).on('click','.inp_del',function(){
			var $inp = $(this).prev();
			$inp.val('').change().focus();
			//$(this).remove();
		});
	},
	removeError:function(){
		//error 클래스 삭제
		$(document).on('change','.form_item input, .form_item select, .form_item textarea',function(){
			var $closest = $(this).closest('.form_item');
			if($closest.hasClass('error')){
				$closest.removeClass('error');
			}
		});
	},
	search:function(){
		//검색
		var $searchWrap = '.search_wrap',
			$contClass = '.search_cont',
			$inpClass = '.search_box .input input',
			$closeClass = '.btn_search_close';

		var listShow = function(target){
			var $val = $(target).val(),
				$closest = $(target).closest($searchWrap),
				$target = $closest.find($contClass);;
			
			if($val != ''){
				$target.show();
			}else{
				$target.hide();
			}
		};

		$(document).on('click',$searchWrap+' '+$closeClass,function(e){
			$($contClass).removeAttr('style');
			$(this).closest($searchWrap).find('.btn_search').focus();
		});
		$(document).on('focus keyup',$searchWrap+' '+$inpClass,function(e){
			listShow(this);
		});

		
		$(document).on('touchstart',function(e){
			$($contClass).removeAttr('style');
			/*if($($contClass).find(':focus').length){
				$('.btn_search').focus();
			}*/
		}).on('touchstart',$searchWrap,function(e){
			e.stopPropagation();
		});

		$(document).on('blur',$contClass+' :focusable',function(e){
			var $this = $(this),
				$closest = $this.closest($contClass),
				$focusable = $($contClass).find($focusableEl),
				$focusableIdx = $focusable.index(this),
				$focusLength = $focusable.length;
			if($focusableIdx == ($focusLength-1))$closest.removeAttr('style');
		});

		$(document).on('focus','.total_search '+$inpClass,function(){
			$('.total_search .keyword_wrap').hide();
			$('.total_search .keyword_wrap2').show();
		})
		$(document).on('blur','.total_search .search_wrap :focusable, .total_search .keyword_wrap2 :focusable',function(){
			setTimeout(function(){
				if($('.total_search .keyword_wrap2 :focus').length == 0 && $('.total_search .search_wrap :focus').length == 0){
					$('.total_search .keyword_wrap').show();
					$('.total_search .keyword_wrap2').hide();
				}
			},30);
		});
		$(document).on('touchmove',function(e){
			$($searchWrap).find($inpClass).blur();
		}).on('touchmove',$searchWrap,function(e){
			e.stopPropagation();
		});
	},
	textCount:function(element,e){
		var $el = $(element),
			$val = $el.val(),
			$max = $el.attr('maxlength'),
			$length = $val.length,
			$target = $el.data('text-count');
		if($target == true){
			$target = $el.siblings('.byte').find('strong');
		}else{
			$target = $('#'+$target);
		}

		if(!!e && e.type == 'keyup'){
			$target.text(Math.min($max,$length));
		}else{
			if($val != '')$target.text(Math.min($max,$length));
		}
	},
	agreeAria:function(list, item, btn, panel){
		$(list+' '+item).each(function(e){
			var $btn = $(this).find(btn),
				$btnId = 'agree_btn_'+e,
				$panel = $(this).find(panel),
				$panelId = 'agree_panel_'+e;

			if($btn.length){
				$btn.attr({
					'id':$btnId,
					'aria-expanded':false,
					'aria-controls':$panelId
				});
				
				$panel.attr({
					'id':$panelId,
					'aria-labelledby':$btnId
				});
				if($btn.hasClass('open') || $panel.is(':visible')){
					$btn.attr('aria-expanded',true);
				}
			}
		});
	},
	agree:function(){
	//이용약관
		var $uiAgree = '.ui-agree',
			$chkList = '.chk_list',
			$chkItem = '.chk_item',
			$chkChild = '.chk_child',
			$agreeChk = '.checkbox input[type=checkbox]',
			$agreeTitChk = '.chk_item>.checkbox input[type=checkbox]',
			$toggleBtn = '.chk_link.toggle';
		
		formUI.agreeAria('.ui-agree', '.chk_item', '.chk_link.toggle','.chk_child');
		//토글버튼
		$(document).on('click',$chkList+' '+$toggleBtn,function(e){
			e.preventDefault();
			var $this = $(this),
				$closest = $this.closest($chkItem),
				$child = $closest.find($chkChild);
			if($this.hasClass('open')){
				$this.removeClass('open').attr('aria-expanded',false);
				$child.stop(true,false).slideUp(200);
			}else{
				$this.addClass('open').attr('aria-expanded',true);
				$child.stop(true,false).slideDown(200,function(){
					accordion.scroll($this,this);
				});
			}
		});

		//하위 약관동의
		$(document).on('change',$uiAgree+' '+$agreeChk,function(){
			var $closest = $(this).closest('.checkbox'),
				$wrap = $(this).closest($chkChild),
				$wrapChk = $wrap.find('>'+$agreeChk).length,
				$wrapChked = $wrap.find('>'+$agreeChk+':checked').length,
				$wrapInp = $wrap.siblings('.checkbox').children('input');

			if($(this).prop('checked')){
				//체크할때
				if($closest.next($chkChild).length){
					//1뎁스 체크박스일때
					$closest.next($chkChild).find($agreeChk).prop('checked',true);
				}else if($wrap.length){
					//2뎁스 체크박스일때
					if($wrapChk == $wrapChked){
						$wrapInp.prop('checked',true).change();
					}
				}
			}else{
				//해제할때
				if($closest.next($chkChild).length){
					//1뎁스 체크박스일때
					$closest.next($chkChild).find($agreeChk).prop('checked',false);
				}else if($wrap.length){
					//2뎁스 체크박스일때
					$wrapInp.prop('checked',false);
				}
			}
		});

		//전체동의
		$(document).on('change',$uiAgree+' '+$agreeTitChk,function(){
			var $closest = $(this).closest($chkItem),
				$list = $closest.next($chkChild),
				$togBtn = $(this).siblings($toggleBtn);
			if(!$closest.next($chkChild).length){
				$list = $closest.siblings($chkChild);
			}
			if($(this).prop('checked')){
				$list.find('>'+$agreeChk).prop('checked',true);
				if($togBtn.length && $togBtn.hasClass('open'))$togBtn.click();
			}else{
				$list.find('>'+$agreeChk).prop('checked',false);
				if($togBtn.length && !$togBtn.hasClass('open'))$togBtn.click();
			}
		});

		//기타 약관UI
		$(document).on('change','.ui-agree-chk input.all-item',function(){
			var $wrap = $(this).closest('.ui-agree-chk'),
				$chk = $wrap.find('input.chk-item');
			if($(this).prop('checked')){
				$chk.prop('checked',true).change();
			}else{
				$chk.prop('checked',false).change();
			}
		});
		$(document).on('change','.ui-agree-chk input.chk-item',function(){
			var $wrap = $(this).closest('.ui-agree-chk'),
				$allChk = $wrap.find('input.all-item')
				$chkLength = $wrap.find('input.chk-item').length,
				$checkedLength = $wrap.find('input.chk-item:checked').length;
			if($checkedLength > 0){
				$allChk.prop('checked',true);
			}else{
				$allChk.prop('checked',false);
			}
		});
	},
	etc:function(){
		//계좌,카드 직접입력
		$(document).on('click','.form_item .bank_wrap .btn_inp_change',function(){
			var $closest = $(this).closest('.bank_wrap'),
				$lbl = $closest.closest('.form_item').children('label'),
				$selectId = $closest.siblings('.bank_wrap').find('select').attr('id');

			$closest.hide().siblings('.bank_wrap').show().find($focusableEl).first().focus();
			if($lbl.length)$lbl.attr('for',$selectId);
		});
		$(document).on('change','.form_item .bank_wrap .select select',function(){
			var $val = $(this).val(),
				$closest = $(this).closest('.bank_wrap'),
				$lbl = $closest.closest('.form_item').children('label'),
				$selectId = $closest.siblings('.bank_wrap').find('select').attr('id');
			if($val == 'manual'){
				$closest.hide().siblings('.bank_wrap').show().find($focusableEl).first().focus();
				$(this).val('').change();
				if($lbl.length)$lbl.attr('for',$selectId);
			}
		});

		//이메일 직접입력
		$(document).on('change', '.email_form .email_sel select', function(){
			var $closest = $(this).closest('.email_form'),
				$inp = $closest.find('.email_inp .input input');
			if($(this).find(':selected').text() == '직접입력'){
				$closest.emailForm();
				$inp.val('').focus();
			}else{
				$closest.emailForm(false);
				$(this).next().focus();
			}
		});
		$(document).on('click', '.email_form .email_inp .btn_sel', function(e){
			var $closest = $(this).closest('.email_form'),
				$emlSel = $closest.find('.email_sel select');
			//$closest.emailForm(false);
			Layer.selectOpen($emlSel,e);
		});
		$(document).on('keyup', '.email_form .email_inp .input input', function(e){
			var $keyCode = (e.keyCode?e.keyCode:e.which),
				$closest = $(this).closest('.email_form'),
				$emlSel = $closest.find('.email_sel select'),
				$val = $(this).val();
			if($keyCode == 38 || ($keyCode == 37 && $val == '')){
				$emlSel.find(':selected').prev().prop('selected',true);
				$closest.emailForm(false);
			}
		});

		//버튼 스위치
		var $swichBtn = $('.checkbox.switch input');
		$swichBtn.each(function(){
			var $lbl = $(this).next('label'),
				$lblTxt = '';
			if($(this).prop('checked')){
				if($lbl.attr('aria-label') != undefined){
					$lblTxt = $lbl.attr('aria-label')
					$lblTxt = $lblTxt.replace('해제','등록');
					$lbl.attr('aria-label',$lblTxt);
				}else if($lbl.find('.blind').length){
					$lblTxt = $lbl.find('.blind').text();
					$lblTxt = $lblTxt.replace('해제','등록');
					$lbl.find('.blind').text($lblTxt);
				}else{
					$lblTxt = $lbl.text();
					$lblTxt = $lblTxt.replace('해제','등록');
					$lbl.text($lblTxt);
				}
			}
			/*else{
				$lblTxt = $lblTxt.replace('등록','해제');
				$lbl.find('.blind').text($lblTxt);
			}*/
		});
		$swichBtn.on('change',function(){
			var $lbl = $(this).next('label'),
				$lblTxt = $lbl.text();
			if($(this).prop('checked')){
				if($lbl.attr('aria-label') != undefined){
					$lblTxt = $lbl.attr('aria-label')
					$lblTxt = $lblTxt.replace('해제','등록');
					$lbl.attr('aria-label',$lblTxt);
				}else if($lbl.find('.blind').length){
					$lblTxt = $lbl.find('.blind').text();
					$lblTxt = $lblTxt.replace('해제','등록');
					$lbl.find('.blind').text($lblTxt);
				}else{
					$lblTxt = $lbl.text();
					$lblTxt = $lblTxt.replace('해제','등록');
					$lbl.text($lblTxt);
				}
			}else{
				if($lbl.attr('aria-label') != undefined){
					$lblTxt = $lbl.attr('aria-label')
					$lblTxt = $lblTxt.replace('등록','해제');
					$lbl.attr('aria-label',$lblTxt);
				}else if($lbl.find('.blind').length){
					$lblTxt = $lbl.find('.blind').text();
					$lblTxt = $lblTxt.replace('등록','해제');
					$lbl.find('.blind').text($lblTxt);
				}else{
					$lblTxt = $lbl.text();
					$lblTxt = $lblTxt.replace('등록','해제');
					$lbl.text($lblTxt);
				}
			}
		});

		//알뜰폰
		$(document).on('change','.btn_toggle .in_sel .select select',function(){
			var $val = $(this).val(),
				$li = $(this).closest('li'),
				$input = $li.find('>input');
			if($val != ''){
				//$li.siblings().find('>input').prop('checked',false);
				$input.prop('checked',true);
			}
		});
		$(document).on('click','.btn_toggle .in_sel>input,.btn_toggle .in_sel>label',function(){
			var $li = $(this).closest('li');
			$li.find('.ui-select-open').click();
		});
	},
	jqRange:function(){
		if($('.range_slider').length){
			$('.range_slider').each(function(){
				var $slider = $(this).find('.slider'),
					$list = $(this).find('.list'),
					$inp = $(this).find('input[type=hidden]'),
					$unit = $list.data('unit'),
					$title= $list.attr('title'),
					//$sel = $(this).find('.i_val'),
					$min = parseInt($slider.data('min')),
					$max = parseInt($slider.data('max')),
					$val = parseInt($slider.data('value')),
					$step = parseInt($slider.data('step'));

				if(!$min)$min = 0;
				if(!$max)$max = 5;
				if(!$step)$step = 1;
				if(!$val)$val = $min;

				if($list.length){
					$list.empty();
					if(!!$title)$list.removeAttr('title').append('<strong class="blind">'+$title+'</strong>');
					$list.append('<ul></ul>');
					for(var i = 0;i <= (($max-$min)/$step);i++){
						$list.find('ul').append('<li><a href="#" role="button">'+((i*$step)+$min)+$unit+'</span></a></li>');
						//$sel.append('<option value="'+i*$step+'">'+i*$step+'</option>');
					}
				}

				if($inp.length)$inp.val($val);
				var range = $slider.slider({
					min:$min,
					max:$max,
					value:$val,
					step:$step,
					range:'min',
					create:function(e){
						$slider.find('.ui-slider-handle').html('<span class="blind">선택한 값은</span><i>'+$val+$unit+'</i><span class="blind">입니다.</span>');
						//$sel.val($val).change();
						$list.find('li').eq(($val-$min)/$step).addClass('on').find('a').attr('title','현재선택');
					},
					stop:function(event,ui){
						$(ui.handle).find('i').html(ui.value+$unit);
						//$sel.val(ui.value).change();
						if($inp.length)$inp.val(ui.value).change();
						$slider.data('value',ui.value);
						$list.find('li').eq((ui.value-$min)/$step).siblings().removeClass('on').removeAttr('title');
						$list.find('li').eq((ui.value-$min)/$step).addClass('on').find('a').attr('title','현재선택');
					}
				});

				$list.find('a').click(function(e){
					e.preventDefault();
					var $txt = parseInt($(this).text());
					range.slider('value',$txt);
					$slider.find('.ui-slider-handle i').text($txt+$unit);
					if($inp.length)$inp.val($txt).change();
					//$sel.val($txt).change();
					$(this).parent().addClass('on').find('a').attr('title','현재선택')
					$(this).parent().siblings().removeClass('on').find('a').removeAttr('title');
				});

			});
		}
	},
	jqCalendar:function(element,callback){
	//jquery UI datepicker
		var h3Tit = $('<h3 class="title">날짜선택</h3>'),
			swipeArr = $('<div class="swipe_arr" aria-hidden="true"><i class="arr top"></i><i class="arr bottom"></i><i class="arr left"></i><i class="arr right"></i></div>'),
			swipeGuide = $('<div class="datepicker_guide">달력 부분을 상,하,좌,우 드래그하면<br>편리하게 이동할 수 있어요.</div>'),
			isSwipeGuide = true,
			prevYrBtn = $('<a href="#" role="button" class="ui-datepicker-prev-y" aria-label="이전년도 보기"><span>이전년도 보기</span></a>'),
			nextYrBtn = $('<a href="#" role="button" class="ui-datepicker-next-y" aria-label="다음년도 보기"><span>다음년도 보기</span></a>');
		var calendarOpen = function(target,ob){
			setTimeout(function(){
				var $calendar = '#'+ob.dpDiv[0].id,
					$header = $($calendar).find('.ui-datepicker-header'),
					$container = $($calendar).find('.ui-datepicker-calendar'),
					$min = $.datepicker._getMinMaxDate(target.data('datepicker'),'min'),
					$minY = $min.getFullYear(),
					$max = $.datepicker._getMinMaxDate(target.data('datepicker'),'max'),
					$maxY = $max.getFullYear(),
					$selectedYear = ob.selectedYear,
					$dimmedClass = 'datepicker-dimmed';
				
				if(!$($calendar).find('.title').length)$($calendar).prepend(h3Tit);
				if(!$($calendar).find('.swipe_arr').length)$($calendar).prepend(swipeArr);
				if(isSwipeGuide){
					$($calendar).addClass('add_guide').append(swipeGuide);
					isSwipeGuide = false;
				}else{
					$($calendar).removeClass('add_guide');
				}
				if(!$('.'+$dimmedClass).length)$($calendar).before('<div class="datepicker-dimmed" aria-hidden="true"></div>');
				
				$header.find('.ui-datepicker-year').attr('title','년 선택');
				$header.find('.ui-datepicker-month').attr('title','월 선택');
				$container.find('td>a').attr('role','button');
				if($container.find('.ui-state-highlight').length)$container.find('.ui-state-highlight').attr('title','오늘 일자');
				if($container.find('.ui-state-active').length)$container.find('.ui-state-active').attr('title','현재 달력에서 선택된 일자');

				var $prevMonthBtn = $header.find('.ui-datepicker-prev');
				var $nextMonthBtn = $header.find('.ui-datepicker-next');
				$prevMonthBtn.attr({
					'role':'button',
					'aria-label':'이전달 보기'
				}).before(prevYrBtn);
				var $prevYearBtn = $header.find('.ui-datepicker-prev-y');
				if($selectedYear <= $minY){
					$prevYearBtn.addClass('ui-state-disabled').attr('aria-disabled',true);
					$($calendar).find('.swipe_arr .top').addClass('off');
				}else{
					$prevYearBtn.removeClass('ui-state-disabled').removeAttr('aria-disabled');
					$($calendar).find('.swipe_arr .top').removeClass('off');
				}
				$nextMonthBtn.attr({
					'role':'button',
					'aria-label':'다음달 보기'
				}).after(nextYrBtn);
				var $nextYearBtn = $header.find('.ui-datepicker-next-y');
				if($selectedYear >= $maxY){
					$nextYearBtn.addClass('ui-state-disabled').attr('aria-disabled',true);
					$($calendar).find('.swipe_arr .bottom').addClass('off');
				}else{
					$nextYearBtn.removeClass('ui-state-disabled').removeAttr('aria-disabled');
					$($calendar).find('.swipe_arr .bottom').removeClass('off');
				}
				if($prevMonthBtn.hasClass('ui-state-disabled')){
					$prevMonthBtn.attr('aria-disabled',true);
					$($calendar).find('.swipe_arr .left').addClass('off');
				}else{
					$prevMonthBtn.removeAttr('aria-disabled');
					$($calendar).find('.swipe_arr .left').removeClass('off');
				}
				if($nextMonthBtn.hasClass('ui-state-disabled')){
					$nextMonthBtn.attr('aria-disabled',true);
					$($calendar).find('.swipe_arr .right').addClass('off');
				}else{
					$nextMonthBtn.removeAttr('aria-disabled');
					$($calendar).find('.swipe_arr .right').removeClass('off');
				}
				
				//$header.find('.ui-datepicker-title').append('월');
				$header.find('.ui-datepicker-prev, .ui-datepicker-next').attr('href','#');
				if(isMobile.any()){
					$($calendar).find('.title').attr('tabindex',-1).focus();
					if($('#wrap').length)$('#wrap').attr('aria-hidden',true);
				}else{
					$($calendar).attr('tabindex',0).focus();
					Layer.focusMove($calendar);
				}

				if(!$container.data('init')){
					$container.data('init',true);
					$container.swipe({
						swipeStatus:function(event,phase,direction,distance,duration,fingerCount,fingerData,currentDirection){
							var $this = $(this),
								$max = 30,
								$btnPrevMonth = $header.find('.ui-datepicker-prev'),
								$btnNextMonth = $header.find('.ui-datepicker-next'),
								$btnPrevYear = $header.find('.ui-datepicker-prev-y'),
								$btnNextYear = $header.find('.ui-datepicker-next-y');
							if(direction != null){
								var $distance = Math.min($max,distance);
								if(direction == 'left' || direction == 'up')$distance = -$distance;
								if(direction == 'left' || direction == 'right')$this.css('left',$distance);
								if(direction == 'up' || direction == 'down')$this.css('top',$distance);
								if(phase == 'end' || phase == 'cancel'){
									$this.animate({
										'left':0,
										'top':0
									},200,function(){
										if(Math.abs($distance) >= $max){
											if(direction == 'right' && !$btnPrevMonth.hasClass('ui-state-disabled'))$btnPrevMonth.click();
											if(direction == 'left' && !$btnNextMonth.hasClass('ui-state-disabled'))$btnNextMonth.click();
											if(direction == 'down' && !$btnPrevYear.hasClass('ui-state-disabled'))$btnPrevYear.click();
											if(direction == 'up' && !$btnNextYear.hasClass('ui-state-disabled'))$btnNextYear.click();
										}
									});
								}
							}
						},
						cancleTreshold:0
					});
				}
			
				$header.find('.ui-datepicker-prev-y').unbind('click').bind('click',function(){
					if(!$(this).hasClass('ui-state-disabled'))$.datepicker._adjustDate(target,-1,'Y');
				});
				$header.find('.ui-datepicker-next-y').unbind('click').bind('click',function(){
					if(!$(this).hasClass('ui-state-disabled'))$.datepicker._adjustDate(target,+1,'Y');
				});
			},5);
		};
		var calendarClose = function(target,ob){
			Body.unlock();
			$(ob.input).change();
			var $cal = $('#'+ob.dpDiv[0].id);
			if($('#wrap').length)$('#wrap').removeAttr('aria-hidden');
			$cal.find('.title').removeAttr('tabindex');
			$('.datepicker-dimmed').remove();
			$(target).next('.ui-datepicker-trigger').focus();
			if($(target).data('isReadonly') != true)$(target).prop('readonly',false);
		};

		if($(element).length){
			$(element).each(function(){
				var $this = $(this),
					$minDate = $(this).data('min'),
					$maxDate = $(this).data('max'),
					$range = $(this).data('range');
				if($minDate == undefined)$minDate = '-100y';
				if($maxDate == undefined)$maxDate = '+100y';
				if($range == undefined)$range = '-100:+100';
				$this.datepicker({
					minDate: $minDate,
					maxDate: $maxDate,
					closeText: '닫기',
					prevText: '이전달 보기',
					nextText: '다음달 보기',
					currentText: '오늘',
					buttonText : '기간조회',
					monthNames: ['01','02','03','04','05','06','07','08','09','10','11','12'],
					monthNamesShort:['01','02','03','04','05','06','07','08','09','10','11','12'],
					dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
					dayNamesMin: ['일','월','화','수','목','금','토'],
					dateFormat:'yy.mm.dd',
					yearRange:$range,
					yearSuffix: '. ',
					showMonthAfterYear: true,
					showButtonPanel: true,
					showOn:'button',
					changeMonth: true,
					changeYear: true,
					showOtherMonths: true,
					selectOtherMonths: true,
					beforeShow: function(el,ob){
						//열때
						Body.lock();
						if($this.prop('readonly') == true){
							$this.data('isReadonly',true);
						}else{
							$this.prop('readonly',true);
						}

						//기간 선택
						var $closest = $(this).closest('.date_wrap');
						if($closest.length && $closest.find(element).length == 2){
							var $idx = $closest.find(element).index(this),
								$first = $closest.find(element).eq(0),
								$last = $closest.find(element).eq(1);
							if($idx == 0 && $last.val() != '')$first.datepicker('option','maxDate',$last.val());
							if($idx == 1 && $first.val() != '')$last.datepicker('option','minDate',$first.val());
						}
						
						calendarOpen($this,ob);
					},
					onChangeMonthYear: function(y,m,ob){
						//달력 바뀔때
						//console.log('onChangeMonthYear');
						calendarOpen($this,ob);
					},
					onSelect: function(d,ob){
						//선택할때
						calendarClose(this,ob);

						//기간 선택
						/*var $closest = $(this).closest('.date_wrap');
						if($closest.length && $closest.find(element).length == 2){
							var $idx = $closest.find(element).index(this),
								$first = $closest.find(element).eq(0),
								$last = $closest.find(element).eq(1);
							if($idx == 1){
								$first.datepicker('option','maxDate',d);
							}else{
								$last.datepicker('option','minDate',d);
							}
						}*/

						//콜백
						if(!!callback)callback();
					},
					onClose: function(d,ob){
						//닫을때
						calendarClose(this,ob);
					}
				});

				//달력버튼 카드리더기에서 안읽히게
				$(this).siblings('.ui-datepicker-trigger').attr({
					'aria-label':'달력팝업으로 기간조회'
					//'aria-hidden':true,
					//'tabindex':-1
				});

				$(document).on('touchend','.datepicker-dimmed',function(){
					$('.hasDatepicker').datepicker('hide');
				});
			});

			$(element).focusin(function(){
				if($(this).hasClass('ui-date')){
					var $val = $(this).val();
					$(this).val(onlyNumber($val));
				}
			});
			$(element).focusout(function(){
				if($(this).hasClass('ui-date')){
					var $val = $(this).val();
					$(this).val(autoDateFormet($val,'.'));
				}
			});
		}

	},
	init:function(){
		formUI.focus();
		formUI.select();
		formUI.input();
		formUI.delBtn();
		//formUI.removeError();
		formUI.search();
		formUI.agree();
		formUI.etc();

		formUI.jqRange();
		formUI.jqCalendar('.datepicker');
		sclCalendar.init('.s_datepicker');

		//입력 텍스트 카운팅(입력)
		$(document).on('keyup','[data-text-count]',function(e){
			formUI.textCount(this,e);
		});
	}
};
$.fn.emailForm = function(val){
	var $this = $(this);
	if(val == false){
		$this.find('.email_inp').hide();
		$this.find('.email_sel').show();
	}else{
		$this.find('.email_sel').hide();
		$this.find('.email_inp').show().find('.btn_sel').attr('aria-label','팝업으로 이메일 도메인 선택');
	}
};
//스크롤달력
var sclCalendar = {
	dateMark:'.',
	timeMark:':',
	dateHtml:function(type,start,end,val,step){
		if(!step)step=1;
		var $nuit = '',$Html = '';
		if(type == 'Y'){
			$nuit = '년';
		}else if(type == 'M'){
			$nuit = '월';
		}else if(type == 'D'){
			$nuit = '일';
		}else if(type == 'h'){
			$nuit = '시';
		}else if(type == 'm'){
			$nuit = '분';
		}
		for(var i=start; i<=(end/step); i++){
			var _i = i*step;
			$Html += '<button type="button" class="scl_cal_item'+(_i==val?' active" title="현재선택':'')+'"><span class="val">'+(_i<10?'0'+_i:_i)+'</span><span class="blind">'+$nuit+' 선택</span></button>';
		}
		return $Html;
	},
	getMonthlyDay:function(year,month){
		var $day = 31;
		if(month == 4 || month == 6	|| month == 9 || month == 11){
			$day = 30;
		}else if(month == 2){
			if(year%4 == 0 && (year%100 != 0 || year%400 == 0)){
				$day = 29;
			}else{
				$day = 28;
			}
		}
		return $day;
	},
	HTML:function(element){
		if($(element).length){
			$(element).each(function(i){
				var $this = $(this),
					$thisId = $this.attr('id'),
					$type = $this.data('type'),
					$title = $this.data('title'),
					$btnTxt = $title;
				if($thisId == undefined || $thisId == ''){
					$thisId = 'sclCal_'+i;
					$this.attr('id',$thisId);
				}
				if($type == undefined)$type = 'date';
				if($btnTxt == undefined)$btnTxt = '선택';
				if(!$this.siblings('.btn_select').length){
					$this.parent().addClass('scl_cal_btn');
					$this.data('pop',$thisId+'Pop');
					$this.after('<a href="#'+$thisId+'Pop" class="btn_select ui-date-open" role="button" aria-label="'+$btnTxt+'"></a>');
				}
			});
		}
	},
	POP:function(element){
		var $this = $(element),
			$popId = $this.data('pop'),
			$popH1 = $this.data('title'),
			$type = $this.data('type'),
			$html = '';
		if($popH1 == undefined)$popH1 = $this.attr('title');
		if($popH1 == undefined)$popH1 = $this.siblings('.btn_select').text();
		if($type == undefined)$type = 'date';
		$html += '<div id="'+$popId+'" class="'+Layer.popClass+' bottom ui-calendar" role="dialog" aria-hidden="true">';
			$html += '<article class="'+Layer.wrapClass+'">';
				$html += '<div class="'+Layer.headClass+'"><h1>'+$popH1+'</h1><a href="#" class="pop_close ui-pop-close" role="button" aria-label="팝업창 닫기"></a></div>';
				$html += '<div class="'+Layer.contClass+'">';
					$html += '<div class="scl_calrender">';
						$html += '<div class="tbl">';
						if($type == 'full' || $type == 'date'){
							$html += '<dl class="td scl_cal_group scl_year">';
								$html += '<dt>년</dt>';
								$html += '<dd></dd>';
							$html += '</dl>';
							$html += '<dl class="td scl_cal_group scl_month">';
								$html += '<dt>월</dt>';
								$html += '<dd></dd>';
							$html += '</dl>';
							$html += '<dl class="td scl_cal_group scl_day">';
								$html += '<dt>일</dt>';
								$html += '<dd></dd>';
							$html += '</dl>';
						}
						if($type == 'full' || $type == 'time'){
							$html += '<dl class="td scl_cal_group scl_hour">';
								$html += '<dt>시</dt>';
								$html += '<dd></dd>';
							$html += '</dl>';
							$html += '<dl class="td scl_cal_group scl_min">';
								$html += '<dt>분</dt>';
								$html += '<dd></dd>';
							$html += '</dl>';
						}
						$html += '</div>';
					$html += '</div>';
				$html += '</div>';
			$html += '</article>';
		$html += '</div>';
		$('body').append($html);
		$('#'+$popId).data('target',$this);
		if($type == 'full')$('#'+$popId).find('.scl_calrender').addClass('full');
	},
	UI:function(element){
		$(element).each(function(){
			var $el = $(this);
			$el.change(function(){
				var $this = $(this),
					$popId = $this.data('pop'),
					$wrap = $('#'+$popId),
					$group = $wrap.find('.scl_cal_group '),
					$type = $this.data('type'),
					$today = autoDateFormet($nowDateDay.toString(),sclCalendar.dateMark),
					$todayAry = $today.split(sclCalendar.dateMark),
					$min = $this.data('min'),$minDate = $this.data('min-date'),$minHour = $this.data('min-hour'),
					$minAry = '',$minVal = '',$minAry2 = '',$minOj = {},$minY = '',$minM = '',$minD = '',
					$max = $this.data('max'),$maxDate = $this.data('max-date'),$maxHour = $this.data('max-hour'),
					$maxAry = '',$maxVal = '',$maxAry2 = '',$maxOj = {},$maxY = '',$maxM = '',$maxD = '',$maxH = '',
					$thisVal = $this.val(),
					$thisValAry = '',$replaceVal = [],$getDay = '',
					$range = $this.data('range'),
					$rangeS = '',$rangeE = '',
					$yearS = '',$yearE = '',
					$monthS = '',$monthE = '',
					$dayS = '',$dayE = '',
					$hourS = '',$hourE = '',
					$dayStep = $this.data('day-step'),$minStep = $this.data('min-step'),
					$item = '',$val = '',$groupEl = '';
				if(!!$minDate){
					$minDate = autoDateFormet($minDate.toString(),sclCalendar.dateMark);
					$minAry = $minDate.split(sclCalendar.dateMark);
				}else{
					if(!!$min){
						if($min == 'today'){
							$minAry = $todayAry.slice();
						}else if($min.indexOf('Y') >= 1 || $min.indexOf('M') >= 1 || $min.indexOf('D') >= 1){
							$minAry = $min.split(',');
							for(var min_i = 0; min_i<$minAry.length; min_i++){
								$minAry2 = $minAry[min_i].split(sclCalendar.timeMark);
								$minOj[$minAry2[0]] = parseInt($minAry2[1]);
							}
							for(var min_j in $minOj){
								if(min_j == 'Y'){
									$minY = parseInt($todayAry[0])-$minOj[min_j];
									$todayAry[0] = $minY;
								}
								if(min_j == 'M'){
									$minM = parseInt($todayAry[1])-$minOj[min_j];
									if($minM < 1){
										$todayAry[0] = $todayAry[0]-1;
										$minM = $minM+12;
									}
									$todayAry[1] = ($minM<10?'0'+$minM:$minM);
								}
								if(min_j == 'D'){
									$minD = parseInt($todayAry[2])-$minOj[min_j];
									if($minD < 1){
										$todayAry[1] = $todayAry[1]-1;
										if($todayAry[1] < 1){
											$todayAry[0] = $todayAry[0]-1;
											$todayAry[1] = $todayAry[1]+12;
										}
										$getDay = sclCalendar.getMonthlyDay($todayAry[0],$todayAry[1]);
										$minD = $minD+$getDay;
									}
									$todayAry[2] = ($minD<10?'0'+$minD:$minD);
								}
							}
							$minAry = $todayAry.slice();
						}
					}
				}
				if(!!$maxDate){
					$maxDate = autoDateFormet($maxDate.toString(),sclCalendar.dateMark);
					$maxAry = $maxDate.split(sclCalendar.dateMark);
				}else{
					if(!!$max){
						if($max == 'today'){
							$maxAry = $todayAry.slice();
						}else{
							$maxAry = $max.split(',');
							for(var max_i = 0; max_i<$maxAry.length; max_i++){
								$maxAry2 = $maxAry[max_i].split(sclCalendar.timeMark);
								$maxOj[$maxAry2[0]] = parseInt($maxAry2[1]);
							}
							for(var max_j in $maxOj){
								if(max_j == 'Y'){
									$maxY = parseInt($todayAry[0])+$maxOj[max_j];
									$todayAry[0] = $maxY;
								}
								if(max_j == 'M'){
									$maxM = parseInt($todayAry[1])+$maxOj[max_j];
									if($maxM > 12){
										$todayAry[0] = $todayAry[0]+1;
										$maxM = $maxM-12;
									}
									$todayAry[1] = ($maxM<10?'0'+$maxM:$maxM);
								}
								if(max_j == 'D'){
									$maxD = parseInt($todayAry[2])+$maxOj[max_j];
									$getDay = sclCalendar.getMonthlyDay($todayAry[0],$todayAry[1]);
									if($maxD > $getDay){
										$todayAry[1] = $todayAry[1]+1;
										if($todayAry[1] > 12){
											$todayAry[0] = $todayAry[0]+1;
											$todayAry[1] = $todayAry[1]-12;
										}
										$maxD = $maxD-$getDay;
									}
									$todayAry[2] = ($maxD<10?'0'+$maxD:$maxD);
								}
							}
							$maxAry = $todayAry.slice();
						}
					}
				}
				if($thisVal != ''){
					if($type == undefined)$type = 'date';
					if($type == 'date')$thisValAry = $thisVal.split(sclCalendar.dateMark);
					if($type == 'time')$thisValAry = $thisVal.split(sclCalendar.timeMark);
					if($type == 'full'){
						var $thisVal2 = $thisVal.split(' ');
						$thisValAry = $thisVal2[0].split(sclCalendar.dateMark);
						$thisValAry = $thisValAry.concat($thisVal2[1].split(sclCalendar.timeMark));
					}

					//range 설정
					if($range == undefined){
						$rangeS = 10;
						$rangeE = 10;
					}else{
						if($range.toString().indexOf(':') >= 0){
							$range = $range.split(':');
							$rangeS = parseInt($range[0]);
							$rangeE = parseInt($range[1]);
						}else{
							$rangeS = $range;
							$rangeE = $range;
						}
					}

					//달력 및 시간 넣기
					for(var i = 0;i<$thisValAry.length;i++){
						$val = parseInt($thisValAry[i]);
						$groupEl = $group.eq(i);
						if($groupEl.hasClass('scl_year')){
							//년
							$yearS = $nowDateOnlyYear-$rangeS;
							$yearE = $nowDateOnlyYear+$rangeE;
							if($val < $yearS)$yearS= $val;
							if($val > $yearE)$yearE= $val;
							if(!!$min || !!$minDate){
								$minVal = parseInt($minAry[0]);
								if($yearS < $minVal)$yearS = $minVal;
								if($val < $minVal)$val = $minVal;
							}
							if(!!$max || !!$maxDate){
								$maxVal = parseInt($maxAry[0]);
								if($yearE > $maxVal)$yearE = $maxVal;
								if($val > $maxVal)$val = $maxVal;
							}
							if(!!$min || !!$max || !!$minDate || !!$maxDate)$replaceVal.push($val);
							$item = sclCalendar.dateHtml('Y',$yearS,$yearE,$val);
							if($groupEl.find('.scl_cal_item').length != ($yearE-$yearS+1))$groupEl.find('dd').html($item);
						}else if($groupEl.hasClass('scl_month')){
							//월
							$monthS = 1;
							$monthE = 12;
							if((!!$min || !!$minDate) && $yearS == parseInt($wrap.find('.scl_year .active').text())){
								$minVal = parseInt($minAry[1]);
								if($monthS < $minVal)$monthS = $minVal;
								if($val < $minVal)$val = $minVal;
							}
							if((!!$max || !!$maxDate) && $yearE == parseInt($wrap.find('.scl_year .active').text())){
								$maxVal = parseInt($maxAry[1]);
								if($monthE > $maxVal)$monthE = $maxVal;
								if($val > $maxVal)$val = $maxVal;
							}
							if(!!$min || !!$max || !!$minDate || !!$maxDate)$replaceVal.push($val<10?'0'+$val:$val);
							$item = sclCalendar.dateHtml('M',$monthS,$monthE,$val);
							if($groupEl.find('.scl_cal_item').length != ($monthE-$monthS+1))$groupEl.find('dd').html($item);
						}else if($groupEl.hasClass('scl_day')){
							//일
							if($dayStep == undefined)$dayStep = 1;
							$dayS = 1;
							$dayE = sclCalendar.getMonthlyDay($thisValAry[0],$thisValAry[1]);
							if((!!$min || !!$minDate) && $yearS == parseInt($wrap.find('.scl_year .active').text()) && $monthS == parseInt($wrap.find('.scl_month .active').text())){
								$dayE = sclCalendar.getMonthlyDay($minAry[0],$minAry[1]);
								$minVal = parseInt($minAry[2]);
								if($dayS < $minVal)$dayS = $minVal;
								if($val < $minVal)$val = $minVal;
							}
							if((!!$max || !!$maxDate) && $yearE == parseInt($wrap.find('.scl_year .active').text()) && $monthE == parseInt($wrap.find('.scl_month .active').text())){
								$dayE = sclCalendar.getMonthlyDay($maxAry[0],$maxAry[1]);
								$maxVal = parseInt($maxAry[2]);
								if($dayE > $maxVal)$dayE = $maxVal;
								if($val > $maxVal)$val = $maxVal;
							}
							if(!!$min || !!$max || !!$minDate || !!$maxDate)$replaceVal.push($val<10?'0'+$val:$val);
							if($dayE < $val){
								$this.val($thisVal.replace(sclCalendar.dateMark+($val<10?'0'+$val:$val),sclCalendar.dateMark+($dayE<10?'0'+$dayE:$dayE)));
								$val = $dayE;
							}
							if($val%$dayStep != 0){
								var $val2 = $val+($dayStep-$val%$dayStep);
								$this.val($thisVal.replace(sclCalendar.dateMark+($val<10?'0'+$val:$val),sclCalendar.dateMark+($val2<10?'0'+$val2:$val2)));
								$val = $val2;
							}
							$item = sclCalendar.dateHtml('D',$dayS,$dayE,$val,$dayStep);
							if($groupEl.find('.scl_cal_item').length != ($dayE-$dayS+1) || $dayS != 1)$groupEl.find('dd').html($item);
						}else if($groupEl.hasClass('scl_hour')){
							$hourS = 0;
							$hourE = 23;
							if(!!$minHour)$hourS=$minHour;
							if(!!$maxHour)$hourE=$maxHour;
							$item = sclCalendar.dateHtml('h',$hourS,$hourE,$val);
							if($groupEl.find('.scl_cal_item').length != ($hourE-$hourS+1))$groupEl.find('dd').html($item);
						}else if($groupEl.hasClass('scl_min')){
							if($minStep == undefined)$minStep = 1;
							if($val%$minStep != 0){
								$val = $val+($minStep-$val%$minStep);
							}
							$item = sclCalendar.dateHtml('m',0,59,$val,$minStep);
							if($groupEl.find('.scl_cal_item').length != (60/$minStep))$groupEl.find('dd').html($item);
						}
					}
					if($replaceVal.length){
						$replaceVal = $replaceVal.join(sclCalendar.dateMark);
						if($thisVal.substr(0,10) != $replaceVal){
							$this.val($thisVal.replace($thisVal.substr(0,10),$replaceVal));
						}
					}
				}
			});
		});

		$(document).on('click','.ui-date-open',function(e){
			e.preventDefault();
			var $this = $(this),
				$href = $this.attr('href'),
				$input = $this.siblings('input'),
				$type = $input.data('type'),
				$todayDate = autoDateFormet($nowDateDay.toString(),sclCalendar.dateMark);
			if($type == undefined)$type = 'date';
			if($type == 'full')$todayDate = $todayDate + ' '+autoTimeFormet($nowDateOnlyTime.toString(),sclCalendar.timeMark);
			if($type == 'time')$todayDate = autoTimeFormet($nowDateOnlyTime.toString(),sclCalendar.timeMark);
			
			sclCalendar.POP($input);
			if($input.val() == ''){
				$input.val($todayDate).change().keyup();
			}else{
				$input.change().keyup();
			}
			Layer.open($href,function(){
				var $group = $($href).find('.scl_cal_group');
				$group.each(function(){
					var $active = $(this).find('.active');
					if($active.length){
						scrollUI.center($active,100,'vertical');
					}
				});
			});
		});

		$(document).on('click','.scl_calrender .scl_cal_item',function(e){
			e.preventDefault();
			var $wrap = $(this).closest('.'+Layer.popClass),
				$group = $wrap.find('.scl_cal_group'),
				$input = $wrap.data('target'),
				$type = $($input).data('type'),
				$valAry = [],
				$val = '',
				$active = '';
			if($type == undefined)$type = 'date';
			$(this).addClass('active').attr('title','현재선택').siblings().removeClass('active').removeAttr('title');
			scrollUI.center(this,100,'vertical');
			$group.each(function(){
				$active = $(this).find('.active .val');
				$valAry.push($active.text());
			});
			if($type == 'date')$val = $valAry.join(sclCalendar.dateMark);
			if($type == 'time')$val = $valAry.join(sclCalendar.timeMark);
			if($type == 'full')$val = $valAry[0]+sclCalendar.dateMark+$valAry[1]+sclCalendar.dateMark+$valAry[2]+' '+$valAry[3]+sclCalendar.timeMark+$valAry[4];
			$($input).val($val).change().keyup();
		});

		$(document).on('keydown','.scl_calrender .scl_cal_item',function(e){
			var $keyCode = (e.keyCode?e.keyCode:e.which),
				$this = $(this),
				$group = $this.closest('.scl_cal_group');
			if($keyCode == 38 && $this.prev().length){
				//up
				e.preventDefault();
				$this.prev().focus();
			}else if($keyCode == 40 && $this.next().length){
				//down
				e.preventDefault();
				$this.next().focus();
			}else if($keyCode == 9){
				//tab
				if(e.shiftKey){
					if($group.prev().length){
						e.preventDefault();
						$group.prev().find('.scl_cal_item').first().focus();
					}else{
						if($(this).index() != 0){
							$group.find('.scl_cal_item').first().focus();
						}
					}
				}else{
					if($group.next().length){
						e.preventDefault();
						$group.next().find('.scl_cal_item').first().focus();
					}else{
						if($(this).index()+1 != $group.find('.scl_cal_item').length){
							$group.find('.scl_cal_item').last().focus();
						}
					}
				}
			}
		});

		$(document).on('click','.' +Layer.calendarClass,function(e){
			e.preventDefault();
			Layer.close(this);
		}).on('click','.'+Layer.wrapClass,function(e){
			e.stopPropagation();
		});
	},
	init:function(element){
		sclCalendar.HTML(element);
		sclCalendar.UI(element);
	}
};

//리스트 관련 UI
var listUI = {
	winLoad:function(){
		//토글실행
		accordion.list('.ui-accordion','.tit a','.panel');
		accordion.list('.box_list_1','.expend_btn .button','.expend_cont');
		accordion.btn('.ui-toggle-btn');

		//테이블 스크롤 가이드 실행
		/*if($('.tbl_scroll').length){
			tblUI.guideScl('.tbl_scroll');
			tblUI.guide('.tbl_scroll');
		}*/

		//테이블 rowspan
		if($('table th[rowspan]').length){
			$('table th[rowspan]').each(function(){
				var $this = $(this),
					$idx = $this.index(),
					$trIdx = ($this.parent().index()+1),
					$tbody = $this.parent().parent(),
					$rowspan = parseInt($this.attr('rowspan'));
					for(var i = $trIdx;i < ($trIdx+$rowspan-1);i++){
						$tbody.children().eq(i).children().eq($idx).addClass('l_line');
					}
			});
		}
	},
	allChk:function(){
		//전체선택(기본)
		$(document).on('change','.ui-all-chk .list_util .checkbox input',function(){
			var $list = $(this).closest('.list_util').next(),
				$chk = $list.find('.checkbox input').not(':disabled');
			if($(this).prop('checked')){
				if($(this).siblings('label').length)$(this).siblings('label').changeTxt('선택','해제');
				$chk.prop('checked',true).change();
			}else{
				if($(this).siblings('label').length)$(this).siblings('label').changeTxt('해제','선택');
				$chk.prop('checked',false).change();
			}
		});
		$(document).on('change','.ui-all-chk>.chk_list .checkbox input',function(){
			var $closest = $(this).closest('.chk_list'),
				$allchk = $closest.prev().find('.checkbox input'),
				checkBoxLength = $closest.find('.checkbox input').not(':disabled').length,
				checkedLength = $closest.find('.checkbox input:checked').length;
			if(checkBoxLength == checkedLength){
				$allchk.prop('checked',true).siblings('label').changeTxt('선택','해제');
			}else{
				$allchk.prop('checked',false).siblings('label').changeTxt('해제','선택');
			}
		});

		//btn_toggle 전체선택
		$(document).on('change','.ui-all-chk2 input.all-item',function(){
			var $wrap = $(this).closest('.ui-all-chk2'),
				$chk = $wrap.find('input.chk-item').not(':disabled');
			if($(this).prop('checked') == true){
				$chk.prop('checked',true).change();
			}else{
				$chk.prop('checked',false).change();
			}
		});
		$(document).on('change','.ui-all-chk2 input.chk-item',function(){
			var $wrap = $(this).closest('.ui-all-chk2'),
				$allChk = $wrap.find('input.all-item')
				$chkLength = $wrap.find('input.chk-item').not(':disabled').length,
				$checkedLength = $wrap.find('input.chk-item:checked').length;
			if($chkLength == $checkedLength){
				$allChk.prop('checked',true);
			}else{
				$allChk.prop('checked',false);
			}
		});

		//라디오기능 체크박스 + 전체선택
		$(document).on('change','.ui-all-chk3 .list_util .checkbox input',function(){
			var $list = $(this).closest('.list_util').next(),
				$chk = $list.find('li').find('.checkbox input').not(':disabled, .except'),
				$except = $list.find('li').find('.checkbox input.except').not(':disabled');
			if($(this).prop('checked')){
				$(this).siblings('label').changeTxt('선택','해제');
				$chk.prop('checked',true).closest('li').addClass('checked');
				$except.prop('checked',false).closest('li').removeClass('checked');
			}else{
				$(this).siblings('label').changeTxt('해제','선택');
				$chk.prop('checked',false).closest('li').removeClass('checked');
			}
		});
		$(document).on('change','.ui-all-chk3 .chk_list .checkbox input',function(){
			var $closest = $(this).closest('.chk_list'),
				$allchk = $closest.prev().find('.checkbox input');
			if($(this).prop('checked')){
				$(this).closest('li').siblings().removeClass('checked').find('.checkbox input').not(':disabled').prop('checked',false);
			}else{
				$allchk.prop('checked',false).siblings('label').changeTxt('해제','선택');
				$(this).closest('li').siblings().removeClass('checked').find('.checkbox input').not(':disabled').prop('checked',false);
			}
		});
	},
	init:function(){
		listUI.allChk();
	}
};
//아코디언 함수
var accordion = {
	listAria:function(list,btn,panel,addClass){
		if(!addClass)addClass = 'open';
		if($(list).length){
			$(list).each(function(e){
				$(this).children().each(function(f){
					var $btn = $(this).find(btn),
						$btnId = $btn.attr('id'),
						$panel = $(this).find(panel),
						$panelId = $panel.attr('id');
					if($btn.attr('aria-expanded') == undefined){
						if($btnId == undefined){
							$btnId = 'tglist_btn_'+e+'_'+f;
							$btn.attr('id', $btnId);
						}
						if($panelId == undefined){
							$panelId = 'tglist_panel_'+e+'_'+f;
							$panel.attr('id', $panelId);
						}
						$btn.attr({
							'role':'button',
							'aria-expanded':false,
							'href': '#'+$panelId,
							'aria-controls': $panelId
						});
						$panel.attr({
							'aria-hidden':'true',
							'aria-labelledby':$btnId
						});
					}
				});
			});
			if($(list).find('.'+addClass).length){
				$(list).find('.'+addClass).each(function(){
					$(this).find(btn).attr('aria-expanded',true);
					$(this).find(panel).removeAttr('aria-hidden').show();
					if($(this).find(btn).children('span').length && $(this).find(btn).children('span').text() == '더보기'){
						$(this).find(btn).children('span').text('닫기');
					}
				});
			}
		}
	},
	list:function(list,btn,panel,addClass,speed){
		if(!addClass)addClass = 'open';
		if(!speed)speed = 200;
		$(document).on('click',list+' '+btn,function(e){	
			e.preventDefault();
			var $this = $(this),
				$list = $this.closest(list),
				$li = $this.closest('li'),
				$openDelay = 0;
			if($this.closest('.disabled').length || $this.hasClass('disabled')) return false;
			
			var slideCallback = function(){
				if($li.find(panel).find('.ui-swiper').length){
					swiperUI.item();
				}
				if($this.closest('.card_detail_cont').length){
					if($detailSwiper != '')$detailSwiper.update();
				}
				if($this.closest('.search_swiper').length){
					if($searchSwiper != '')$searchSwiper.update();
				}
			};

			if($li.hasClass(addClass)){
				$li.find(btn).attr('aria-expanded',false);
				$li.removeClass(addClass);
				$li.find(panel).attr('aria-hidden',true).stop(true,false).slideUp(speed,function(){
					slideCallback();
				});
				if($this.children('span').length && $this.children('span').text() == '닫기'){
					$this.children('span').text('더보기');
				}
			}else{
				$li.addClass(addClass).find(btn).attr('aria-expanded',true);
				if(!$list.hasClass('not-toggle')){
					var $siblings = $li.siblings();
					$siblings.removeClass(addClass).find(btn).attr('aria-expanded',false);
					$siblings.find(panel).attr('aria-hidden',true).stop(true,false).slideUp(speed);
					if($siblings.find(btn).children('span').length && $siblings.find(btn).children('span').text() == '닫기'){
						$siblings.find(btn).children('span').text('더보기');
					}
				}
				if($li.find(panel).html() == '')$openDelay = 100;
				$li.find(panel).removeAttr('aria-hidden').stop(true,false).delay($openDelay).slideDown(speed,function(){
					accordion.scroll($this,this);
					slideCallback();
				});
				if($this.children('span').length && $this.children('span').text() == '더보기'){
					$this.children('span').text('닫기');
				}
			}
			
			
		});

		accordion.listAria(list,btn,panel,addClass);
	},
	btnAria:function(btn,className){
		if(className == undefined)className = 'open';
		if($(btn).length){
			$(btn).each(function(e){
				var $btn = $(this),
					$btnId = $(this).attr('id'),
					$panelId = $(this).attr('href').substring(1),
					$panel = $('#'+$panelId);
				//if($btn.attr('aria-expanded') != undefined) return false;
				if(($panelId == '' || $panelId == 'none') && $btn.closest('.accordion_list').length){
					$panel = $btn.closest('.accordion_list').find('.panel');
					if($panel.attr('id'))$panelId = $panel.attr('id');
				}
				if(!$btnId)$btnId = 'tg_btn_'+e;
				if($panelId == '')$panelId = 'tg_panel_'+e;
				$btn.attr({
					'id': $btnId,
					'role':'button',
					'href': '#'+$panelId,
					'aria-expanded':false,
					'aria-controls': $panelId
				});
				$panel.attr({
					'id': $panelId,
					'aria-hidden':'true',
					'aria-labelledby':$btnId
				});
				//panel이 보이면
				if($panel.is(':visible')){
					$(this).addClass(className).attr('aria-expanded',true);
				}
				//btn이 활성화면
				if($(this).hasClass(className)){
					$(this).attr('aria-expanded',true);
					$panel.removeAttr('aria-hidden').show();
				}
			});
		}
	},
	btn:function(btn,className,speed){
		if(!className)className = 'open';
		if(!speed)speed = 200;
		$(document).on('click',btn,function(e){
			e.preventDefault();
			var $this = $(this),
				$panel = $this.attr('href');
			if($this.closest('.disabled').length || $this.hasClass('disabled')) return false;

			var slideCallback = function(){
				if($($panel).find('.ui-swiper').length){
					swiperUI.item();
				}
				if($this.closest('.card_detail_cont').length){
					if($detailSwiper != '')$detailSwiper.update();
				}
			};

			if(($panel == '#' || $panel == '#none') && $this.closest('.accordion_list').length)$panel = $this.closest('.accordion_list').find('.panel');
			if($this.hasClass(className)){
				$this.removeClass(className).attr('aria-expanded',false);
				$($panel).attr('aria-hidden',true).stop(true,false).slideUp(speed,function(){
					slideCallback();
				});
			}else{
				$this.addClass(className).attr('aria-expanded',true);
				$($panel).removeAttr('aria-hidden').stop(true,false).slideDown(speed,function(){
					accordion.scroll($this,this);
					slideCallback();
				});
			}
		});

		accordion.btnAria(btn,className);
	},
	scroll:function(btn,panel,callback){
		//아코디언 열릴때 스크롤 함수
		var $scrollTop = $(window).scrollTop(),
			$winHeight = $(window).height();
		if($('.bottom_fixed').not('.pop_btn').length)$winHeight = $winHeight - 60;
		var $topMargin = isAppChk() ? 10 : 60;
		if($('.tab_fixed').length)$topMargin = $topMargin+50;
		var $winEnd = $scrollTop+$winHeight,
			$btnTop = $(btn).offset().top - $topMargin,
			$thisTop = $(panel).offset().top,
			$thisHeight = $(panel).outerHeight(),
			$thisEnd = $thisTop+$thisHeight,
			$scroll = '';
		if($winEnd < $thisEnd){
			$scroll = Math.min($btnTop,$thisEnd-$winHeight);
		}else if($scrollTop > $btnTop){
			$scroll = $btnTop;
		}

		if($scroll == ''){
			if(!!callback)callback();
		}else{
			$('html,body').animate({'scrollTop':$scroll},200,function(){
				if(!!callback)callback();
			});
		}
	}
};

$.fn.openScroll = function(speed, className){
	return this.each(function(){
		if(speed == undefined)speed = 300;
		if(className == undefined)className = 'open';
		var $this = $(this);
		var $class = '.'+className;
		if($this.children($class).length){
			var $top = $this.children($class).first().offset().top,
				$gap = isAppChk() ? 0 : 50;
				$scrollTop = $top - $gap;
			//console.log($scrollTop)
			scrollUI.move($scrollTop,speed);
		}
	});
};

var reAccordionAria = function(){
	if($('.ui-accordion').length)accordion.listAria('.ui-accordion','.tit a','.panel');
	if($('.box_list_1 .expend_btn .button').length)accordion.listAria('.box_list_1','.expend_btn .button','.expend_cont');
	if($('.ui-toggle-btn').length)accordion.btnAria('.ui-toggle-btn');
};

//테이블 스크롤 가이드
var tblUI = {
	guideScl: function(element){
		$(element).each(function(){
			var $this = $(this);
			$this.data('first',true);
			$this.data('direction','좌우');
			$(this).on('scroll',function(){
				$this.data('first',false);
				$this.find('.tbl_guide').remove();
				//$this.removeAttr('title');

				var $sclInfo = $this.next('.tbl_scroll_ifno');
				if($sclInfo.length){
					var $sclVerticalPercent = (Math.abs($this.scrollTop()/($this.get(0).scrollHeight - $this.height())))*100;
					var $sclHorizonPercent = (Math.abs($this.scrollLeft()/($this.get(0).scrollWidth - $this.width())))*100;
					$sclInfo.find('.vertical').children().css('height',$sclVerticalPercent+'%');
					$sclInfo.find('.horizon').children().css('width',$sclHorizonPercent+'%');
				}
			});
		});
	},
	guide: function(element){
		$(window).on('resize',function(){
			$(element).each(function(){
				var $this = $(this),
					$direction = $this.data('direction'),
					$changeDirection = '',
					$guide = '<div class="tbl_guide" title="해당영역은 테이블을 스크롤하면 사라집니다."><div><i class="icon" aria-hidden="true"></i>테이블을 '+$direction+'로 이동하세요.</div></div>',
					$width = $this.outerWidth(),
					$height = $this.outerHeight(),
					$scrollW = $this.get(0).scrollWidth,
					$scrollH = $this.get(0).scrollHeight;
				var $sclInfoHtml = '<div class="table tbl_scroll_ifno" aria-hidden="true"><div class="horizon"><div></div></div><div class="vertical"><div></div></div></div>',
					$sclIfno = $this.next('.tbl_scroll_ifno');
				if($this.data('first')){
					if($width < $scrollW && $height < $scrollH){
						$changeDirection = '상하좌우';
					}else if($width < $scrollW){
						$changeDirection = '좌우';
					}else if($height < $scrollH){
						$changeDirection = '상하';
					}else{
						$changeDirection = '';
					}

					if($changeDirection == ''){
						$this.removeAttr('tabindex').find('.tbl_guide').remove();
						$sclIfno.remove();
						$this.removeAttr('title');
					}else{
						if(!$this.find('.tbl_guide').length){
							if(!isMobile.any()){
								$this.attr('tabindex',0); //pc일땐 tabindex 사용
							}
							$this.prepend($guide);
						}
						if(!$sclIfno.length){
							$this.after($sclInfoHtml);
							$sclIfno = $this.next('.tbl_scroll_ifno');
						}
						if($sclIfno.length){
							$sclIfno.find('.vertical').css('height',$height);
							$sclIfno.find('.vertical').show();
							$sclIfno.find('.horizon').show();
							if($changeDirection == '좌우'){
								$sclIfno.find('.vertical').hide();
							}else if($changeDirection == '상하'){
								$sclIfno.find('.horizon').hide();
							}
						}

						$this.attr('title','터치스크롤하여 숨겨진 테이블영역을 확인하세요');
					}

					if($direction != $changeDirection && $this.find('.tbl_guide').length){
						$this.find('.tbl_guide').changeTxt($direction,$changeDirection);
						$this.data('direction',$changeDirection);
					}
				}
			});
		});
	}
};

//swiper 실행
var swiperUI = {
	array:[],
	focusAria: function(el,first,end,isLoop){
		if(!isNaN(first) && !isNaN(end)){
			var last = first+end+1;
			$(el).children().children('.swiper-slide').attr('aria-hidden','true').find($focusableEl).each(function(e){
				Focus.disabled(this);
			});

			//loop일때
			if(isLoop){
				var $activeIdx = $(el).children().children('.swiper-slide-active').index();
				last = $activeIdx+end+1;
				$(el).children().children('.swiper-slide').slice($activeIdx,last).removeAttr('aria-hidden').find($focusableEl).each(function(e){
					Focus.abled(this);
				});
			}else{
				$(el).children().children('.swiper-slide').not('.swiper-slide-duplicate').slice(first,last).removeAttr('aria-hidden').find($focusableEl).each(function(e){
					Focus.abled(this);
				});
			}
		}
	},
	item: function(){
		var tar = '.ui-swiper';
		if ($(tar).length > 0){
			$(tar).each(function(i){
				var $this = $(this),
					$itemLength = $this.children().length,
					$autoplayOpt = '',
					$navigationOpt = '',
					$isZoom = false,
					$isAutoheight = false,
					$isParallax = false,
					$isLoop = false,
					$pagination = '.swiper-pagination';
				if($itemLength > 1 || $this.closest('.chaeumletter').length){
					$this.closest('.ui-swiper-wrap').removeClass('only');
					//swipe
					if($this.hasClass('swiper-container-initialized') && $this.children('.swiper-wrapper').length){
						var $aryIdx = $this.data('idx');
						swiperUI.array[$aryIdx].update();
					}else{
						if($this.prev('.swiper-pagination').length && $this.prev('.swiper-pagination').hasClass('swiper-pagination-clickable'))$this.prev('.swiper-pagination').empty().removeClass('swiper-pagination-clickable swiper-pagination-bullets');
						if($this.siblings('.swiper-navi').children().length)$this.prev('.swiper-navi').empty();
						$this.children('.item').addClass('swiper-slide');
						$this.addClass('swiper-container').wrapInner('<div class="swiper-wrapper"></div>');
						if($this.find('.swiper-pagination').length){
							var p = $this.find('.swiper-pagination');
							if(p.index() == 0){
								$this.find('.swiper-wrapper').before(p);
							}else{
								$this.find('.swiper-wrapper').after(p);
							}
						}else{
							if($this.siblings('.swiper-pagination').length){
								$pagination = $this.siblings('.swiper-pagination');
							}
						}
						if($this.hasClass('loop'))$isLoop = true;
						if($this.hasClass('auto-height'))$isAutoheight = true;
						if($this.hasClass('autoplay'))$this.addClass('swiper-container').parent().prepend('<div class="swiper-navi auto-navi"></div>');
						if($this.hasClass('navi') && !$this.parent().find('.swiper-navi').length)$this.addClass('swiper-container').append('<div class="swiper-navi"></div>');
						if($this.find('[data-swiper-parallax]').length || $this.find('[data-swiper-parallax-x]').length || $this.find('[data-swiper-parallax-y]').length || $this.find('[data-swiper-parallax-scale]').length || $this.find('[data-swiper-parallax-opacity]').length)$isParallax = true;
						if($this.hasClass('autoplay')){
							$this.parent().find('.swiper-navi').append('<button type="button" class="swiper-auto-ctl" aria-label="자동롤링 중지"></button>');
							$autoplayOpt = {
								delay: 3000
							};
							$isLoop = true;
						}
						if($this.hasClass('navi')){
							$this.parent().find('.swiper-navi').append('<button type="button" class="swiper-arr swiper-prev"></button><button type="button" class="swiper-arr swiper-next"></button>');
							$navigationOpt = {
								prevEl: $this.parent().find('.swiper-prev'),
								nextEl: $this.parent().find('.swiper-next')
							};
						}
						if(!$this.parent().find('.swiper-pagination').length){
							if($this.parent().find('.swiper-navi').length){
								$this.parent().find('.swiper-navi').append('<div class="swiper-pagination"></div>');1
								$pagination = $this.parent().find('.swiper-pagination');
							}else{
								$this.append('<div class="swiper-pagination"></div>');
								$pagination = $this.find('.swiper-pagination');
							}
						}
						if($this.find('.swiper-zoom-container').length){
							$isZoom = {
								maxRatio:2,
								toggle:false
							};
							$this.find('.swiper-zoom-container').each(function(){
								$(this).parent().before('<div class="swiper-zoom-btn"></div>');
								var $zoomBtnWrap = $(this).parent().siblings('.swiper-zoom-btn')
								$zoomBtnWrap.append('<button type="button" role="button" class="swiper-zoom-in" aria-label="확대"></button>');
								$zoomBtnWrap.append('<button type="button" role="button" class="swiper-zoom-out" aria-label="축소"></button>');
							});
						}
						var resizeUpadte = '';
						var $option = {
							slidesPerView: 'auto',
							slideClass:'item',
							//resizeReInit:true,
							zoom:$isZoom,
							autoplay:$autoplayOpt,
							navigation:$navigationOpt,
							parallax:$isParallax,
							loop:$isLoop,
							autoHeight:$isAutoheight,
							pagination:{
								el: $pagination,
								clickable:true,
								renderBullet:function(index, className) {
									return '<button type="button" class="'+className+'">'+(index+1)+'번째 슬라이드</button>';
								}
							},
							on:{
								init:function(){
									setTimeout(function(){
										var $length = $swiper.pagination.bullets.length,
											$index = $swiper.snapIndex>=0?$swiper.snapIndex:$swiper.realIndex;
										if($length > 0){
											if($length == 1){
												$pagination.addClass('op0').attr('aria-hidden',true);
											}else{
												if($pagination.hasClass('op0'))$pagination.removeClass('op0').removeAttr('aria-hidden');
											}
										}
										if($length == 1 && $swiper.slides.length == 2){
											$this.closest('.ui-swiper-wrap').addClass('double');
										}else{
											$this.closest('.ui-swiper-wrap').removeClass('double');
										}
										//if($isLoop)$index = $swiper.realIndex;
										if($index>$itemLength)$index = $index-$itemLength;
										if($isLoop){
											var $w = Math.floor($this.outerWidth()/$this.find('.swiper-slide-active').outerWidth());
											swiperUI.focusAria($this,$index,$w-1,true);
										}else{
											swiperUI.focusAria($this,$index,$itemLength-$length);
										}
										swipeRollingNum();
									},10);
								},
								resize:function(){
									clearTimeout(resizeUpadte);
									resizeUpadte = setTimeout(function(){
										$swiper.update();
									},500);
									/*if($swiper.pagination.bullets.length == 1 && $swiper.slides.length == 2){
										$this.closest('.ui-swiper-wrap').addClass('double');
									}else{
										$this.closest('.ui-swiper-wrap').removeClass('double');
									}*/
								},
								transitionEnd:function(e){
									if($swiper != undefined){
										var $length = $swiper.pagination.bullets.length,
											$index = $swiper.snapIndex>=0?$swiper.snapIndex:$swiper.realIndex;
										if($length > 0){
											if($length == 1){
												$pagination.addClass('op0').attr('aria-hidden',true);
											}else{
												if($pagination.hasClass('op0'))$pagination.removeClass('op0').removeAttr('aria-hidden');
											}
										}
										//if($isLoop)$index = $swiper.realIndex;
										if($index>$itemLength)$index = $index-$itemLength;
										if($isLoop){
											var $w = Math.floor($this.outerWidth()/$this.find('.swiper-slide-active').outerWidth());
											swiperUI.focusAria($this,$index,$w-1,true);
										}else{
											swiperUI.focusAria($this,$index,$itemLength-$length);
										}
									}
								},
								slideChangeTransitionStart:function(e){
									swipeRollingNum();
								},
								slideChangeTransitionEnd:function(e){
									var $scrollInCont = $this.closest('.ui-swiper-scroll-in');
									if($scrollInCont.length){
										var $gap = isAppChk() ? 10 : 60;
											$winTop = $(window).scrollTop(),
											$winHeight = $(window).height(),
											$contTop = $scrollInCont.offset().top,
											$contHeight = $scrollInCont.outerHeight(),
											$contMove = ($contTop+$contHeight) - ($winTop+$winHeight-10);
										if($contMove > 0 )scrollUI.move(Math.min($contTop-$gap,$winTop+$contMove),300);
									}
									var $sclGuide = $this.find('.ui-scl-cont');
									if($sclGuide.length){
										scrollUI.guide($sclGuide);
									}
								},
								touchEnd:function(e){
									if(!$(e.target).hasClass('swiper-auto-ctl')){
										var $autoCtl = $this.closest('.ui-swiper-wrap').find('.swiper-auto-ctl');
										if($autoCtl.length){
											$autoCtl.addClass('play').changeAriaLabel('중지','시작');
										}
									}
								}
							}
						};

						function swipeRollingNum(){
							var $rollNum = $this.find('.swiper-slide-active').find('.swipe_rolling_num');
							if($rollNum.length){
								var $rollNumData = $rollNum.data('num'), 
									$rollNumTxt = !!$rollNumData?$rollNumData:$rollNum.text();
								$rollNum.data('num',$rollNumTxt).rollingNumber($rollNumTxt);
							}
						}

						$this.data('idx',swiperUI.array.length);
						var $swiper = new Swiper($this,$option);
						swiperUI.array.push($swiper);

						$this.parent().on('click','.swiper-auto-ctl',function(e){
							e.preventDefault();
							if($(this).hasClass('play')){
								console.log('play')
								$swiper.autoplay.start();
								$(this).removeClass('play').changeAriaLabel('시작','중지');
							}else{
								console.log('stop')
								$swiper.autoplay.stop();
								$(this).addClass('play').changeAriaLabel('중지','시작');
							}
						});
						$this.on('click','.swiper-zoom-in',function(e){
							e.preventDefault();
							$swiper.zoom.in();
						});
						$this.on('click','.swiper-zoom-out',function(e){
							e.preventDefault();
							$swiper.zoom.out();
						});
					}
				}else if($itemLength == 1){
					$this.closest('.ui-swiper-wrap').addClass('only');
				} 
			});
		}
	},
	alarm:function(){
		$('.alarm_list li').swipe({
			swipeStatus:function(event,phase,direction,distance,duration,fingerCount,fingerData,currentDirection){
				var $this = $(this),
					$max = 88,
					$speed = 200,
					$isSiblings = true,
					$isLeft = direction == 'left'?true:false,
					$isRight = direction == 'right'?true:false,
					$distance = Math.min($max,distance),
					$cssLeft = $isLeft?-$distance:$distance-$max,
					$animateLeft = '',
					$children = $this.children(),
					$childrenLeft = parseInt($children.css('left'));

				if($childrenLeft <= 0){
					if(!$children.find('.btn_del').length)$children.append('<a href="#" class="btn_del">삭제</a>');
				}else{
					$children.find('.btn_del').remove();
				}
				if($isLeft || $isRight){
					if($isRight && $childrenLeft == 0)return false;
					if($isLeft && $childrenLeft == -$max)return false;
					$children.css('left',$cssLeft+'px');
				
					if(phase == 'end' || phase == 'cancel'){
						if($distance <= ($max/2)){
							$animateLeft = $isLeft?0:-$max;
							$isSiblings = false;
						}else if($distance > ($max/2)){
							$animateLeft = $isLeft?-$max:0;
						}
						if($animateLeft !== ''){
							$children.stop(true,false).animate({'left':$animateLeft},$speed,function(){
								if($animateLeft == 0){
									$(this).find('.btn_del').remove();
									$(this).removeAttr('style');
								}
							});
						}
					}

					if($isLeft && $isSiblings){
						$this.siblings().children().stop(true,false).animate({'left':0},$speed,function(){
							$(this).removeAttr('style');
							$(this).find('.btn_del').remove();
						});
					}
				}
			},
			cancleTreshold:0
		});
	},
	init:function(){
		swiperUI.item();
	}
};

var materialUI = {
	carousel:function(element){
		if($(element).length){
			$(element).each(function(i){
				var $this = $(this),
					$class= 'ui-carousel-'+i,
					isFull = false;
				if($this.hasClass('full')){
					isFull = true;
					$this.addClass('carousel-slider');
					$this.css('height',$this.children().first().outerHeight());
				}
				$this.addClass($class);
				$this.carousel({
					fullWidth: isFull,
					indicators: true,
					onCycleTo:function(e){
						//$(e).attr('ariat-hidden',false).removeAttr('tabindex').find($focusableEl).removeAttr('tabindex');
						$(e).attr('ariat-hidden',false).removeAttr('tabindex').find($focusableEl).each(function(){
							Focus.abled(this);
						});
						$(e).siblings('.carousel-item').attr({
							'ariat-hidden':true,
							'tabindex':-1
						//}).find($focusableEl).attr('tabindex',-1);
						}).find($focusableEl).each(function(){
							Focus.disabled(this);
						});
						if($(e).closest('.mt_carousel').hasClass('full')){
							setTimeout(function(){
								$(e).closest('.mt_carousel').css('height',$(e).outerHeight()+22);
							},50);
						}
					}
				});
			});
		}
	},
	datepicker:function(element){
		if($(element).length){
			$(element).mtDatepicker({
				//autoClose: true,
				showMonthAfterYear: true,
				showDaysInNextAndPreviousMonths: true,
				format: 'yyyy.mm.dd'
			});
		}
	},
	timepicker:function(element){
		if($(element).length){
			$(element).timepicker({
				//autoClose: true,
				twelveHour:false
			});
		}
	},
	etc:function(){
		if($('.scrollspy').length){
			$('.scrollspy').scrollSpy({
				scrollOffset:1
			});
		}
		if($('.materialboxed').length)$('.materialboxed').materialbox();
		if($('.parallax').length)$('.parallax').parallax();
		if($('.mt_slider').length)$('.mt_slider').mtSlider();
	},
	init:function(){
		materialUI.carousel('.mt_carousel');
		materialUI.datepicker('.mt_datepicker');
		materialUI.timepicker('.mt_timeicker');
		materialUI.etc();
	}
};
//오늘하루그만보기 팝업
var todayPop = {
	Arry : [],
	Name : 'todayPopChk',
	Path : location.pathname.split('/').pop().split('.').shift(),
	open : function(target,isRemove){
		var $target=$(target),
			$targetId=$target.attr('id'),
			$chkwrap=$target.find('.today_chk'),
			$chekbox=$chkwrap.find('input'),
			//$key=todayPop.Name+'-'+todayPop.Path+'-'+$targetId,
			$key=todayPop.Name+'-'+$targetId,
			$saveDate=parseInt(localStorage.getItem($key));

		if(isRemove == null)isRemove = true;
		todayPop.Arry.push($targetId);
		$chekbox.data('key',$key).attr('id',$targetId+'_chk').siblings('label').attr('for',$targetId+'_chk');

		if($nowDateDay <= $saveDate){
			if(isRemove){
				$target.remove();
			}else{
				$chkwrap.remove();
			}
		}else{
			Layer.open($target);
			if(!!$saveDate)localStorage.removeItem($key);
		}

		//닫기
		$(target).on('click','.ui-pop-close',function(e){
			todayPop.close(target,isRemove);
		});
	},
	close: function(target,isRemove){
		var $target=$(target),
			$chkwrap=$target.find('.today_chk'),
			$chekbox=$chkwrap.find('input'),
			$key = $chekbox.data('key'),
			$today = new Date(),
			$year=$today.getFullYear(),
			$month=$today.getMonth()+1,
			$day=$today.getDay();
		if(isRemove == null)isRemove = true;
		if((''+$month).length==1)$month="0"+$month;
		var $lastDay = (new Date($year,$month,0).getDate());
		if($chekbox.prop('checked')){
			var _val=$chekbox.val();
			switch(_val){
				case 'day':
					localStorage.setItem($key,$nowDateDay);
				break;
				case 'week':
					localStorage.setItem($key,$afterDateDay(8-$day));
				break;
				case 'month':
					localstorage.setItem($key,''+$year+$month+$lastDay) ;
				break;
				case 'naver':
					localStorage.setItem($key,'99999999');
				break;
				default:
					if(parseInt(_val)>0){
						localstorage.setItem($key,$afterDateDay(_val));
					}
				break;
			}

			setTimeout(function(){
				if(isRemove){
					$target.remove();
				}else{
					$chkwrap.remove();
				}
			},Layer.speed+Layer.delay+10);
		}
		setTimeout(function(){
			if($(target).hasClass('show'))Layer.close(target);
		},10);
	},
	init : function(){
		$('.today.'+Layer.popClass).each(function(i){
			todayPop.open(this);
		});
	}
};

//이미지 미리로딩
var preLoadingImg = function(imgarry){
	var $pathname = location.pathname.split('/')[1],
		isPreLoading = sessionStorage.getItem('isPreLoading'),
		$class = 'pre_loading';
	if(isPreLoading != 'true'){
		console.log('preLoadingImg');
		var $html = '<div class="'+$class+'">';
		for(var i=0; i<imgarry.length; i++){
			var $url = imgarry[i];
			if($pathname == 'MDB'){
				$url = $url.replace('moweb','MDB');
			}
			$html += '<div style="background-image:url('+$url+');"></div>';
		}
		$html += '</div>';
		sessionStorage.setItem('isPreLoading',true);
		$('body').append($html);
	}
};

//차트
var chartUI = {
 	singleBar:function(bar, total, ing){
		$(bar).each(function(){
			var $speed = 1000,
				$this = $(this),
				$wrap = $this.closest('.graph_wrap'),
				$total = $wrap.find(total),
				$ing = $wrap.find(ing),
				$totalNum  = onlyNumber($total.text()),
				$ingNum  = onlyNumber($ing.text()),
				$perc = Math.min(100,($ingNum/$totalNum)*100),
				$flag =  $wrap.find('.flag'),
				$flagW =  $flag.outerWidth(),
				$wrapW =  $this.closest('.chart_bar').outerWidth();
			
			$({p:0}).stop(true,false).animate({p:$perc},{
				duration: $speed,
				step: function(p){
					$this.css('width',p+'%');
					$flagW =  $flag.outerWidth();
					var $barW = $this.outerWidth();
					if($barW < $flagW/2){
						$this.removeClass('off');
						$flag.removeClass('last').addClass('first');
					}else if(($barW+$flagW/2) > $wrapW){
						$this.addClass('off');
						$flag.removeClass('first').addClass('last');
					}else{
						$this.removeClass('off');
						$flag.removeClass('first last');
					}
				}
			});
		});
	}
};

//위즈베라 키패드 UI추가
var wizveraPad = {
	focusEl:'',
	open:function(el){
		wizveraPad.focusEl = el;
		if($(el).data('init') != true){
			$(el).data('init',true);
			$(el).on('click',function(){
				var $container = $('#pinsign-pinpad-mobile-container');
				var $start = 0,$max = 20;
				var $pinpadInterval = setInterval(function(){
					$start++;
					$('#pinsign-pinpad').css({
						'position':'fixed',
						'width':'100%',
						'bottom':0,
						'left':0,
						'z-index':250
					});
					if($container.length){
						clearInterval($pinpadInterval);
						if(!$('#pinsign-pinpad-bg').length)$('#pinsign-pinpad').after('<div id="pinsign-pinpad-bg" style="position:fixed;left:0;top:0;width:100%;height:100%;z-index:249;" role="button" aria-label="키패드 닫기"></div>');
						var $containerH = $container.outerHeight();
						$('.fixed_space').css('min-height',$containerH);

						$container.find('.pinpad-number').attr({
							'role':'button',
							'tabindex':0
						});
						$container.find('.pinsign-pinpad-command-button').attr({
							'role':'button',
							'tabindex':0
						});

						var $winH = $(window).height(),
							$elTop = $(el).offset().top,
							$elH = $(el).outerHeight(),
							$gap = ($winH-$containerH) - ($elTop-$winH+$elH),
							$move = ($winH-$containerH+$elH)/2;

						$(el).data('keypad',true);
						if($gap > 0){
							scrollUI.move($move,300);
						}

						$container.find('[role=button]').first().focus();
						$('#header,#contents').attr('aria-hidden',true);
					}
					if($start >= $max)clearInterval($pinpadInterval);
				}, 100);
			});
		}
	},
	close:function(el){
		var $el = el;
		if(el == undefined && wizveraPad.focusEl != '')$el = wizveraPad.focusEl;
		wizveraPad.focusEl = '';
		$('#pinsign-pinpad-bg').remove();
		$('.fixed_space').removeCss('min-height');
		$('#header,#contents').removeAttr('aria-hidden');
		$($el).data('keypad',false).focus();
	}
};


/********************************
 * front 애니메이션함수 *
 ********************************/
//완료 효과
var itemEffect = function(wrap){
	var $wrap = $(wrap),
		$itemLength = 10,			//20 넘지 않게
		rdClass, rdLeft, rdTop, rdDelay,rdDirection, rdSpeed, 
		$html = '',
		rdLeftAry = [];

	if($wrap.hasClass('type1'))$itemLength = 20;
	if($wrap.hasClass('type2'))$itemLength = 12;

	for(var i = 0; i < $itemLength;i++){
		rdClass = randomNumber(1,3,0);
		rdSize = randomNumber(1,3,0);
		rdColor = (i%6) + 1;
		rdLeft = randomNumber(0,20,0) * 5;
		rdTop = randomNumber(2,14,0) * 5;
		rdDelay = randomNumber(0,10,0) * 400;
		//rdDelay = (i%10) * 200;
		rdDirection = randomNumber(1,2,0);
		rdSpeed = randomNumber(35,50,0) * 150;
		
		if(rdLeftAry.indexOf(rdLeft) >= 0){		//left 랜덤값 겹치지않게
			i--;
		}else{
			rdLeftAry.push(rdLeft);
			if($wrap.hasClass('type1')){
				//꽃가루(2가지 모션, 3가지 컬러, 3가지 사이즈, 6가지 모양)
				rdClass = randomNumber(1,6,0);
				$html = '<span class="item item'+rdClass+' color'+rdColor+' size'+rdSize+'" style="left:'+rdLeft+'%;';
					$html += '-webkit-animation:finishSwing'+rdDirection+' '+(rdSpeed/2)+'ms infinite '+rdDelay+'ms, finishDrop '+rdSpeed+'ms infinite ease-out '+rdDelay+'ms;';
					$html += 'animation:finishSwing'+rdDirection+' '+(rdSpeed/2)+'ms infinite '+rdDelay+'ms, finishDrop '+rdSpeed+'ms infinite ease-out '+rdDelay+'ms;';
				$html += '" aria-hidden="true"><span></span></span>';
			}else if($wrap.hasClass('type2')){
				//금가루
				rdClass = randomNumber(1,6,0);
				$html = '<span class="item item'+rdClass+' size'+rdSize+'" style="left:'+rdLeft+'%;';
					$html += '-webkit-animation:finishSwing'+rdDirection+' '+(rdSpeed/2)+'ms infinite '+rdDelay+'ms, finishDrop '+rdSpeed+'ms infinite ease-out '+rdDelay+'ms;';
					$html += 'animation:finishSwing'+rdDirection+' '+(rdSpeed/2)+'ms infinite '+rdDelay+'ms, finishDrop '+rdSpeed+'ms infinite ease-out '+rdDelay+'ms;';
				$html += '" aria-hidden="true"><span></span></span>';
			}else{
				console.log('인터렉션 타입 클래스를 적용해주세요');
				break;
			}
			$wrap.prepend($html);
		}
	}
};

//data-animation
var scrollItem ={
	checkInView: function(target){
		var $window = $(window),
			$wHeight = $window.height(),
			$scrollTop = $window.scrollTop(),
			$winBottom = ($scrollTop + $wHeight);

		$.each(target, function(){
			var $el = $(this),
				$elHeight = $($el).outerHeight(),
				//$elTop = $($el).offset().top,
				$elTop = $($el).offset().top + 80,
				//$elCenter = $elTop + ($elHeight/2),
				$elCenter = $elTop + ($elHeight/5),
				//$elBottom = $elTop + $elHeight,
				//$elBottom = $elTop + ($elHeight/5)*4,
				$elBottom = $elTop + $elHeight - 80,
				$animationClass = $el.data('animation'),
				$delay = $el.data('delay'),
				$duration = $el.data('duration'),
				$animationIn = $el.data('animation-in'),
				$addClassAry = ['on','active'];

			if(!$el.hasClass('animated') && $addClassAry.indexOf($animationClass) == -1){
				if($delay>0){
					$el.css({
						'-webkit-animation-delay':$delay+'ms',
						'animation-delay':$delay+'ms'
					});
				}
				if($duration>0){
					$el.css({
						'-webkit-animation-duration':$duration+'ms',
						'animation-duration':$duration+'ms'
					});
				}
				$el.addClass('animated paused '+$animationClass);
			}

			if($animationIn){
				if(($elTop >= ($scrollTop - ($wHeight/2))) && ($elBottom <= ($winBottom + ($wHeight/2)))){
					if($el.hasClass('animated')){
						$el.addClass('paused '+$animationClass);
					}
				}else{
					if($el.hasClass('animated')){
						$el.removeClass($animationClass);
					}else{
						$el.removeClass($animationClass);
					}
				}
			}
			//if(($elCenter >= $scrollTop) && ($elCenter <= $winBottom)){
			if(($elBottom >= $scrollTop) && ($elTop <= $winBottom)){
				if($el.hasClass('animated')){
					if($el.closest('.tab_panel').length && !$el.closest('.tab_panel').hasClass('active'))return;
					
					var $slide = $el.closest('.swiper-slide');
					if($slide.length){
						if($slide.hasClass('swiper-slide-active')){
							if(!$el.hasClass($animationClass))$el.addClass($animationClass)
							if($el.hasClass('paused'))$el.removeClass('paused');
						}
					}else{
						if(!$el.hasClass($animationClass))$el.addClass($animationClass)
						if($el.hasClass('paused'))$el.removeClass('paused');
					}
				}else{
					var $slide = $el.closest('.swiper-slide');
					if($slide.length){
						if($slide.hasClass('swiper-slide-active'))$el.addClass($animationClass);
					}else{
						$el.addClass($animationClass);
					}
				}
			}
		});
	},
	scrollChk: function(target){
		var $scrollTop = $(window).scrollTop();
		//console.log($scrollTop)
		$.each(target, function(){
			var $el = $(this),
				$Data = $el.data('scrollchk').split(','),
				$Start = $Data[0],
				$End = $Data[1],
				$type = $Data[2].split(' ');

			switch($Start){
				case 'in':
					$Start = $el.parent().offset().top - $(window).height();
				break;
				case 'top':
					$Start = $el.parent().offset().top - 50;
				break;
				case 'bottom':
					$Start = $el.parent().offset().top - $el.parent().outerHeight();
				break;
				default:
					$Start = parseInt($Start);
				break;
			}

			switch($End){
				case 'out':
					$End = $el.parent().offset().top + $el.parent().outerHeight();
				break;
				case 'top':
					$End = $el.parent().offset().top - 50;
				break;
				case 'bottom':
					$End = $el.parent().offset().top - $el.parent().outerHeight();
				break;
				default:
					$End = parseInt($End);
				break;
			}

			var isFadeOut = false,
				isFadeIn = false,
				isTopDown = false,
				isSclDown = false,
				isSclUp = false;
			if($.inArray('fadeOut',$type) != -1)isFadeOut = true;
			if($.inArray('fadeIn',$type) != -1)isFadeIn = true;
			if($.inArray('topDown',$type) != -1)isTopDown = true;
			if($.inArray('sclDown',$type) != -1)isSclDown = true;
			if($.inArray('sclUp',$type) != -1)isSclUp = true;

			var $min = $el.parent().outerHeight()-$el.outerHeight(),
				$rate = ($el.outerHeight()-$el.parent().outerHeight())/($End-$Start),
				$move = -($scrollTop-$Start)*($rate),
				$opacity = Math.max(0,Math.min(1,($scrollTop-$Start)/$End));

			if($Start > $scrollTop){
				if(isFadeOut)$el.css('opacity',1);
				if(isFadeIn)$el.css('opacity',0);
				if(isTopDown)$el.css('top',0);
				if(isSclDown)$el.css('top',0);
				if(isSclUp)$el.css('bottom',0);
			}else if($scrollTop > $End){
				if(isFadeOut)$el.css('opacity',0);
				if(isFadeIn)$el.css('opacity',1);
				if(isSclDown)$el.css('top',$min);
				if(isSclUp)$el.css('bottom',$min);
			}else{
				if(isFadeOut)$el.css('opacity',1-$opacity);
				if(isFadeIn)$el.css('opacity',$opacity);
				if(isTopDown)$el.css('top',($scrollTop-$Start)/2);
				if(isSclDown)$el.css('top',Math.max($min,$move));
				if(isSclUp)$el.css('bottom',Math.max($min,$move));
			}
		});
	},
	init: function(){
		var $animations = $.find('*[data-animation]');
		if($animations.length > 0){
			$(window).on('scroll resize',function(){
				scrollItem.checkInView($animations);
			});
		}

		var $scrollFades = $.find('*[data-scrollchk]');
		if($scrollFades.length > 0){
			$(window).on('scroll resize',function(){
				scrollItem.scrollChk($scrollFades);
			});
		}
	}
};

//글자별 애니메이션: 다른태그와 사용가능 '<','>' 사용불가
//data-animation="on" 과 같이 사용가능
//$('.txt').splitText();
$.fn.splitText = function(speed, delay){
	return this.each(function(){
		var $this = $(this),
			$thisTxt = $.trim($(this).text()),
			$split = $(this).html().split(''),
			$html = '',
			$tag = '',
			$isTag = false,
			$style = $(this).attr('style'),
			j = 0,
			$speed = !!speed?speed:$(this).data('speed'),
			$delay = !!delay?delay:$(this).data('delay'),
			$distance = $(this).data('distance');
		
		$this.attr({
			'role':'text',
			'aria-label': $thisTxt
		});
		if($speed == null)$speed = 100;
		if($delay == null)$delay = 0;

		$this.css('height',$this.height()).html('');
		//for(var i in $split){
		for(var i=0; i<$split.length; i++){
			if($isTag){
				$tag += $split[i];
				if($split[i] == '>'){
					$isTag = false;
					$html += $tag;
				}
			}else{
				if($split[i] == '<'){
					$tag = $split[i];
					$isTag = true;
				}else if($split[i] == ' '){
					$html += '<span class="ui-spl-item">&nbsp;</span>';
				}else{
					j++;
					$html += '<span class="ui-spl-item" style="';
					$html += '-webkit-transition-delay:'+(j*$speed+$delay)+'ms;';
					$html += 'transition-delay:'+(j*$speed+$delay)+'ms;';
					if($distance != null){
						var $posX = randomNumber(-$distance,$distance,0),
							$posY = randomNumber(-$distance,$distance,0),
							$posZ = randomNumber(-$distance,$distance,0),
							$scale = randomNumber(0.3,0.8,1);

						$html += '-webkit-transform:translate3d('+$posX+'px,'+$posY+'px,'+$posZ+'px) scale('+$scale+');';
						$html += 'transform:translate3d('+$posX+'px,'+$posY+'px,'+$posZ+'px) scale('+$scale+');';
					}
					$html += '">';
					$html += $split[i];
					$html += '</span>';
				}
			}
		}
		$this.html($html).removeAttr('style');
		if($style)$this.attr('style',$style);
	});
};

//롤링숫자 애니메이션 : rollingNumber(바꿀숫자 없으면 현재 text)
//data-animation="on" 과 같이 사용가능
//$('.number').rollingNumber();
//$('.number').rollingNumber('123,000');
$.fn.rollingNumber = function(number){
	return this.each(function(){
		var $this = $(this),
			num = '',
			$style = $this.attr('style'),
			$height = $this.height(),
			$numRepeat = 2,
			$repeatNum = $numRepeat*10-1,
			isRolling = true,
			isOn = $this.data('animation');

		if(!!number){
			num = number;
		}else{
			num = $this.text();
		}
		var $split = num.split('');
		$this.attr({
			'role':'text',
			'aria-label':number
		}).css('height',$height).html('');
		//for(var i in $split){
		for(var i=0; i<$split.length; i++){
			if(isNaN($split[i])){
					$this.append('<span class="rl-num-comma" aria-hidden="true" style="height:'+$height+'px;line-height:'+$height+'px;">'+$split[i]+'</span>');
			}else{
				$this.append('<span class="rl-num-item" aria-hidden="true" style="height:'+$height+'px;line-height:'+$height+'px;"><span class="rl-num" style="height:'+$height+'px;line-height:'+$height+'px;"></span></span>');
				for(var j=$repeatNum;j>=0;j--){
				//for(var j=0;j<=$repeatNum;j++){
					var k = j%10;
					$this.find('.rl-num-item').last().find('.rl-num').append('<span class="rl-span" style="height:'+$height+'px;line-height:'+$height+'px;">'+k+'</span>');
				}
			}
		}
		$this.data('number',num).removeAttr('style');
		if($style)$this.attr('style',$style);

		var rollAni = function(){
			var $length = $this.children().length;
			$this.children().each(function(e){
				var $idx = $(this).index(),
					$rol = $(this).find('.rl-num'),
					$num = parseInt($split[e]);
				$rol.animate({'top':($num-$repeatNum)*$height},1000+($idx*200),function(){
				//$rol.animate({'top':-($num+10)*$height},1000+(($length-$idx)*200),function(){
					if(e == ($length-1))isRolling = false;
				});
			});
		};

		if(isOn == 'on' && $this.data('once') == null){
			$this.data('once',true);
			$(window).scroll(function(){
				if($this.hasClass('on') && $this.data('once') == true){
					$this.data('once',false);
					rollAni();
				}
			});
		}else{
			rollAni();
		}
		/*
		$(window).on('resize',function(){
			if(isRolling == true) return;
			$this.find('.rl-num-item, .rl-num-item > .rl-num, .rl-num-item > .rl-num > .rl-span').css({
				'height':'auto',
				'line-height':'inherit'
			});
			$height = $this.find('.rl-num-item > .rl-num > .rl-span').height();
			$this.find('.rl-num-item, .rl-num-item > .rl-num, .rl-num-item > .rl-num > .rl-span').css({
				'height':$height+'px',
				'line-height':$height+'px'
			});
			$this.children().each(function(e){
				var $rol = $(this).find('.rl-num'),
					$num = $split[e];

				$rol.css({'top':($num-$repeatNum)*$height});
			});
		});
		*/
	});
};


/********************************
 * front 유틸함수 *
 ********************************/
//ie에서 startsWith,endsWith 작동되게
if(isPC.msie()){
	String.prototype.startsWith = function(str){
		if(this.length < str.length) return false;
		return this.indexOf(str) == 0;
	};
	String.prototype.endsWith = function(str){
		if(this.length < str.length) return false;
		return this.lastIndexOf(str) + str.length == this.length;
	};
}

//br 태그 삽입
//brTxtInsert(엘리먼트,기준마크,최대글자수);
//brTxtInsert('.br-txt','/',7);
var brTxtInsert = function(el,mark,maxWordLength){
	$(el).each(function(){
		var $text = $(this).text();
		if($text.indexOf(mark) >= 0){
			var $txtAry = $text.split(mark);
			var $insertTxt = '';
			var $wordLength = $insertTxt.length;
			var $row = 1;
			for(var i=0;i<$txtAry.length;i++){
				if(i != 0){
					if($wordLength+$txtAry[i].length+mark.length > (maxWordLength*$row)){
						$insertTxt += '<br>';
						$row++;
						$wordLength = 0;
					}
					$insertTxt += mark;
				}
				$insertTxt += $txtAry[i];
				if($wordLength == 0){
					$wordLength = $txtAry[i].length + mark.length;
				}else{
					$wordLength = $insertTxt.length;
				}
			}
			$(this).html($insertTxt);
		}
	});
}

//넓이대비 삽입가능한 글자수 확인: 검증필요
//console.log(wordInsertCount(element));
var wordInsertCount = function(el){
	var _this = $(el),
		_thisFtSize = parseInt(_this.css('font-size')),
		_thisWidth = _this.width();
	return Math.floor(_thisWidth/_thisFtSize);
	/*var	_thisHtml = _this.html(),
		_thisStyle = _this.attr('style'),
		_txt = '<span style="color:red;opacity:1;">뢜</span>';
	_this.css({
		'height':'auto',
		'word-break':'break-all'
	}).html(_txt);
	var _h = _this.outerHeight(),
		_h2 = _this.outerHeight();
	while(_h == _h2){
		_this.append(_txt);
		_h2 = _this.outerHeight();
	}
	var _length = _this.text().length;
	_this.removeAttr('style');
	if(_thisStyle != '' && _thisStyle != undefined)_this.attr('style',_thisStyle);
	_this.html(_thisHtml);
	return _length;*/
};

//랜덤값 추출
var randomNumber = function(min,max,point){
	return ((Math.random() * (max-min)) + min).toFixed(point);
};

//전화번호 포맷
var autoPhoneFormet = function(str,mark){
	var $phone = str.replace(/[^0-9]/g, ''),
		$phoneAry = [];
	if(!mark)mark = '-';
	if($phone.length < 4){
		$phoneAry.push($phone);
	}else if(str.length < 8){
		$phoneAry.push($phone.substr(0,3));
		$phoneAry.push($phone.substr(3));
	}else if(str.length < 11){
		$phoneAry.push($phone.substr(0,3));
		$phoneAry.push($phone.substr(3,3));
		$phoneAry.push($phone.substr(6));
	}else{
		$phoneAry.push($phone.substr(0,3));
		$phoneAry.push($phone.substr(3,4));
		$phoneAry.push($phone.substr(7));
	}
	return $phoneAry.join(mark);
};

//Input date
var autoDateFormet = function(str,mark){
	var $date = str.replace(/[^0-9]/g, ''),
		$dateAry = [];
	if(!mark)mark = '.';
	if($date.length < 5){
		$dateAry.push($date);
	}else if(str.length < 7){
		$dateAry.push($date.substr(0,4));
		$dateAry.push($date.substr(4));
	}else{
		$dateAry.push($date.substr(0,4));
		$dateAry.push($date.substr(4,2));
		$dateAry.push($date.substr(6));
	}
	return $dateAry.join(mark);
};
var autoTimeFormet = function(str,mark){
	var $time = str.replace(/[^0-9]/g, ''),
		$timeAry = [];
	if(!mark)mark = '.';
	if($time.length <= 2 ){
		$timeAry.push($time);
	}else if(str.length == 3 || str.length == 5){
		$timeAry.push($time.substr(0,1));
		$timeAry.push($time.substr(1,2));
		if(str.length == 5)$timeAry.push($time.substr(3));
	}else if(str.length >= 4){
		$timeAry.push($time.substr(0,2));
		$timeAry.push($time.substr(2,2));
		if(str.length > 4)$timeAry.push($time.substr(4));
	}
	return $timeAry.join(mark);
};

//파라미터 값 갖고오기
var getUnlParams = function(){
	var params = {};
	window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi,function(str,key,value){
		params[key]=value;
	});
	return params;
};

//쿠키
var uiCookie = {
	set:function(key, value, expireYn){
		var cookieVal = key + "=" + value;
		if ( expireYn == 1 )
			cookieVal += "; expires=" + (new Date()).toString().split("+")[0] + ";";
		document.cookie = cookieVal;
	},
	get:function(key){
		var cookieArry = document.cookie.split(";");
		var returnVal = "";
		for ( var cI in cookieArry) {
			var cookieDataArry = String(cookieArry[cI]).split("=");
			if(String(cookieDataArry[0]).trim() == key && String(cookieDataArry[0]).trim() != ""){
				returnVal = String(cookieDataArry[1]).trim();
			}
		}
		return returnVal;
	}
}

//날짜구하기
var todayTimeString=function(addDay){
	var $today=new Date();
	if(!!addDay)$today.setDate($today.getDate()+addDay);
	return timeString($today);
};
var timeString=function(date){
	var $year=date.getFullYear(),
		$month=date.getMonth()+1,
		$day=date.getDate(),
		$hour=date.getHours(),
		$min=date.getMinutes(),
		$sec=date.getSeconds();
	if((''+$month).length==1)$month='0'+$month;
	if((''+$day).length==1)$day="0"+$day;
	if((''+$hour).length==1)$hour='0'+$hour;
	if((''+$min).length==1)$min='0'+$min;
	if((''+$sec).length==1)$sec='0'+$sec;
	return(''+$year+$month+$day+$hour+$min+$sec);
};
var $dayLabelPrint = function(){
	var $today = new Date(),
		$week=['일','월','화','수','목','금','토'],
		$dayLabel=$week[$today.getDay()];
	return $dayLabel;
};
var $nowDateFull=parseInt(todayTimeString()),					//년+월+일+시+분+초
	$nowDateHour=parseInt(todayTimeString().substr(0,10)),		//년+월+일+시
	$nowDateDay=parseInt(todayTimeString().substr(0,8)),		//년+월+일
	$nowDateMonth=parseInt(todayTimeString().substr(0,6)),		//년+월
	$nowDateOnlyFullTime=parseInt(todayTimeString().substr(8,6)),//시+분
	$nowDateOnlyTime=parseInt(todayTimeString().substr(8,4)),	//시+분
	$nowDateOnlyYear=parseInt(todayTimeString().substr(0,4)),	//년
	$nowDateOnlyMonth=parseInt(todayTimeString().substr(4,2)),	//월
	$nowDateOnlyDay=parseInt(todayTimeString().substr(6,2)),	//일
	$nowDateOnlyHour=parseInt(todayTimeString().substr(8,2)),	//시
	$nowDateOnlyMin=parseInt(todayTimeString().substr(10,2)),	//분
	$nowDateOnlySec=parseInt(todayTimeString().substr(12,2)),	//초
	$nowDateDayLabel=$dayLabelPrint(),							//요일
	$afterDateDay=function(day){
		return parseInt(todayTimeString(day-1).substr(0,8));
	};
	//console.log($nowDateFull,$nowDateHour,$nowDateDay,$afterDateDay(7),$nowDateMonth,$nowDateOnlyFullTime,$nowDateOnlyTime,$nowDateOnlyYear,$nowDateOnlyMonth,$nowDateOnlyDay,$nowDateOnlyHour,$nowDateOnlyMin,$nowDateOnlySec)

//남은시간 체크 : DdayChk('2020-09-19 07:00:00');
var DdayChk = function(time){
	var $timeArry = time.split(' '),
		$openDay = onlyNumber($timeArry[0]),
		$openTime = $timeArry[1].split(':'),
		$openHour = parseInt($openTime[0]),
		$openMin = parseInt($openTime[1]),
		$openSec = parseInt($openTime[2]),
		$newDate = new Date(),
		$now = timeString($newDate),
		$nowDay = parseInt($now.substr(0,8)),
		$nowHour = parseInt($now.substr(8,2)),
		$nowMin = parseInt($now.substr(10,2)),
		$nowSec = parseInt($now.substr(12,2));
	if($nowSec > $openSec){
		$openSec = $openSec+60;
		$openMin--;
	}
	if($nowMin > $openMin || $openMin < 0){
		$openMin = $openMin+60;
		$openHour--;
	}
	if($nowHour > $openHour || $openHour < 0){
		$openHour = $openHour+24;
		$openDay--;
	}
	var $day = $openDay-$nowDay;
	if($day < 0)return [0,0,0,0];
	var $hour = $openHour-$nowHour;
	var $min = $openMin-$nowMin;
	var $sec = $openSec-$nowSec;
	if((''+$hour).length==1)$hour='0'+$hour;
	if((''+$min).length==1)$min='0'+$min;
	if((''+$sec).length==1)$sec='0'+$sec;

	return [$day,$hour,$min,$sec];
};
var DdayChkHtml = function(element,completTime,callback){
	var $repeat = setInterval(function(){
		var $timeHtml = '';
		var $Dday = DdayChk(completTime);
		if($Dday[0] > 0)$timeHtml += '<span><strong>'+$Dday[0]+'</strong>일</span>';
		$timeHtml += '<span><strong>'+$Dday[1]+'</strong>시</span><span><strong>'+$Dday[2]+'</strong>분</span><span><strong>'+$Dday[3]+'</strong>초</span>';
		$(element).html($timeHtml);
		if($Dday[0] == 0 && $Dday[1] == 0 && $Dday[2] == 0 && $Dday[3] == 0){
			clearInterval($repeat);
			if(!!callback)callback();
		}
	}, 1000);
};

//byte 체크
var bytePrint=function(tar){
	var $txt = $(tar).text();
	if($(tar).is('input') || $(tar).is('select') || $(tar).is('textarea')){
		$txt = $(tar).val();
	}
	return $txt.replace(/[\0-\x7f]|([0-\u07ff]|(.))/g,'$&$1').length;
};

//스크롤바 여부확인
var isScrollbar = function(target,direction){
	if(!!direction)direction = 'vertical';
	if (direction === 'vertical'){
		return $(target).get(0)? $(target).get(0).scrollHeight > $(target).innerHeight() : false;
	}
	if(direction === 'horizon'){
		return $(target).get(0) ? $(target).get(0).scrollWidth > $(target).innerWidth() : false;
	}
};

//숫자만
var onlyNumber = function(num){
	return num.toString().replace(/[^0-9]/g,'');
};

//콤마넣기
var addComma = function(num){
	return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g,',');
};

//콤마빼기
var removeComma = function(num){
	return num.toString().replace(/,/gi,'');
};

//배열에서 문자열 찾기
var arrayIndexOf = function(array,str){
	var $val = false;
	//for(var i in array){
	for(var i=0; i<array.length; i++){
		if(array[i].indexOf(str) >= 0){
			$val = true;
		}
	}
	return $val;
};

//공백제거
var txtSpaceDel = function(txt){
	return txt.replace(/(\s*)/g,'');
};


/********************************
 * as-is 함수(카드 상세에서 사용) *
 ********************************/
var calcHeight = function(){
	var heightInit = function(){
		if($('#box_interest').length){
			$('#box_interest').height($('#box_interest').contents().find("body").height());
			if($('.card_detail_cont').length){
				if($detailSwiper != '')$detailSwiper.update();
			};
		}
	}

	heightInit();
	setTimeout(function(){
		heightInit();
	},1000);
}
$.fn.fnQna = function (options) {
	return this.each(function () {
		var that = $(this);
		var opts = $.extend({}, $.fn.fnQna.option, options || {});
		options = options || {};
		that.each(function(e){
			var $selector = $(this).find(opts.selector);
			$selector.each(function(f){
				var $btn = $(this),
					$btnId = $(this).attr('id'),
					$panel = $(this).parent().next(),
					$panelId = $panel.attr('id');
				if($btn.attr('aria-expanded') != undefined) return false;
				if($btnId == undefined){
					$btnId = 'fnQna_btn_'+e+'_'+f;
					$btn.attr('id', $btnId);
				}
				if($panelId == undefined){
					$panelId = 'fnQna_panel_'+e+'_'+f;
					$panel.attr('id', $panelId);
				}
				$btn.attr({
					'role':'button',
					'aria-expanded':false,
					'href': '#'+$panelId,
					'aria-controls': $panelId
				});
				$panel.attr({
					'aria-hidden':'true',
					'aria-labelledby':$btnId
				});
			});
		});
		that.find(opts.selector).click(function () {
			var elm = $(this);
			if (opts.multiple == 'off') {
				if (elm.hasClass(opts.activeClass)) {
					elm.removeClass(opts.activeClass).attr('aria-expanded',false).parent().next().attr('aria-hidden',true).slideUp(opts.speed, function() {
						//$(document).trigger("swiper.updateHeight");
						if(elm.closest('.card_detail_cont').length){
							if($detailSwiper != '')$detailSwiper.update();
						}
					});
				} else {
					elm.parent().siblings(opts.q).find(opts.selector).removeClass(opts.activeClass).attr('aria-expanded',false);
					elm.parent().siblings(opts.q).next().attr('aria-hidden',true).slideUp(opts.speed);
					elm.addClass(opts.activeClass).attr('aria-expanded',true).parent().next().removeAttr('aria-hidden').slideDown(opts.speed, function() {
						//$(document).trigger("swiper.updateHeight");
						if(elm.closest('.card_detail_cont').length){
							if($detailSwiper != '')$detailSwiper.update();
						}
					});
				}
			} else {
				if (elm.hasClass(opts.activeClass)) {
					elm.removeClass(opts.activeClass).attr('aria-expanded',false).parent().next().attr('aria-hidden',true).slideUp(opts.speed, function() {
						//$(document).trigger("swiper.updateHeight");
						if(elm.closest('.card_detail_cont').length){
							if($detailSwiper != '')$detailSwiper.update();
						}
					});
				} else {
					elm.addClass(opts.activeClass).attr('aria-expanded',true).parent().next().removeAttr('aria-hidden').slideDown(opts.speed, function() {
						//$(document).trigger("swiper.updateHeight");
						if(elm.closest('.card_detail_cont').length){
							if($detailSwiper != '')$detailSwiper.update();
						}
					});
				}
			}
			//if(opts.callback){opts.callback}
			return false;
		});
		//that.find(opts.selector).eq(opts.defaultCont - 1).trigger('click');
		that.find(opts.q+' '+opts.selector).eq(opts.defaultCont-1).trigger('click');
	});
};
$.fn.fnQna.option = {
	multiple:'off', // 다수보여짐, 한항목만보여짐
	defaultCont:1, //기본 보여지는 콘텐츠
	activeClass : 'on', //활성화클래스
	selector : 'a', //선택자
	speed:200, //콘텐츠보여지는 속도
	q:'.qst',//제목항목
	callback : false //콜백함수입력
};