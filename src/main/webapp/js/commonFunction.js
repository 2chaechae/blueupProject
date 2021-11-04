var commonFnc = {
	block : function() {
		if($('.ld-bar-wrap').html()) {
			$('.ld-bar-wrap').show();
		}
		else {
			$("#wrap").append('<div class="ld-bar-wrap"><div class="ld-bar"></div></div>');
		}
	},
	unblock : function() {
		$('.ld-bar-wrap').hide();
	}
};

if ( !window.location.origin ) {
    window.location.origin  = window.location.protocol + "//" + window.location.hostname + ( window.location.port ? ':'+window.location.port : '' );
}
if (!Number.prototype.padLeft) {
	Number.prototype.padLeft = function(n,str){
	    return (this < 0 ? '-' : '') +
	            Array(n-String(Math.abs(this)).length+1)
	             .join(str||'0') +
	           (Math.abs(this));
	}
}


function openCommonPopup(actionUrl, params, pWidth, pHeight, winNm) {
    //console.log(actionUrl);
    if ( actionUrl != undefined ) {
        var winName = "fnfPop";
        if ( winNm != undefined ) {
            winName = winNm;
        }
        if ( pWidth == undefined ) {
            pWidth = 680;
        }
        if ( pHeight == undefined ) {
            pHeight = 660;
        }
        openPopup(actionUrl, params, winName, pHeight, pWidth);
    }
}

/**
 * 팝업호출
 * @param url, params, windowName, iHeight, iWidth
 * @returns
 */
function openPopup(url, params, windowName, iHeight, iWidth) {

    var winl   = (screen.width - iWidth) / 2;
    var wint   = (screen.height - iHeight) / 2 - 50;
    var option = 'location=0,status=0,toolbar=0,statusbar=0,scrollbars=yes,resizable=no,left='+winl+',top='+wint+',width='+iWidth+',height='+iHeight;
    var form   = createForm(params);
    var newWin = window.open('', windowName, option);

    submitPopup(form, url, windowName);
    discardForm(form);

    newWin.opener = this;
    return newWin;
}

function createForm(params) {
    var f = document.createElement("FORM");
    f.method = "POST";
    document.body.appendChild(f);

    if (typeof(params) != "undefined") {
        for (key in params) {
            var value = params[key];

            addHidden(f, key, value);
        }
    }

    var csrfToken = $("meta[name='_csrf']").attr("content");
    var csrfName = $("meta[name='_csrf.parameter']").attr("content");

    addHidden(f, csrfName, csrfToken);

    return f;
}

function addHidden(f, key, value) {
    var el = document.createElement("INPUT");
    el.type = "hidden";
    el.name = key;
    el.value = value;

    f.appendChild(el);
}

function discardForm(formObj) {
    document.body.removeChild(formObj);
}

function submitPopup(formObj, url, targetName, postGet) {
    formObj.action = url;
    formObj.method = "POST";
    if (typeof(postGet) != "undefined") {
        formObj.method = postGet;
    }
    formObj.target = targetName;
    formObj.submit();
}

function submitLinkByPost(url, params) {
	var form = createForm(params);
	form.action = url;
	form.submit();
}

/**
 * @param {Object} url		- url
 * @param {Object} params	- 파라미터
 */
function jsLinkUrlPost(url, params) {
	if (params) {
		var method = "post";
	    var form = document.createElement("form");
	    form.setAttribute("method", method);
	    form.setAttribute("action", url);
	    for(var key in params) {
	        var hiddenField = document.createElement("input");
	        hiddenField.setAttribute("type", "hidden");
	        hiddenField.setAttribute("name", key);
	        hiddenField.setAttribute("value", params[key]);
	        form.appendChild(hiddenField);
	    }
	    document.body.appendChild(form);
	    form.submit();	
	} else {
		location.href = url; // 뒤로가기 시 err_cache_miss  에러로  분기 처리
	}
}

/**n
 * CHROME 이외 브라우저 에서 focus 이동 문제로 인하여 타임아웃 1초 설정
 * */
function setTimeoutFocus(thisId){
    setTimeout(function(){
        $('input#'+thisId).focus();
    }, 1);
}

/**
 * .error-msg attribute show
 * .error-msg 표시할 때 그냥 .show()를 하게 되면
 * display:inline으로 들어가버려서 block으로 들어가도록 하는 함수.
 * 
 * @param attr : .error-msg attribute 
 * @returns
 */
function errorMsgShow(attr) {
	attr.attr("style", "display:block");
}

/**
 * .error-msg attribute hide 
 * 
 * @param attr
 * @returns
 */
function errorMsgHide(attr) {
	attr.hide();
}

/**
 * alert layer popup
 * 
 * @param msg
 * @param title
 * @param btnNm
 * @param layerId
 * @returns
 */
function alertLayer(msg, title, btnNm, layerId, layerClass) {
	if(title == undefined || title == null || title == '') title = MESSAGES['common.js.confirm'];
	if(btnNm == undefined || btnNm == null || btnNm == '') btnNm = MESSAGES['common.js.confirm'];
    if(layerId == undefined || layerId == null || layerId == '') layerId = "commonLayerPopup";
    if(layerClass == undefined || layerClass == null || layerClass == ''){
        layerClass = "layer-popup popCertifi";
    }else{
        layerClass = "layer-popup popCertifi "+layerClass;
	}

	openCommonLayerPopup(title, msg, btnNm, layerId, layerClass);
}

/**
 * confirm layer popup
 * 
 * @param msg
 * @param title
 * @param cancelBtnNm(클릭시 javascript:callbackConfirmLayer(false); 함수 실행)
 * @param confirmBtnNm(클릭시 javascript:callbackConfirmLayer(true); 함수 실행)
 * @param layerId
 * @returns
 */
function confirmLayer(msg, title, cancelBtnNm, confirmBtnNm, layerId) {
	if(title == undefined || title == null) title = MESSAGES['common.js.confirm'];
	if(cancelBtnNm == undefined || cancelBtnNm == null) cancelBtnNm = MESSAGES['common.js.cancel'];
	if(confirmBtnNm == undefined || confirmBtnNm == null) confirmBtnNm = MESSAGES['common.js.confirm'];
	if(layerId == undefined || layerId == null) layerId = "commonLayerPopupForConfirm";
	openCommonLayerPopupForConfirm(title, msg, cancelBtnNm, confirmBtnNm, layerId);
}

function closeConfirmLayer() {
	$("#commonLayerPopupForConfirm").find("button.d_layer_close").trigger("click");
}

/**
* 로그인 팝업
* 
* @param type : 아래의 버튼을 구분하는 type
* guestOrder : 비회원 주문하기 버튼 활성화
* guestCounsel : 비회원 1:1 고객상담
* guestGroupCounsel : 비회원 단체구매문의
* null : 아래의 버튼 없음.
* @param targetUrl : 로그인 후 이동할 url
*/
function openLayerPopupForLogin(type, targetUrl, loginCallback, loginActionParam) {
	//$("#loginPopupDiv").remove();
	$("#guestOrder").hide();
	$("#guestCounsel").hide();
	$("#guestGroupCounsel").hide();
	$("ul.bulList").hide();	
	$("#guestCounselTxt").hide();
	$("#loginTopTxt1").hide();
	$("#loginTopTxt2").hide();
	$("#loginTopTxt3").hide();
	
	console.log("type : " + type)
	
	$.ajax({
		type : "get",
		url : PATH_LOCALE + "/member/login/view.popup",
		dataType : "html",
		beforeSend: function (request)
     {
       var csrfToken = $("meta[name='_csrf']").attr("content");
       var csrfName = $("meta[name='_csrf_header']").attr("content");
       request.setRequestHeader(csrfName, csrfToken);
     },
		success : function(args) {
			$("body").append(args);
			
	    	if(type == "guestOrder") {
	    		$("#loginTopTxt1").show();
	    		$("#loginTopTxt2").hide();
	    		$("#loginTopTxt3").hide();
	    		
	    		$("#guestOrder").show();
	    		$("#guestOrder").click(function(){
	    			// 장바구니에서 사용
	    			if(typeof(cart) != 'undefined') {	    				
	    				csubmit.checkValid(cart.cartObj);
	    			}else{
	    				addOrderStep2();
	    			}
	    		});	    	
	    		
	    		if(typeof loginActionParam != undefined && loginActionParam != ""){
	    			$("#loginActionParam").val(loginActionParam);
	    		}
	    		
	    		$("#loginPopup").find(".txt-login-info").html(MESSAGES['member.js.login.layer.popup.txt5']);	    		
	    	}else if(type == "guestCounsel") {
	    		$("#loginTopTxt1").hide();
	    		$("#loginTopTxt2").show();
	    		$("#loginTopTxt3").hide();
	    		
	    		$("#guestCounsel").show();
	    		
	    		if($("#guestCounsel").is(":visible") == false){
	    			$(".bt2 > a:eq(2)").attr("onclick", "movePage('/helpdesk/csInquiry/new');");
	    			$(".bt2 > a:eq(2)").show();
	    		}    		
	    		
	    		$("ul.bulList").show();
	    		//$("#loginPopup").find(".txt-login-info").html(MESSAGES['member.js.login.layer.popup.txt6']);
	    		$("#guestCounselTxt").show();
	    		$("#loginForm").find("[name=pageMode]").val("false");
	    	}else if(type == "guestCoupon") {
	    		$("#loginTopTxt1").hide();
	    		$("#loginTopTxt2").hide();
	    		$("#loginTopTxt3").show();
	    		
	    		$("#guestCounsel").hide();
	    		$("ul.bulList").hide();
	    		//$("#loginPopup").find(".txt-login-info").html(MESSAGES['member.js.login.layer.popup.txt6']);
	    		$("#guestCounselTxt").hide();
	    		$("#loginForm").find("[name=pageMode]").val("false");
	    	}else if(type == "guestGroupCounsel") {
	    		//$("#guestGroupCounsel").show();
	    		//$("#loginPopup").find(".txt-login-info").html(MESSAGES['member.js.login.layer.popup.txt4']);
	    		$("#loginTopTxt1").hide();
	    		$("#loginTopTxt2").show();
	    		$("#loginTopTxt3").hide();
	    		
	    		$("#guestGroupCounsel").show();
	    		$("ul.bulList").show();
	    		//$("#loginPopup").find(".txt-login-info").html(MESSAGES['member.js.login.layer.popup.txt6']);
	    		$("#guestCounselTxt").show();
	    		$("#loginForm").find("[name=pageMode]").val("false");
	    	}
    		
    		if(typeof(targetUrl) != 'undefined' && typeof(targetUrl) != 'object' && typeof(targetUrl) == 'string'){   
    			//$("input[name='pageMode']").val("false");
	    		$("[name=loginTarget]:hidden").val(targetUrl);
	    	}
    		
    		if(typeof(loginCallback) != 'undefined' && typeof(loginCallback) != 'object' && typeof(loginCallback) == 'string'){    		
    			//$("input[name='pageMode']").val("true");
    			$("[name=loginCallback]:hidden").val(loginCallback);
    		}	
    		
	    	layerPopup.popupOpenNow("#loginPopup");
	    	
	    	if(type == "guestCounsel") {	    	
	    		$("#loginPopup").find("#guestCounsel").show();	    	
	    		$("#loginPopup").find("#guestCounsel").click(function(){
	    			movePage(PATH_LOCALE + '/helpdesk/csInquiry/new');
	    		});
	    	}
		},
		error : function(e) {
			alert(e.responseText);
		}
	});

}

function changeLocale(value) {
	if (value === 'ko') {
		value = '';
	} else if (value === 'zh') {
		value = 'cn';
	} else if (value === 'en') {
		location.href = 'https://en.mlb-korea.com/';
		return;
	}
	location.replace(location.origin + '/' + value);
}

/**
 * spring의 locale messages의 arguments를 javascirpt에서 formatting
 * usages : messageFormat(message, arg1, arg2, ...);
 */
function messageFormat(message) {
    if (arguments.length == 1) {
        return message;
    }

    var args = $.makeArray(arguments), key;
    if (2 === args.length && args[1] instanceof Object) {
        args = args[1];
    } else {
        args.splice(0, 1);
    }
    for (key in args) {
        if (args.hasOwnProperty(key)) {
            message = message.replace(new RegExp("\\{" + key + "\\}", "g"), args[key]);
        }
    }
    return message;
}

/**
 * 바이트 문자 입력가능 문자수 체크
 * 
 * @param id : tag id 
 * @param maxLength : 최대 입력가능 수 (byte) (null인 경우 $("#"+id) 에 있는 maxlength로 검증한다.)
 * @returns {Boolean}
 */
function maxLengthCheck(id, maxLength){
     var obj = $("#"+id);
     if(maxLength == undefined || maxLength == null) {
         maxLength = obj.attr("maxlength") != null ? obj.attr("maxlength") : 1000;
     }
     
     if(Number(byteCheck(obj)) > Number(maxLength)) {
         return false;
     } else {
         return true;
    }
}
 
/**
 * 바이트수 반환  
 * 
 * @param el : tag jquery object
 * @returns {Number}
 */
function byteCheck(el){
    var codeByte = 0;
    for (var idx = 0; idx < el.val().length; idx++) {
        var oneChar = escape(el.val().charAt(idx));
        if ( oneChar.length == 1 ) {
            codeByte ++;
        } else if (oneChar.indexOf("%u") != -1) {
            codeByte += 2;
        } else if (oneChar.indexOf("%") != -1) {
            codeByte ++;
        }
    }
    return codeByte;
}

function fn_getByteLength(str) {
    var len = 0;
    if(isDefined(str)){        	
    	len = str.replace(/[\0-\x7f]|([0-\u07ff]|(.))/g,"$&$1$2").length;
    }
    return len;	
}

function isDefined(str) {
	/*
	 * undefined, null, 공백 : false 
	 * else : true
	 */		
    var isResult = false;
    str_temp = str + "";
    str_temp = str_temp.replace(" ", "");
    if(str_temp != "undefined" && str_temp != "" && str_temp != "null")
    {
        isResult = true;
    }
     
    return isResult;
}

/**
 * on error image
 * 
 * @param el : img element 
 * @param size : 보여줄 error image size
 */
function errorImgShow(el, size) {
	var url = "/error/no_image.jpg";
	if(size == null || size == "") {
		size = "600";
	}else{
		try{
			size = size.split("x")[0];
			var s = parseInt(size);
			if(s <= 100) {
				size = "100";
			} else if(s <= 400) {
				size = "400";
			} else{
				size = "600";
			}
		} catch(e) {
			size = "600";
		}
	}
		
	url = BASE.webResourceUrl == "/" ? "/error/no_image_"+size + ".png" : "/error/no_image_"+size + ".png/dims/resize/" + size + "x" + size;
	$(el).attr("src", BASE.webResourceUrl + "static/images" + url );
}

/**
 * 전체 카테고리 link
 * 
 * @param dspCateNo : display cate no 
 * @param dspDpth : depth
 * @param sectCd : ctgry type
 * @param cateNo1 : cate no1 
 * @param cateNo2 : cate no2
 */
function cateLink(dspCateNo, dspDpth, sectCd, cateNo1, cateNo2){
	if(typeof cateNo2 == "undefined"){
		if(dspCateNo == "MBMA16"){
			location.href = PATH_LOCALE + "/special/2475";
		}else{
			location.href = PATH_LOCALE + "/display/majorView?dspCtgryNo=" + dspCateNo + "&currentCtgryDpthCd=" + dspDpth
			+ "&ctgrySectCd=" + sectCd + "&ctgryNoDpth1=" + cateNo1;
		}
	}else{
		location.href = PATH_LOCALE + "/display/view?dspCtgryNo=" + dspCateNo + "&currentCtgryDpthCd=" + dspDpth
		+ "&ctgrySectCd=" + sectCd + "&ctgryNoDpth1=" + cateNo1 + "&ctgryNoDpth2=" + cateNo2;
	}
}

var searchData = null;
function getSearchForm(obj){
	
	if($(obj).hasClass('open')){
		$(obj).removeClass('open');
	}else{
		$(obj).addClass('open');
		if(searchData == null){
			if ($('html').attr('lang') == 'ko'){
				var url = PATH_LOCALE + "/display/search/getSearchForm.json";
				$.ajax({
					type : "POST",
					async : true,
					url : url,
					success : function(data){
						searchData = data;
						var $context = $('.gb_sch_box');
						var $popular_list = $context.find('.popular').find('ol');
						var $recomend_god_list = $context.find('.item_list').find('.swiper-wrapper');
						var $promotion_list = $context.find('.rolling-list');
			            
						$popular_list.html("");
						$promotion_list.html("");
						$recomend_god_list.html("");
						
						//1. 프로모션 문구 리스트
						var promotion_html = "";
						if(data.promotionWordList != undefined){
							if(data.promotionWordList.length > 0){
								for(var i=0; i<data.promotionWordList.length; i++){
									promotion_html += "<li>";
									promotion_html += "	<span>"+data.promotionWordList[i].prmSrchNm+"</span>";
									promotion_html += "	<a href=\""+PATH_LOCALE+data.promotionWordList[i].url+"\">바로가기</a>";
									promotion_html += "</li>";
					            }
								$promotion_list.html(promotion_html);
							}
						}
						//2. 인기검색어
						var popular_html = "";
						if(data.hitWordList != undefined){
							if(data.hitWordList.length > 0){
								for(var i=0; i<data.hitWordList.length; i++){
									popular_html += "<li>";
									popular_html += "	<em>"+(i+1)+"</em>";
									popular_html += "	<a href=\""+PATH_LOCALE+"/display/search?searchText="+data.hitWordList[i].hitSrchNm+"\" data-ga-category=\"PC_MLB_Search\" data-ga-action=\"인기 검색어\" data-ga-label=\""+data.hitWordList[i].hitSrchNm+"\" data-ga-position=\""+(i+1)+"\">"+data.hitWordList[i].hitSrchNm+"</a>";
									if(data.hitWordList[i].url != undefined){
										console.log("url  ==>"+data.hitWordList[i].url);
										popular_html += "<a href=\""+PATH_LOCALE+data.hitWordList[i].url+"\" class=\"btn-event\"><span>EVENT</span></a>";
									}
									popular_html += "	<span>";
									popular_html += "		<i class=\""+data.hitWordList[i].iconNm+"\"></i>";
									popular_html += "	</span>";
									popular_html += "</li>";
					            }
								$popular_list.html(popular_html);
							}
						}
						//3. 카테고리 베스트 상품
						var recomend_god_html = "";
						var categoty_name = "";
						if(data.recomendGodList != undefined){
							if(data.recomendGodList.length > 0){
								for(var i=0; i<data.recomendGodList.length; i++){
									recomend_god_html += "<li class=\"swiper-slide\">";
									recomend_god_html += "	<div class=\"item\">";
									if(data.recomendGodList[i].sortSeq == 1){
										recomend_god_html += "		<div class=\"cate\">APPAREL</div>";
										categoty_name = "APPAREL";
									}else if(data.recomendGodList[i].sortSeq == 2){
										recomend_god_html += "		<div class=\"cate\">CAP</div>";
										categoty_name = "CAP";
									}else if(data.recomendGodList[i].sortSeq == 3){
										recomend_god_html += "		<div class=\"cate\">SHOES</div>";
										categoty_name = "SHOES";
									}else if(data.recomendGodList[i].sortSeq == 4){
										recomend_god_html += "		<div class=\"cate\">BAG</div>";
										categoty_name = "BAG";
									}else if(data.recomendGodList[i].sortSeq == 5){
										recomend_god_html += "		<div class=\"cate\">ACC</div>";
										categoty_name = "ACC";
									}else if(data.recomendGodList[i].sortSeq == 6){
										recomend_god_html += "		<div class=\"cate\">KIDS</div>";
										categoty_name = "KIDS";
									}
									if('undefined' == data.recomendGodList[i].imgFrontUrl || undefined == data.recomendGodList[i].imgFrontUrl){
										recomend_god_html += "		<div class=\"thumb\"><span class=\"img\"><img src=\"\" onerror=\"errorImgShow(this, '100');\" alt=\"\"></span></div>";
						         	}else{
						         		recomend_god_html += "		<div class=\"thumb\"><a href=\""+data.recomendGodList[i].godUrl+"\" data-ga-category=\"PC_MLB_Search\" data-ga-action=\"카테고리 베스트 상품\" data-ga-label=\""+categoty_name+"_"+data.recomendGodList[i].godNm+"\" data-ga-position=\""+(i+1)+"\" >";
						         		recomend_god_html += "		<span class=\"img\"><img src=\""+BASE.imageUrl+data.recomendGodList[i].imgFrontUrl+"\" alt=\"\"></span></a></div>";
						         	}
									recomend_god_html += "		<div class=\"info\">";
									recomend_god_html += "			<div class=\"name\">"+data.recomendGodList[i].godNm+"</div>";
									recomend_god_html += "			<div class=\"prc\"><em class=\"p\">"+priceToString(data.recomendGodList[i].csmrPrc)+"원</em></div>";
									recomend_god_html += "		 </div>";
									recomend_god_html += "	</div>";
									recomend_god_html += "</li>";
					            }
								
								$recomend_god_list.html(recomend_god_html);
							}
						}
						setTimeout(function(){
							if(data.recomendGodList != undefined){
								if(data.recomendGodList.length > 1){
									search_layer.swiper('.gb_sch_column .swiper-container:not(.swiper-container-horizontal)');
								}
							}
							search_layer.keywordRolling();
							$(".body").addClass("schOn");
							$(".body").removeClass("gnbOn");
							$('body').trigger('search', 'on');
						},500);
						
					},
					error: function(pa_data, status, err) {
			            alert("error forward : "+err+" ,status="+status);
			        }
				});
			}
		}
	}
}

function priceToString(price) {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
}