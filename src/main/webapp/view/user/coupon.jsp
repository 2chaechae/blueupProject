<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/min/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/gtm.js?v=20211103111721"></script>
	<link href="https://static.mlb-korea.com/pc/static/css/swiper.css?v=10-3-20-17-21" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/bs.css?v=10-3-20-17-21" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/cm.css?v=10-3-20-17-21" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/ly.css?v=10-3-20-17-21" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/mn.css?v=10-3-20-17-21" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/dp.css?v=10-3-20-17-21" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/pd.css?v=10-3-20-17-21" rel="stylesheet" type="text/css">
	<link href="https://static.mlb-korea.com/pc/static/css/od.css?v=10-3-20-17-21" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/my.css?v=10-3-20-17-21" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/mb.css?v=10-3-20-17-21" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/se.css?v=10-3-20-17-21" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/ev.css?v=10-3-20-17-21" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/cs.css?v=10-3-20-17-21" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/et.css?v=10-3-20-17-21" rel="stylesheet" type="text/css" />
	<!-- <script>var PATH_LOCALE = '';</script> -->
	<!-- <script src="https://static.mlb-korea.com/pc/static/js/jquery-ui.min.js"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/min/jsrender-0.9.90.min.js"></script>	
	<script src="https://static.mlb-korea.com/pc/static/js/min/masonry.pkgd.min.js"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>	
	<script src="https://static.mlb-korea.com/pc/static/js/min/masonry.pkgd.min.js?v=10-3-20-17-21"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/min/imagesloaded.pkgd.min.js?v=10-3-20-17-21"></script>	
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/sns.js?v=10-3-20-17-21"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/moment.js?v=10-3-20-17-21"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBvRMB27X0JzAxjAUs26Q32tEfw-E0NUng" async defer></script> -->
	
	<!-- <script src="/static/js/jquery-migrate-1.4.1.js"></script> -->
	<!-- <script src="/static/js/jquery-ui-1.12.1.js"></script> -->
	<script src="https://player.vimeo.com/api/player.js"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/swiper.min.js"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/slick.js?v=10-3-20-17-21"></script>	
	<script src="https://static.mlb-korea.com/pc/static/js/common.js?v=10-3-20-17-21"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/commonFunction.js?v=10-3-20-17-21"></script>	
	
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/member/login.js?v=prod-version-858_20211102145956"></script>
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/naver/naverLogin_implicit-1.0.2-min.js" charset="utf-8"></script>
	<script type="text/javascript" >var YOUR_CLIENT_ID = 'JlTrvDTlo4qERsv1bY4m';</script>
	<script type="text/javascript" >var KAKAO_CLIENT_ID = 'd4a424c6f042566dc9f227392cfdfe6f';</script>	
	<!-- <script src="https://bizmessage.kakao.com/chat/includeScript"></script> -->
	
	
</head>
<body class="body" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
 <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-N6DXTMP"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<!-- EOSD-3661 카울리 스크립트 order.complete.jsp-->
<script type="text/javascript">
if (!/^\/order\/OD[0-9]+\/view.*/.test(location.pathname)) { // 주문 완료 페이지 제외	
	window._paq = window._paq || [];
	_paq.push(['track_code',"d1cfaeaa-268b-4e2a-8a6c-2bfc62a3ff26"]);
	_paq.push(['event_name','OPEN']);
	_paq.push(['send_event']);
	(function(){
	var u="//image.cauly.co.kr/script/";
	var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
	g.type='text/javascript';
	g.async=true;
	g.defer=true;
	g.src=u+'caulytracker_async.js';
	s.parentNode.insertBefore(g,s);
	})();
}
</script><div id="targetGateScriptLoader"></div>
<div id="criteoScriptLoader"></div>
<script type="text/javascript">
function fnf_appendTargetGateScript(){
	/* var targetGateTag = document.createElement("script");
	targetGateTag.type="text/javascript";
	targetGateTag.async=true;
	targetGateTag.src="//cdn-aitg.widerplanet.com/js/wp_astg_4.0.js";
	$("#targetGateScriptLoader").append(targetGateTag); */
}
function fnf_appendCriteoScript(){
	var criteoTag = document.createElement("script");
	criteoTag.type="text/javascript";
	criteoTag.async=true;
	criteoTag.src="//static.criteo.net/js/ld/ld.js";
	
	$.each(window.criteo_q, function(index, criteodata) {
		if(criteodata.event=='viewList'){
			if(criteodata.item.length==0){
				return;
			}
			if(criteodata.item.length>3){
				criteodata.item = criteodata.item.slice(0,3);
			}
		}
	});
	$("#criteoScriptLoader").append(criteoTag);
}
function fnf_appendMobonScript(){
	/* var rf = new EN();
	rf.setSSL(true);
	rf.sendRf(); */
}
</script>
<script>
	!function(f,b,e,v,n,t,s)
	{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
	n.callMethod.apply(n,arguments):n.queue.push(arguments)};
	if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
	n.queue=[];t=b.createElement(e);t.async=!0;
	t.src=v;s=b.getElementsByTagName(e)[0];
	s.parentNode.insertBefore(t,s)}(window,document,'script',
	'https://connect.facebook.net/en_US/fbevents.js');
	//fbq('init', '2420314948195781');
	fbq('init', '2273436856093305');
	fbq('init', '396021361339657');
	//EOSD-4618
	fbq('trackCustom', 'SearchKeywords', {
		search_string: '{{referrerKeyword}}'
	});
	fbq('track', 'PageView');
</script>
<noscript>
	<img height="1" width="1" src="https://www.facebook.com/tr?id=2420314948195781&ev=PageView&noscript=1"/>
	<img height="1" width="1" src="https://www.facebook.com/tr?id=396021361339657&ev=PageView&noscript=1"/>
</noscript>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
function fnf_naverKeywordAdvertisement(val,sumAmount){
	if (!wcs_add) var wcs_add={};
	window.wcs_add = {wa:'s_1a7fdf177b81'};

	if (!_nasa) var _nasa={};
	
	if(val){
		_nasa["cnv"] = wcs.cnv(val,sumAmount); // 전환유형, 전환가치 설정해야함. 설치매뉴얼 참고else{}
	}
	
	wcs.inflow("mlb-korea.com");
	wcs_do(_nasa);
}
</script>
<iframe id="hfrADCheck" src="//adcheck.about.co.kr/mad/prd/view?shopid=mlb" scrolling="no" frameborder="0" width="0" height="0" style="display: none;"></iframe>
<script>
	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
	ga('create', 'UA-29462318-1', 'mlb-korea.com');
	ga('send', 'pageview');
</script>
<!-- Global site tag (gtag.js) - Google Ads: 840871019 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-840871019"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'AW-840871019');
</script>
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-961283672"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag(){dataLayer.push(arguments);}
	gtag('js', new Date());
	gtag('config', 'AW-961283672');
</script>

<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('427203127269344166').pageView();
      kakaoPixel('7684449978440634289').pageView(); //EOSD-2265
</script>
<script type="text/javascript">
	var DaumConversionDctSv; 
	var DaumConversionAccountID="O2BlzM_QN2eH5K1A-dJQzw00";
	var DaumConversionScriptLoaded;
	
	function fnf_kakaoCTS(type, ordNo, amount) {
		DaumConversionDctSv="type=" + type + ",orderID=" + ordNo + ",amount=" + amount;
		
	    if (typeof DaumConversionScriptLoaded=="undefined"&&location.protocol!="file:") {
	    	DaumConversionScriptLoaded=true; 
	    	/* document.write(unescape(
		            "%3Cscript%20type%3D%22text/javas"
		            +"cript%22%20src%3D%22"
		            +(location.protocol=="https:"?"https":"http")
		            +"%3A//t1.daumcdn.net/cssjs/common/cts/vr200/dcts.js%22%3E%3C/script%3E")); */
		    var t = document.createElement("script"),
		    	e="https:"==document.location.protocol?"https://":"http://";
		    t.src=e+"t1.daumcdn.net/cssjs/common/cts/vr200/dcts.js",
		    document.getElementsByTagName("head")[0].appendChild(t);
	    }
	}
</script>
<div class="wrap" id="wrap">
	<script>
(function() {
	var isMobile = navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/webOS/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/BlackBerry/i) || navigator.userAgent.match(/Windows Phone/i) ? true : false;
	var site = 'PC';var maillId = 'MLB';
	if (navigator.userAgent.match(/(iPad)/) || (navigator.platform === 'MacIntel' && navigator.maxTouchPoints == 5)) { 
		isMobile = false;
		var mvp = document.getElementById('myViewport');
		var width = (maillId == 'DV' ? 1400 : 1300);
		if (mvp) {mvp.setAttribute('content','width='+ width);}
	}
	var currenttHost;
	var targetHost;
	if (isMobile && site == 'PC') {
		currenttHost = 'www';
		targetHost = 'm';
	} else if (!isMobile && site == 'MOBILE') {
		currenttHost = 'm';
		targetHost = 'www';
	}
	if (currenttHost) {
		var url = location.href;
		if (url.startsWith('http://local')) { return; }
		var match = url.match(/^(https?:\/\/)([a-z-]+)(\..+)$/);
		if (match) {
			var targetUrl = match[1] + match[2].replace(currenttHost, targetHost) + match[3];
			location.href = targetUrl;
		}
	}
})();

	window.cremaAsyncInit = function () {
		var mbrOnlineId = ("" == "X2452640") ? null : "X2452640";
		var mbrNm = ("" == "김유리") ? null : "김유리";
		crema.init(mbrOnlineId, mbrNm);
	};
</script>
<script>
	var gnbMiniCart = {
		load : function(){
			$.ajax({
				 type:"post"
				,url: PATH_LOCALE + "/cart/goods/gnblistCnt.json"
				,data : {}
				,dataType: "json"
				,async : true
				,beforeSend : function(request) {
					var csrfToken = $('meta[name="_csrf"]').attr('content') || '';
					var csrfName = $('meta[name="_csrf_header"]').attr('content') || '';
					request.setRequestHeader(csrfName, csrfToken);
				}
		       ,success: function(data){		 
			       	if(data.cart != null){
		    			var bsk_ttl_cnt = data.cart.length;
		    			if(bsk_ttl_cnt > 99){
		    				$("#GNBHeaderCartCount").html("99+");
		    			}else{
		    				$("#GNBHeaderCartCount").html(bsk_ttl_cnt);
		    			}
			       	}else{
			       		$("#GNBHeaderCartCount").html("0");
			       	}
			       	var mbr = {};
		       		var loginFlag = false;
		       		if (data.mbrNm) {
		       			mbr = {mbrNm : data.mbrNm};
		       			loginFlag = true;
		       			USER.mbrNo = data.mbrNo;
		       			USER.mbrNm = data.mbrNm;
		       		}
		       		// 캐싱  사용자 카운트
		       		if (USER.mbrNo === '' && loginFlag) { $.post("/common/logCollect/cache_user", {name: data.mbrNm});}
		       },
		       error: function() {
		
		       }
		   });	
		}
	}
	
	var gnbMiniMyinfo = {
		load : function(loginFlag) {
			var logoutUrl = '/logoutProcess';
			var html = "";
			html += "<ul class=\"info\">";
			if(loginFlag == false) {
				html += "	<li class=\"login\"><a href=\"#\" onclick=\"doGNBLogin(); return false;\" data-ga-category=\"PC_MLB_Header\" data-ga-action=\"회원\" data-ga-label=\"로그인\">" + MESSAGES['common.js.header.head.txt5'] + "</a></li>";
				html += "	<li class=\"join\"><a href=\"#\" onclick=\"doGNBJoin(); return false;\" data-ga-category=\"PC_MLB_Header\" data-ga-action=\"회원\" data-ga-label=\"회원가입\">" + MESSAGES['common.js.header.head.txt6'] + "</a></li>";
			}
			else {
				html += "	<li class=\"logout\"><a href=\"#\" onClick=\"doLogout('" + logoutUrl + "'); return false;\" data-ga-category=\"PC_MLB_Header\" data-ga-action=\"회원\" data-ga-label=\"로그아웃\">" + MESSAGES['common.js.header.head.txt7'] + "</a></li>";
			}
			html += "	<li class=\"mypage\"><a href=\"#\" onclick=\"doGNBMypage(); return false;\" data-ga-category=\"PC_MLB_Header\" data-ga-action=\"회원\" data-ga-label=\"마이페이지\">" + MESSAGES['common.js.header.head.txt8'] + "</a></li>";
			html += "</ul>";

			$("#btn_head_myinfo .info").remove();
			$("#btn_head_myinfo a").after(html);
		}
	}
	
	$(document).ready(function() {

		var cookie = getCookie2("__NCP_LOCALE__");
		if(!cookie) {
			setCookie2("__NCP_LOCALE__", "ko", 360);
		}
		
		gnbMiniCart.load();
		
		
		
		$.ajax({
			 type:"post"
			,url: PATH_LOCALE + "/mypage/wishlist/gnbListCount.json"
			,data : {}
			,dataType: "json"
			,async : true
			,beforeSend : function(request) {
				var csrfToken = $('meta[name="_csrf"]').attr('content') || '';
				var csrfName = $('meta[name="_csrf_header"]').attr('content') || '';
				request.setRequestHeader(csrfName, csrfToken);
			}
			,success: function(data){
		       	if(data.gnbListCount != null){
	    			var bsk_ttl_cnt = data.gnbListCount.length;
	    			if(bsk_ttl_cnt > 99){
	    				$("#gnbWishCount").html("99+");
	    			}else{
	    				$("#gnbWishCount").html(bsk_ttl_cnt);
	    			}
		       	}
			},
			error: function() {

			}
		});
		
		
	});
	
</script>
<!-- <div class="head">

	<section class="flexBanner" id="flexBanner" style="background-color: #bb6160;">
		<div class="in">
			<div class="ctn">
				<div class="banner">
					<a href="/special/2437" data-ga-category="PC_MLB_Header" data-ga-action="최상단 띠배너" data-ga-label="주간 트렌드 픽">
					<img src="https://static.mlb-korea.com/images/display/category/MTP/A01/A02/contents/10121_4872_45_KOR_20211027110917.png/dims/resize/1920" alt="주간 트렌드 픽"></a>
				</div>
			</div>
			<div class="bts">
				<button class="btnClose" onclick="$('#flexBanner').hide(); ui.ly.posit();controlCookie2('topBnr');" data-ga-category="PC_MLB_Header" data-ga-action="최상단 띠배너" data-ga-label="닫기">닫기</button>
				<div class="msg">오늘 그만보기</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
(function() {
	var cookie = getCookie2("topBnr");
	if("" === cookie) {
		$("#flexBanner").show();
	}else{
		$("#flexBanner").hide();
	}	
})();


function controlCookie2( name ) {
	setCookie2( name, "true", 1 );
}

//24시간 기준 쿠키 설정하기  
//expiredays 후의 클릭한 시간까지 쿠키 설정  
function setCookie2( name, value, expiredays ) {   
	var todayDate = new Date();   
	todayDate.setDate( todayDate.getDate() + expiredays );
	todayDate.setHours(00);
	todayDate.setMinutes(00);
	todayDate.setSeconds(00);
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"   
}  

//쿠키 가져오기  
function getCookie2( cname ) {
	var name = cname + "=";
	var decodedCookie = decodeURIComponent(document.cookie);
	var ca = decodedCookie.split(';');
	for(var i = 0; i <ca.length; i++) {
		var c = ca[i];
		while (c.charAt(0) == ' ') {
			c = c.substring(1);
		}
		if (c.indexOf(name) == 0) {
			return c.substring(name.length, c.length);
		}
	}
	return ""; 
}

function goGNBCart(){
	
	if(getCookie("__NCP_LOCALE__") == "ko"){	
		jsLinkUrlPost(PATH_LOCALE + "/cart/goods/list");
	}else{
		var bool = confirm(MESSAGES['common.js.header.msg']);
		
		if(bool){
			changeLocale("ko");
		}
	}
}

function goGNBwish(){
	
	if(getCookie("__NCP_LOCALE__") == "ko"){	
		jsLinkUrlPost(PATH_LOCALE + "/mypage/wishlist/list");
	}else{
		var bool = confirm(MESSAGES['common.js.header.msg']);
		
		if(bool){
			changeLocale("ko");
		}
	}
}

var logoutUrl = '/logoutProcess';
function makeGNBMyinfo(loginFlag) {
	var html = "";
	html += "<ul class=\"info\">";
	if(loginFlag == false) {
		html += "	<li class=\"login\"><a href=\"#\" onclick=\"doGNBLogin(); return false;\" data-ga-category=\"PC_MLB_Header\" data-ga-action=\"회원\" data-ga-label=\"로그인\">" + MESSAGES['common.js.header.head.txt5'] + "</a></li>";
		html += "	<li class=\"join\"><a href=\"#\" onclick=\"doGNBJoin(); return false;\" data-ga-category=\"PC_MLB_Header\" data-ga-action=\"회원\" data-ga-label=\"회원가입\">" + MESSAGES['common.js.header.head.txt6'] + "</a></li>";
	}
	else {
		html += "	<li class=\"logout\"><a href=\"#\" onClick=\"doLogout('" + logoutUrl + "'); return false;\" data-ga-category=\"PC_MLB_Header\" data-ga-action=\"회원\" data-ga-label=\"로그아웃\">" + MESSAGES['common.js.header.head.txt7'] + "</a></li>";
	}
	html += "	<li class=\"mypage\"><a href=\"#\" onclick=\"doGNBMypage(); return false;\" data-ga-category=\"PC_MLB_Header\" data-ga-action=\"회원\" data-ga-label=\"마이페이지\">" + MESSAGES['common.js.header.head.txt8'] + "</a></li>";
	html += "</ul>";

	$("#btn_head_myinfo .info").remove();
	$("#btn_head_myinfo a").after(html);
}

</script>
<form id="lnbDspCtgryForm" method="get" >
  <input type="hidden" name="dspCtgryNo" id="dspCtgryNo" value="">
  <input type="hidden" name="currentCtgryDpthCd" id="currentCtgryDpthCd" value="">
  <input type="hidden" name="ctgrySectCd" id="ctgrySectCd" value="">
  <input type="hidden" name="ctgryNoDpth1" id="ctgryNoDpth1" value="">
  <input type="hidden" name="ctgryNoDpth2" id="ctgryNoDpth2" value="">
  <input type="hidden" name="ctgryNoDpth3" id="ctgryNoDpth3" value="">
</form>

<form id="realForm" method="get" ></form>

RecoPick 로그수집 스크립트
<script type="text/javascript">
HashMap = function(){
	 this.hashMap = new Object();
	};   
	HashMap.prototype = {   
	    put : function(key, value){   
	        this.hashMap[key] = value;
	    },   
	    get : function(key){   
	        return this.hashMap[key];
	    },
	    containsKey : function(key){    
	     return key in this.hashMap;
	    },
	    containsValue : function(value){    
	     for(var prop in this.hashMap){
	      if(this.hashMap[prop] == value) return true;
	     }
	     return false;
	    },
	    isEmpty : function(key){    
	     return (this.size() == 0);
	    },
	    clear : function(){   
	     for(var prop in this.hashMap){
	      delete this.hashMap[prop];
	     }
	    },
	    remove : function(key){    
	     delete this.hashMap[key];
	    },
	    keys : function(){   
	        var keys = new Array();   
	        for(var prop in this.hashMap){   
	            keys.push(prop);
	        }   
	        return keys;
	    },
	    values : function(){   
	     var values = new Array();   
	        for(var prop in this.hashMap){   
	         values.push(this.hashMap[prop]);
	        }   
	        return values;
	    },
	    size : function(){
	      var count = 0;
	      for (var prop in this.hashMap) {
	        count++;
	      }
	      return count;
	    }
	};


function addComma(n) {
	 var reg = /(^[+-]?\d+)(\d{3})/;	 
	 n += '';
	 while (reg.test(n)) {
	  n = n.replace(reg, '$1' + ',' + '$2');
	 }
	 return n;
}

function setCookie(c_name,value,exdays)

{

	var exdate=new Date();

	exdate.setDate(exdate.getDate() + exdays);

	var c_value=escape(value) + ((exdays==null) ? "" : "; expires="+exdate.toUTCString());

	document.cookie=c_name + "=" + c_value;

}

//기존 getCookie("__NCP_LOCALE__") 대신에 사용할 목적으로 생성
function getCookieLocale(c_name){
	// 전역변수
	var locale = PATH_LOCALE.replace('/', '');
	if (locale === '') {
		locale = 'ko';
	}
	return locale;
}

function getCookie(c_name) {
	
	if (c_name === '__NCP_LOCALE__') {
		return getCookieLocale(c_name);
	}

	var i,x,y,ARRcookies=document.cookie.split(";");

	for (i=0;i<ARRcookies.length;i++)

	{

	  x=ARRcookies[i].substr(0,ARRcookies[i].indexOf("="));

	  y=ARRcookies[i].substr(ARRcookies[i].indexOf("=")+1);

	  x=x.replace(/^\s+|\s+$/g,"");

	  if (x==c_name)

		{

		return unescape(y);

		}

	  }

}
 
  (function(w,d,n,s,e,o) {
     w[n]=w[n]||function(){(w[n].q=w[n].q||[]).push(arguments)};
     e=d.createElement(s);e.async=1;e.charset='utf-8';e.src='//static.recopick.com/dist/production.min.js';
     o=d.getElementsByTagName(s)[0];o.parentNode.insertBefore(e,o);
   })(window, document, 'recoPick', 'script');
   recoPick('service', 'mlb-korea.com');
 
   recoPick('fetchUID', function (uid) {
	   setCookie('recopick_uid',uid,365);
 
	   });
 
   if('189ead6bac296183712e654ffd87ed43' != ''){
 
	   var mbrBrthdy = '19971117';
	   var mbrSexSectCd = 'FEMALE';
	   if(mbrBrthdy !=''){
		   mbrBrthdy = mbrBrthdy.substr(0,4);
	   }else{
		   mbrBrthdy ='2000';
	   }
	   if(mbrSexSectCd =='MALE'){
		   mbrSexSectCd = 'M';
	   }else{
		   mbrSexSectCd ='F';
	   }
	   recoPick('setMID','189ead6bac296183712e654ffd87ed43');
	   recoPick('setUserInfo',{ birthyear:mbrBrthdy, gender:mbrSexSectCd});
   }else{  
   }
   
   var pageUrl = document.URL;
   if(pageUrl.indexOf('/goods') > -1 ){
	   recoPick('sendLog','view', {id:'', c1:'', c2:'', c3:''});	   
   }else if (pageUrl.indexOf('/order') > -1 ){
	   //주문 완료 페이지 별도 작업
   }else{
	   recoPick('sendLog','visit');
   }
   
   function recoPickClicklog(obj) {
	var erpNo =    $(obj).data("erpgodno");
	var clicklogLink  = hashMap.get(erpNo);
	var godurl =   $(obj).data("godurl");
	
 	   $.ajax({
			type : "GET",
	        url:clicklogLink,
	        dataType: 'jsonp',
	        success: function(data){
	        },
	        error: function() {
	    
	        }
	    });
	location.href = godurl;
   }
   
   var imageURL = 'https://static.mlb-korea.com/images';
   var hashMap = new HashMap();
   var gaCategory, gaAction;//EOSD-2114 이벤트
   function recoPickView(el,data) {
 
	  var count = 0;
	   $(data).each(function(v,god) {
 
		 if(god.length >0){
			 $(god).each(function(i,s) {
				  hashMap.put(s.id, s.clicklog_link);
		          if('undefined' == s.score || undefined == s.score ){
		     		 $('#recoPickForm').append('<input type="hidden" name="recoPicks['+count+'].score"  value="-1">');        	  
		          }else{
		        	  $('#recoPickForm').append('<input type="hidden" name="recoPicks['+count+'].score"  value='+s.score+'>');  
		          }
		          $('#recoPickForm').append('<input type="hidden" name="recoPicks['+count+'].method"  value='+s.method+'>'); 
		          $('#recoPickForm').append('<input type="hidden" name="recoPicks['+count+'].id"  value='+s.id+'>');  
		          count++;
			 });
  
		 }else{
			   hashMap.put(god.id, god.clicklog_link);
		          if('undefined' == god.score || undefined == god.score ){
			     		 $('#recoPickForm').append('<input type="hidden" name="recoPicks['+count+'].score"  value="-1">');        	  
			          }else{
			        	  $('#recoPickForm').append('<input type="hidden" name="recoPicks['+count+'].score"  value='+god.score+'>');  
			          }
		  		$('#recoPickForm').append('<input type="hidden" name="recoPicks['+count+'].method"  value='+god.method+'>');
				$('#recoPickForm').append('<input type="hidden" name="recoPicks['+count+'].id"  value='+god.id+'>');
		 }
		 count++;
		});
	var html = "";
 
	   $.ajax({
			type : "post",
	        url: PATH_LOCALE + "/display/recoPick.json",
			beforeSend : function(request) {
				var csrfToken = $('meta[name="_csrf"]').attr('content') || '';
				var csrfName = $('meta[name="_csrf_header"]').attr('content') || '';
				request.setRequestHeader(csrfName, csrfToken);
			},
	    	data : $("#recoPickForm").serialize(),
	        success: function(data){
	      		if(typeof data.godList != "undefined" && data.godList.length > 0){
	      			html += "<ul class=\"swiper-wrapper\">";
		        	var count = 0 ;
		        	$(data.godList).each(function(v,god) {
		        		if(count < 10){
		        			html += "<li class=\"swiper-slide\">";
		        			if(gaCategory == undefined || gaCategory == ''){
					        	html += "	<div class=\"pd_img\"><a href=\"#\" data-erpgodno=\"" + god.god.erpGodNo + "\" data-godurl=\"" + PATH_LOCALE + god.godUrl + "\" onclick=\"javascript:recoPickClicklog(this);gaTagging('"+PATH_LOCALE + god.godUrl+"','"+ god.god.erpGodNo+"','"+ god.god.godNm+"','"+ god.dspGodPrc.csmrPrc+"','"+ god.brndNm+"','"+ god.god.dspCtgryNm+"','"+ (count+1) +"','"+ god.god.evtNm+"','"+ god.god.evtCd+"','"+ god.god.prmNm+"','"+ god.god.prmCd+"','"+ god.god.godDcRt+"','"+ god.colorTagNm+"','"+ god.matrDscr+"','"+ god.mgDscr+"','"+ god.godWt+"','"+ god.godUrl+"','"+ god.god.sesonCd+"','제품상세_연관상품','"+god.imgFrontUrl+"');\">";
		        			}else{
		        				html += "	<div class=\"pd_img\"><a href=\"#\" data-erpgodno=\"" + god.god.erpGodNo + "\" data-godurl=\"" + PATH_LOCALE + god.godUrl + "\" onclick=\"javascript:recoPickClicklog(this);gaTagging('"+PATH_LOCALE + god.godUrl+"','"+ god.god.erpGodNo+"','"+ god.god.godNm+"','"+ god.dspGodPrc.csmrPrc+"','"+ god.brndNm+"','"+ god.god.dspCtgryNm+"','"+ (count+1) +"','"+ god.god.evtNm+"','"+ god.god.evtCd+"','"+ god.god.prmNm+"','"+ god.god.prmCd+"','"+ god.god.godDcRt+"','"+ god.colorTagNm+"','"+ god.matrDscr+"','"+ god.mgDscr+"','"+ god.godWt+"','"+ god.godUrl+"','"+ god.god.sesonCd+"','제품상세_연관상품','"+god.imgFrontUrl+"');\" data-ga-category=\"" + gaCategory + "\" data-ga-action=\"" + gaAction + "\" data-ga-label=\"" + god.god.godNm +"\">";
		        			}
					        if("SLDOUT" == god.god.godSaleSectCd){
					        	html += "	 <em class=\"sold_out\">SOLD OUT</em>";	
					        }else if("SMTM_SLDOUT" == god.god.godSaleSectCd){
					        	html += "	 <em class=\"soon\">COMING SOON</em>";
					        }
					        html += "	 <img src=\"" + imageURL+god.imgFrontUrl + "/dims/resize/414x414\" alt=\"" + god.god.godNm + "\" onerror=\"errorImgShow(this, '600x600');\"></a></div>";
					        html += "    <div class=\"info\">";
					        html += "    	<div class=\"name\">";
					        
					        if(null != god.tagNm){
						        html += "    <span style=\"color:" + god.colorTagNm +"\">" + god.tagNm + "</span>";
					        }
					        
					        if("I" == god.brndId && "PE" != god.god.prdlstCd){
						        html += "   <span>[KIDS]</span>";
					        }
					        html += "    	" + god.god.godNm + "</div>";
					        html += "    	<div class=\"prc\">";
					        if(god.dspGodPrc.rtlPrc > god.dspGodPrc.csmrPrc){
					            html += "    		<s class=\"s\">" + addComma(god.dspGodPrc.rtlPrc) + "원</s>";
					            html += "    		<em class=\"p\">" + addComma(god.dspGodPrc.csmrPrc) + "원</em>";
					        }else{
					            html += "    		<em class=\"p\">" + addComma(god.dspGodPrc.csmrPrc) + "원</em>";
					        }
					        html += "    	</div>";
					        html += " 	</div>";
					        html += " </li>";	
		        		}

		        	    count ++;
		        	});
		        	html += "</ul>";
			        html +=	"<div class=\"btn_list_arrow\">";
				    html += "	<a href=\"javascript:;\" class=\"btn_prev\">이전</a>";
				    html += "	<a href=\"javascript:;\" class=\"btn_next\">다음</a>";
				    html += "</div>";
		       
		        	el.html(html);
		        	
				    var recomPdListBox = new Swiper("#recomPdListBox, #recommendProductGNRL_DLV, #recommendProductRSV, #recommendProductPKUP_DLV", {
					      slidesPerView: 4,
					      slidesPerGroup: 1,
					      spaceBetween: 22,
					      loop:true,
						    navigation: {
						    nextEl: '.btn_next',
						    prevEl: '.btn_prev'
						    },
					      breakpoints: {
					        1280: {
					          slidesPerView: 3,
					          spaceBetween: 20
					        }
					      }
					    });
	      		}else{
	      			el.parents(".recom").hide();
	      		}
	        },
	        error: function() {

	        }
	    });
   } 
 

   (function($){
	   
	   var service_id = '2326';	
	   //1) 함께본상품  
	   $.fn.viewtogether   = function(opts){
			 
		   return this.each(function(){
			   var options = $.extend({}, $.fn.defaults, opts || {}); 
			   var dxmUid = getCookie('recopick_uid');
			   var $el = $(this);  
			   gaCategory = options.gaCategory;
			   gaAction = options.gaAction;
		 
			   var url = "https://api.recopick.com/v1/recommendations/item/"+service_id+"/"+dxmUid+"/"+encodeURIComponent(options.godNo)+"?type=viewtogether&limit="+options.limit+"&channel="+options.channel;
			   $('#recoPickForm').empty();
			   $.ajax({
			        url:url,
			        dataType: 'jsonp',
			        success: function(data){
			        
			        	var godNos = options.godNo.split(',');
			        	var godArry = new Array();
			        	$(godNos).each(function(v,god) {
				     
			        		godArry.push(data[god]);
			        	 
			        	});
			 
			        	recoPickStatistical($el ,godArry);
	 
			        },
			        error: function() {
	  
			        }
			    });
 
			   
			   }); 
		   }; 
	   //개인화 추천
	   $.fn.personalized  = function(opts){
		   return this.each(function(){
			   var options = $.extend({}, $.fn.defaults, opts || {}); 
			   var dxmUid = getCookie('recopick_uid');
			   var $el = $(this);  
			   var url = "https://api.recopick.com/v1/recommendations/user/"+service_id+"/"+dxmUid+"?type=realtime_api&limit="+options.limit+"&channel="+options.channel;
			   gaCategory = options.gaCategory;
			   gaAction = options.gaAction;
			 
			   if('189ead6bac296183712e654ffd87ed43' != ''){
				   url = "https://api.recopick.com/v1/recommendations/user/"+service_id+"/"+dxmUid+"?mid="+'189ead6bac296183712e654ffd87ed43'+"&type=realtime_api&limit="+options.limit+"&channel="+options.channel;

			   }
 
			   $('#recoPickForm').empty();
			   
			   $.ajax({
			        url:url,
			        dataType: 'jsonp',
			        success: function(data){
	  					if(data.length > 0){
			    			recoPickStatistical($el ,data);
			        	}else{
	  						$el.parents(".recom").hide();
			        	}
			        },
			        error: function() {
			        	$el.parents(".recom").hide();
			        }
			    });
 
			   
			   }); 
		   }; 
		   //대체 로직 API
	   recoPickStatistical = function($el,opts){
		   var options = $.fn.defaults ; 
		   var dxmUid = getCookie('recopick_uid');
		 
		   var url = options.url+'/'+dxmUid+'?type='+options.type+'&limit='+options.limit+"&channel="+options.channel;

		   $.ajax({
		        url:url,
		        dataType: 'jsonp',		       
		        success: function(data){
 
		        	$(data).each(function(v,god) {
		        		opts.push(god);
		        		
		        	});
		        	recoPickView($el,opts);
		        },
		        error: function() {
 
		        }
		    });

		   }; 
 
		   $.fn.defaults = { 
				   service_id : service_id, 
				   url : 'https://api.recopick.com/v1/recommendations/most/'+service_id,
				   limit : 20 ,
				   godNo :'',
				   type:'view'
				   } 
		   
   })(jQuery);

</script>

<form id="recoPickForm" method="get" >
 
</form>
 -->
<!--RecoPick 로그수집 스크립트 --><nav class="gnb">
	<div class="pan">
		<div class="menu">
			<ul class="list">
				<li>
							<a href="javascript:cateLink('MBMA01', '1', 'GNRL_CTGRY', 'MBMA01');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL">APPAREL</a>
							<ul>
								<li><a href="javascript:cateLink('MBMA01A15', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A15');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="MLB 셋업">MLB 셋업</a></li>
									<li><a href="javascript:cateLink('MBMA01A13', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A13');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="MLB 후리스">MLB 후리스</a></li>
									<li><a href="javascript:cateLink('MBMA01A11', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A11');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="MLB x DISNEY">MLB x DISNEY</a></li>
									<li><a href="javascript:cateLink('MBMA01A04', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A04');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="아우터">아우터</a></li>
									<li><a href="javascript:cateLink('MBMA01A05', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A05');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="상의">상의</a></li>
									<li><a href="javascript:cateLink('MBMA01A06', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A06');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="하의">하의</a></li>
									<li><a href="javascript:cateLink('MBMA01A14', '2', 'GNRL_CTGRY', 'MBMA01', 'MBMA01A14');" data-ga-category="PC_MLB_Header" data-ga-action="APPAREL" data-ga-label="여성전용">여성전용</a></li>
									</ul>
						</li>
					<li>
							<a href="javascript:cateLink('MBMA03', '1', 'GNRL_CTGRY', 'MBMA03');" data-ga-category="PC_MLB_Header" data-ga-action="CAP">CAP</a>
							<ul>
								<li><a href="javascript:cateLink('MBMA03A10', '2', 'GNRL_CTGRY', 'MBMA03', 'MBMA03A10');" data-ga-category="PC_MLB_Header" data-ga-action="CAP" data-ga-label="MLB x DISNEY">MLB x DISNEY</a></li>
									<li><a href="javascript:cateLink('MBMA03A05', '2', 'GNRL_CTGRY', 'MBMA03', 'MBMA03A05');" data-ga-category="PC_MLB_Header" data-ga-action="CAP" data-ga-label="볼캡">볼캡</a></li>
									<li><a href="javascript:cateLink('MBMA03A06', '2', 'GNRL_CTGRY', 'MBMA03', 'MBMA03A06');" data-ga-category="PC_MLB_Header" data-ga-action="CAP" data-ga-label="스냅백">스냅백</a></li>
									<li><a href="javascript:cateLink('MBMA03A11', '2', 'GNRL_CTGRY', 'MBMA03', 'MBMA03A11');" data-ga-category="PC_MLB_Header" data-ga-action="CAP" data-ga-label="비니">비니</a></li>
									<li><a href="javascript:cateLink('MBMA03A07', '2', 'GNRL_CTGRY', 'MBMA03', 'MBMA03A07');" data-ga-category="PC_MLB_Header" data-ga-action="CAP" data-ga-label="HAT">HAT</a></li>
									<li><a href="javascript:cateLink('MBMA03A09', '2', 'GNRL_CTGRY', 'MBMA03', 'MBMA03A09');" data-ga-category="PC_MLB_Header" data-ga-action="CAP" data-ga-label="기타모">기타모</a></li>
									</ul>
						</li>
					<li>
							<a href="javascript:cateLink('MBMA10', '1', 'GNRL_CTGRY', 'MBMA10');" data-ga-category="PC_MLB_Header" data-ga-action="SHOES">SHOES</a>
							<ul>
								<li><a href="javascript:cateLink('MBMA10A01', '2', 'GNRL_CTGRY', 'MBMA10', 'MBMA10A01');" data-ga-category="PC_MLB_Header" data-ga-action="SHOES" data-ga-label="운동화">운동화</a></li>
									<li><a href="javascript:cateLink('MBMA10A02', '2', 'GNRL_CTGRY', 'MBMA10', 'MBMA10A02');" data-ga-category="PC_MLB_Header" data-ga-action="SHOES" data-ga-label="샌들/슬리퍼">샌들/슬리퍼</a></li>
									</ul>
						</li>
					<li>
							<a href="javascript:cateLink('MBMA14', '1', 'GNRL_CTGRY', 'MBMA14');" data-ga-category="PC_MLB_Header" data-ga-action="BAG">BAG</a>
							<ul>
								<li><a href="javascript:cateLink('MBMA14A06', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A06');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="MLB x DISNEY">MLB x DISNEY</a></li>
									<li><a href="javascript:cateLink('MBMA14A01', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A01');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="백팩">백팩</a></li>
									<li><a href="javascript:cateLink('MBMA14A02', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A02');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="힙색">힙색</a></li>
									<li><a href="javascript:cateLink('MBMA14A03', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A03');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="크로스백">크로스백</a></li>
									<li><a href="javascript:cateLink('MBMA14A04', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A04');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="호보백">호보백</a></li>
									<li><a href="javascript:cateLink('MBMA14A07', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A07');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="버킷백">버킷백</a></li>
									<li><a href="javascript:cateLink('MBMA14A08', '2', 'GNRL_CTGRY', 'MBMA14', 'MBMA14A08');" data-ga-category="PC_MLB_Header" data-ga-action="BAG" data-ga-label="토트백">토트백</a></li>
									</ul>
						</li>
					<li>
							<a href="javascript:cateLink('MBMA04', '1', 'GNRL_CTGRY', 'MBMA04');" data-ga-category="PC_MLB_Header" data-ga-action="ACC &amp; PET">ACC &amp; PET</a>
							<ul>
								<li><a href="javascript:cateLink('MBMA04A06', '2', 'GNRL_CTGRY', 'MBMA04', 'MBMA04A06');" data-ga-category="PC_MLB_Header" data-ga-action="ACC &amp; PET" data-ga-label="악세서리">악세서리</a></li>
									<li><a href="javascript:cateLink('MBMA04A12', '2', 'GNRL_CTGRY', 'MBMA04', 'MBMA04A12');" data-ga-category="PC_MLB_Header" data-ga-action="ACC &amp; PET" data-ga-label="PET">PET</a></li>
									<li><a href="javascript:cateLink('MBMA04A13', '2', 'GNRL_CTGRY', 'MBMA04', 'MBMA04A13');" data-ga-category="PC_MLB_Header" data-ga-action="ACC &amp; PET" data-ga-label="쥬얼리">쥬얼리</a></li>
									</ul>
						</li>
					<li>
							<a href="javascript:cateLink('MBMA05', '1', 'GNRL_CTGRY', 'MBMA05');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS">KIDS</a>
							<ul>
								<li><a href="javascript:cateLink('MBMA05A26', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A26');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="PREMIUM 구스 패딩">PREMIUM 구스 패딩</a></li>
									<li><a href="javascript:cateLink('MBMA05A18', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A18');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="PREMIUM 후리스">PREMIUM 후리스</a></li>
									<li><a href="javascript:cateLink('MBMA05A12', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A12');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="MLB x DISNEY">MLB x DISNEY</a></li>
									<li><a href="javascript:cateLink('MBMA05A14', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A14');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="트레이닝 세트">트레이닝 세트</a></li>
									<li><a href="javascript:cateLink('MBMA05A19', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A19');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="베이비">베이비</a></li>
									<li><a href="javascript:cateLink('MBMA05A04', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A04');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="아우터">아우터</a></li>
									<li><a href="javascript:cateLink('MBMA05A05', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A05');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="상의">상의</a></li>
									<li><a href="javascript:cateLink('MBMA05A06', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A06');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="하의">하의</a></li>
									<li><a href="javascript:cateLink('MBMA05A07', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A07');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="모자">모자</a></li>
									<li><a href="javascript:cateLink('MBMA05A13', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A13');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="슈즈">슈즈</a></li>
									<li><a href="javascript:cateLink('MBMA05A08', '2', 'GNRL_CTGRY', 'MBMA05', 'MBMA05A08');" data-ga-category="PC_MLB_Header" data-ga-action="KIDS" data-ga-label="악세서리">악세서리</a></li>
									</ul>
						</li>
					<li>
							<a href="javascript:cateLink('MBMA16', '1', 'GNRL_CTGRY', 'MBMA16');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM">MONOGRAM</a>
							<ul>
								<li><a href="javascript:cateLink('MBMA16A01', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A01');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="베이직 모노그램">베이직 모노그램</a></li>
									<li><a href="javascript:cateLink('MBMA16A02', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A02');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="다이아 모노그램">다이아 모노그램</a></li>
									<li><a href="javascript:cateLink('MBMA16A03', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A03');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="어패럴">어패럴</a></li>
									<li><a href="javascript:cateLink('MBMA16A04', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A04');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="모자">모자</a></li>
									<li><a href="javascript:cateLink('MBMA16A05', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A05');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="슈즈">슈즈</a></li>
									<li><a href="javascript:cateLink('MBMA16A06', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A06');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="가방">가방</a></li>
									<li><a href="javascript:cateLink('MBMA16A07', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A07');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="ACC">ACC</a></li>
									<li><a href="javascript:cateLink('MBMA16A08', '2', 'GNRL_CTGRY', 'MBMA16', 'MBMA16A08');" data-ga-category="PC_MLB_Header" data-ga-action="MONOGRAM" data-ga-label="키즈">키즈</a></li>
									</ul>
						</li>
					</ul>
		</div>
		<div class="link">
			<ul class="list">
				<li><a href="/event/promotionList" data-ga-category="PC_MLB_Header" data-ga-action="PROMOTION/EVENT">PROMOTION</a></li>
				<!-- [EOSD-2740] 카테고리 수정 <li><a href="/display/view?dspCtgryNo=MBMA06&currentCtgryDpthCd=1&ctgrySectCd=OTLT_CTGRY&ctgryNoDpth1=MBMA06" data-ga-category="PC_MLB_Header" data-ga-action="OUTLET">OUTLET</a></li>
				<li><a href="/display/majorView?dspCtgryNo=MBMA11&currentCtgryDpthCd=1&ctgrySectCd=GNRL_CTGRY&ctgryNoDpth1=MBMA11" data-ga-category="PC_MLB_Header" data-ga-action="FAMILY">FAMILY</a></li> -->
				<li><a href="/lookbook/lookbookList" data-ga-category="PC_MLB_Header" data-ga-action="LOOKBOOK">LOOKBOOK</a></li>
				<li><a href="/culture/cultureList" data-ga-category="PC_MLB_Header" data-ga-action="CULTURE">CULTURE</a></li>
</ul>
		</div>
		<!--  [EOSD-2740] 카테고리 수정
		<div class="banner">
			<ul class="list">
				</ul>
		</div>
		 -->
	</div>
</nav>

<!-- 컨텐츠 시작 -->
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/member/login.js"></script>
<script type="text/javascript" src="/javascript/message/mypage_ko.js?v=prod-version-858_20211102145956"></script>

<input type="hidden" name="_csrf" value="20c339d0-4d3c-45a9-8054-918681af63bc"/>
<input type="hidden" id="srchMonth" name="srchMonth" value="">
<input type="hidden" name="pageNo"  id="pageNo" value=""/>

<div class="contain my lnblist-Wrap" id="contain">
    <div class="container">

        <h2 class="title01">쿠폰함</h2>

        <script>
$(document).ready(function(){
	var mypageUrl = document.location.pathname;
	var mypageUrlParam = document.location.href.substring((document.location.href).indexOf("?"));
	console.log(mypageUrl);
	console.log(mypageUrlParam);
	
	var patt1 = /^\/mypage\/order\/\w+\/view/;
	var f_patt1 = patt1.exec(mypageUrl);
	
	console.log(/^\/mypage\/order\/\w+\/view/.exec(mypageUrl));
	
	$("#myNavi1").find("li").removeClass("on");
	$("#myNavi2").find("li").removeClass("on");
	$("#myNavi3").find("li").removeClass("on");
	$("#myNavi4").find("li").removeClass("on");
	
	if(mypageUrl.indexOf("/mypage/claim/list") > -1 || "Y" == ""){
		$("#myNavi1").find("li").eq(1).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/order/list") > -1 || f_patt1){
		$("#myNavi1").find("li").eq(0).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/order/receipt/list") > -1){
		$("#myNavi1").find("li").eq(2).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/wishlist/list") > -1){
		$("#myNavi2").find("li").eq(0).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/todaygood/list") > -1){
		$("#myNavi2").find("li").eq(1).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/goods/reviewView") > -1){
		$("#myNavi2").find("li").eq(2).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/inquiry/") > -1){
		$("#myNavi2").find("li").eq(3).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/benefit/listMileage") > -1){
		$("#myNavi3").find("li").eq(0).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/benefit/listPoint") > -1){
		$("#myNavi3").find("li").eq(1).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/benefit/listCoupon") > -1){
		$("#myNavi3").find("li").eq(2).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/benefit/membershipRateInfo") > -1){
		$("#myNavi3").find("li").eq(3).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/member/deliveryLocationList") > -1){
		$("#myNavi4").find("li").eq(0).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/member/modifyMemberView") > -1 || (mypageUrl+mypageUrlParam).indexOf("/mypage/member/checkPasswordView?targetUrl=modifyMemberView") > -1){
		$("#myNavi4").find("li").eq(1).addClass("on");
	}else if(mypageUrl.indexOf("/mypage/member/secessionMemberView") > -1 || (mypageUrl+mypageUrlParam).indexOf("/mypage/member/checkPasswordView?targetUrl=secessionMemberView") > -1){
		$("#myNavi4").find("li").eq(2).addClass("on");
	}
})
</script>

<nav id="lnb" class="lnb-nav">
        <strong><img src="https://static.mlb-korea.com/pc/static/images/my/mypage_titImg.png" alt="MYPAGE"></strong>
    	<p><b>김유리</b>님<br/>반갑습니다.</p>
    	<hr class="hr-ddd" />
    	
    	<ul class="nav-mnlist">
    		<li id="myNavi1">
    			<a href="javascript:;"><span>주문정보</span></a>
    			<ul>
    				<li>
    					<a href="/mypage/order/list"><span>주문/배송조회</span></a>
    				</li>
    				<li>
    					<a href="/mypage/claim/list"><span>취소/교환/반품 조회</span></a>
    				</li>
    			</ul>
    		</li>
    		<li id="myNavi2">
    			<a href="javascript:;"><span>활동정보</span></a>
    			<ul>
    				<li>
    					<a href="/mypage/wishlist/list"><span>위시리스트</span></a>
    				</li>
    				<li>
    					<a href="/mypage/todaygood/list"><span>최근 본 상품</span></a>
    				</li>
    				<li>
    					<a href="/mypage/goods/reviewView"><span>상품리뷰</span></a>
    				</li>
    				<li>
    					<a href="/mypage/inquiry/list"><span>1:1 문의</span></a>
    				</li>
    			</ul>
    		</li>
    		<li id="myNavi3">
    			<a href="javascript:;"><span>혜택정보</span></a>
    			<ul>
    				<li>
    					<a href="/mypage/benefit/listPoint"><span>포인트</span></a>
    				</li>
    				<li>
    					<a href="/mypage/benefit/listCoupon"><span>쿠폰함</span></a>
    				</li>
    				<li>
    					<a href="/mypage/benefit/membershipRateInfo"><span>회원혜택안내</span></a>
    				</li>
    			</ul>
    		</li>
    		<li id="myNavi4">
    			<a href="javascript:;"><span>회원정보</span></a>
    			<ul>
    				<li>
    					<a href="/mypage/member/deliveryLocationList"><span>배송지 관리</span></a>
    				</li>
    				<li>
    					<a href="/mypage/member/modifyMemberView"><span>회원정보 수정</span></a>
    				</li>
    				<li>
    					<a href="/mypage/member/secessionMemberView"><span>회원탈퇴</span></a>
    				</li>
    			</ul>
    		</li>
    	</ul>
    	</nav>
<main class="contents couponList-wrap" id="contents">

            <div class="location-contents">
                <p class="location">
                    <span>Home</span>
                    <span>마이페이지</span>
                    <span>혜택정보</span>
                    <strong title="현재 위치">쿠폰함</strong>
                </p>
            </div>

            <div class="d_tab02">

                <!-- tab S -->
                <ul class="tab-type01 tab-blockList blockList02">
                    <li class="d_tab02_select on"><a href="javascript:;" data-ga-category="PC_MLB_쿠폰함" data-ga-action="Tab" data-ga-label="사용 가능한 쿠폰">사용 가능한 쿠폰</a></li>
                    <li class="d_tab02_select"><a href="javascript:;" data-ga-category="PC_MLB_쿠폰함" data-ga-action="Tab" data-ga-label="사용완료">사용완료</a></li>
                </ul>
                <!--// tab E -->

                <!-- 사용 가능한 쿠폰 S -->
                <div class="d_tab02_cont" style="display:block;">

                    <!-- table info S -->
                    <div class="tbst-div">
                        <div class="mid fl">
                            <span>전체</span> (<span class="text-color01" id="couponCnt"><!-- 100 --></span>건)
                        </div>
                        <div class="mid fr">
                            <a href="#layerPopupRegCoupon" class="btn fill sm d_layer_open" id="couponRegPop"><span>쿠폰등록</span></a>
                        </div>
                    </div>
                    <!-- //table info E -->

                    <div id="includeCouponList"><!--
                    - 사용 가능한 쿠폰
                    --></div>
                </div>
                <!--// 사용 가능한 쿠폰 E -->

                <!-- 사용완료 / 기간만료 S -->
                <div class="d_tab02_cont">
                    <dl class="period-wrap period-type02">
                        <!-- 기간달력 -->
                        <dt>조회기간</dt>
                        <dd>
                            <a href="#" class="btn sm d_radio_select on" onclick="setMonth('3month');"><span>3개월</span></a>
                            <a href="#" class="btn sm d_radio_select" onclick="setMonth('6month');"><span>6개월</span></a>
                            <input type="text" class="calendar" id="dateStart" value="" readonly><input type="text" class="calendar" id="dateEnd" value="" readonly>
                            <a href="#" class="btn sm" onclick="searchCouponHistList();return false;">검색</a>
                            <p class="calendar-info-txt">시작일로부터 최대 1년 단위로 조회가 가능합니다.</p><!-- 2018-08-13 -->
                        </dd>
                    </dl>

                    <!-- table info S -->
                    <div class="tbst-div">
                        <div class="mid fl">
                            <span>전체</span> (<span class="text-color01" id="couponHistCnt"><!-- 100 --></span>건)
                        </div>
                    </div>
                    <!-- //table info E -->

                    <div id="includeCouponHistList"><!--
                    - 사용완료/기간만료
                    --></div>
                    </div>
                <!--// 사용완료 / 기간만료 E -->

            </div>

            <!-- 쿠폰 발급/사용안내 영역S -->
            <div class="contTxtBox">
                <strong>쿠폰 발급 / 사용</strong>
                <ul class="text-list01">
                    <li>일부 상품은 쿠폰 적용에서 제외될수 있습니다.</li>
                    <li>회원 발급 쿠폰의 내용은 <a href="/mypage/benefit/membershipRateInfo" class="text-color01">회원혜택안내</a>에서 확인하세요.</li>
                    <li>중복불가 쿠폰인 경우 다른 쿠폰과 함께 적용할 수 없습니다.</li>
                    <li>장바구니 쿠폰을 적용한 경우 구매한 상품들의 가격에 비례하여 분할 적용되며, 부분취소/반품 시 분할 할인된 금액을 차감하여 환불됩니다.</li>
                    <li>오프라인 발행한 쿠폰은 쿠폰번호 등록 후 사용해 주세요.</li>
                </ul>
                <strong>쿠폰 소멸</strong>
                <ul class="text-list01">
                    <li>발급 시 부여되는 쿠폰의 사용기간을 따르며, 사용기간이 경과한 쿠폰은 자동으로 소멸됩니다.</li>
                </ul>
            </div>
            <!-- //쿠폰 발급/사용안내 영역E -->

        </main>

    </div>
</div>

<!-- layerpopup - 쿠폰 등록 -->
<article id="layerPopupRegCoupon" class="layer-popup couponRegister-pop">
    <section class="layer-popup-cont" tabindex="0">
        <h2>쿠폰등록</h2>
        <div class="layer-cont scroll">

            <div class="couponRegister-popWrap">

                <!-- 검색S -->
                <div class="mileageFindSrch">
                    <input type="text" id="couponNumber" placeholder="쿠폰번호 입력해주세요." class="input-style02">
                    <a href="javascript:;" class="btn sm" onclick="couponRegister();return false;" data-ga-category="PC_MLB_쿠폰함" data-ga-action="쿠폰등록완료">쿠폰등록</a>
                </div>
                <!-- //검색E -->

                <ul class="text-list02">
                    <li>등록된 쿠폰은 사용 가능한 쿠폰 목록에서 확인할 수 있습니다.</li>
                </ul>

            </div>
        </div>
        <div class="layer-popup-close">
            <button type="button" class="d_layer_close">닫기</button>
        </div>
    </section>
</article>
<!-- //layerpopup - 쿠폰 등록 -->

<script type="text/javascript">

    setMonth("3month");
    var strParams = {'_csrf' : '20c339d0-4d3c-45a9-8054-918681af63bc'};

    $(document).ready(function(){

        // 사용가능쿠폰 조회
        goCouponList();
        // 사용완료/기간만료 조회
        goCouponHistList();

        //쿠폰번호 초기화
        $('#couponRegPop').click(function(){
            $('#couponNumber').val(null);
        });

    });

    // 사용가능쿠폰 조회 function
    function goCouponList(currentPage){
        if(currentPage == ""){
            currentPage = 1;
        }

        strParams = {'_csrf' : '20c339d0-4d3c-45a9-8054-918681af63bc', 'currentPage' : currentPage};

        $.ajax({
            type : "POST",
            async : true,
            url : "/mypage/benefit/include/availableCoupon.ajax",
            data : strParams,
            success : function(data) {
                $('#includeCouponList').html(data);
            },
            error: function(pa_data, status, err) {
                if (pa_data.status == "403") {
                    alert("세션이 만료 되었습니다. 다시 로그인 하시기 바랍니다.");
                    location.reload();
                } else {
                    alert("error forward : "+err+" ,status="+status);
                }
            }
        });
    }

    // 사용완료/기간만료 조회 function
    function goCouponHistList(pageNo){
        if(pageNo == ""){
            pageNo = 1;
        }
        strParams = {'_csrf' : '20c339d0-4d3c-45a9-8054-918681af63bc' , 'dateStart' : $("#dateStart").val() ,'dateEnd' :  $("#dateEnd").val() , 'currentPage' : pageNo};

        $.ajax({
            type : "POST",
            async : true,
            url : "/mypage/benefit/include/doneUsingCoupon.ajax",
            data : strParams,
            success : function(data) {
                $('#includeCouponHistList').html(data);
            },
            error: function(pa_data, status, err) {
                if (pa_data.status == "403") {
                    alert("세션이 만료 되었습니다. 다시 로그인 하시기 바랍니다.");
                    location.reload();
                } else {
                    alert("error forward : "+err+" ,status="+status);
                }
            }
        });
    }

    function setMonth(val){
        // TODO : 달력 스크립트에서 날짜 넣는 형식 확인.

        var addMonth = 0;
        if (val == "3month") {
            addMonth = -3;
        }
        else if (val == "6month") {
            addMonth = -6;
        }

        var today = moment().format('YYYY.MM.DD');
        var fromDate = moment().add(addMonth, 'months').format('YYYY.MM.DD');

        $("#dateStart").val(fromDate);
        $("#dateEnd").val(today);
    }

    // 기간 검색
    function searchCouponHistList() {

        // 날자포맷이 yyyy.mm.dd, yyyy-mm-dd, yyyy/mm/dd에 대응
        var regExp = /[\/.-\s]/g;

        // 조회 기간 계산
        var strStartDate = $("#dateStart").val().replace(regExp, "");
        var startDate = new Date(strStartDate.substr(0,4), '' + (parseInt(strStartDate.substr(4,2)) - 1), strStartDate.substr(6,2));

        // 1년후 계산
        startDate.setYear(startDate.getFullYear() + 1);

        var strEndDate = $("#dateEnd").val().replace(regExp, "");
        var endDate = new Date(strEndDate.substr(0, 4), '' + (parseInt(strEndDate.substr(4, 2)) - 1), strEndDate.substr(6, 2));

        // 조회 기간이 1년 이상일 경우에 메세지 표시
        if (startDate < endDate) {
           	alert('시작일로부터 최대 1년 단위로 조회가 가능합니다.');
            return;
        }

        var regExp = /[\s]/g;

        strParams = {'_csrf' : '20c339d0-4d3c-45a9-8054-918681af63bc' , 'dateStart' : $("#dateStart").val().replace(regExp, "") ,'dateEnd' :  $("#dateEnd").val().replace(regExp, "")};

        $.ajax({
            type : "POST",
            async : true,
            url : "/mypage/benefit/include/doneUsingCoupon.ajax",
            data : strParams,
            success : function(data) {
                $('#includeCouponHistList').html(data);
            },
            error: function(pa_data, status, err) {
                if (pa_data.status == "403") {
                	alert("세션이 만료 되었습니다. 다시 로그인 하시기 바랍니다.");
                    location.reload();
                } else {
                    alert("error forward : "+err+" ,status="+status);
                }
            }
        });
    }

    // 사용완료/기간만료 건수
    function setCouponHistCnt(couponHistCnt){
        $("#couponHistCnt").empty();
        $("#couponHistCnt").append(couponHistCnt);
    }




    // 주문내역상세조회
    function jsOrderInfo(ordNo) {
        location.href ="/mypage/order/"+ordNo+"/view";
    }


    // 쿠폰등록
    function couponRegister(){

        /* 쿠폰입력 시 validate 체크 */
        var cpnNo = $('#couponNumber').val();
        var reCpnNo = cpnNo.replace(/ /gi,'');

        if(cpnNo==null || cpnNo=="") {
            alert("쿠폰번호를 입력해주세요.");
            //alertLayer(MESSAGES['mypage.js.coupon.msg.number.input']);
            return false;
        }

        if(cpnNo.length != reCpnNo.length){
            alert("유효한 쿠폰 번호가 아닙니다. 다시 입력해 주세요.");
            //alertLayer(MESSAGES['mypage.js.coupon.msg.number.mis.type']);
            return false;
        }
        /* //쿠폰입력 시 validate 체크 */


        if(confirm("입력하신 쿠폰을 등록하시겠습니까?")) {

            $.ajax({
                type:"post"
                ,url:"/mypage/benefit/issueCoupon.json"
                ,data : "cpnCrtfcCd=" + $('#couponNumber').val()
                ,dataType: "json"
                ,async : true
                ,beforeSend : function(request) {
                    var csrfToken = $('meta[name="_csrf"]').attr('content') || '';
                    var csrfName = $('meta[name="_csrf_header"]').attr('content') || '';
                    request.setRequestHeader(csrfName, csrfToken);
                }
                ,success : function(data) {
                    $('.d_layer_close').click();

                    if (data.resultMsg === "SUCCES") {
                        alert("쿠폰이 등록되었습니다.\n사용 가능한 쿠폰 목록을 확인해 주세요.");
                        //alertLayer(MESSAGES['mypage.js.coupon.msg.register.success']);
                        goCouponList();
                    } else if (data.resultMsg === "PRM_STAT_STPGE") {
                        alert("존재하지 않는 쿠폰번호입니다.");
                        //alertLayer(MESSAGES['mypage.js.coupon.msg.register.inexistente']);
                        goCouponList();
                    } else if (data.resultMsg === "ISMCBTW_OFF") {
                        alert("존재하지 않는 쿠폰번호입니다.");
                        //alertLayer(MESSAGES['mypage.js.coupon.msg.register.inexistente']);
                        goCouponList();
                    } else if (data.resultMsg === "TOT_ISSU_QTY_EXCESS") {
                        alert("총 발급수량이 초과되었습니다");
                        //alertLayer(MESSAGES['mypage.js.coupon.msg.register.exceed.total']);
                        return false;
                    } else if (data.resultMsg === "IDBY_ISSU_QTY_EXCESS") {
                        alert("발급수량이 초과되었습니다");
                        //alertLayer(MESSAGES['mypage.js.coupon.msg.register.exceed']);
                        return false;
                    } else if (data.resultMsg === "PROSISSU_SN") {
                        alert("이미발급된 쿠폰번호입니다.");
                        //alertLayer(MESSAGES['mypage.js.coupon.msg.register.already.issue']);
                        return false;
                    } else if (data.resultMsg === "SN_EXST_NOT") {
                        alert("존재하지 않는 쿠폰번호입니다.");
                        //alertLayer(MESSAGES['mypage.js.coupon.msg.register.inexistente']);
                        goCouponList();
                    } else if (data.resultMsg === "ADMIN_INQ") {
                        alert("관리자에게 문의해주시기 바랍니다.");
                        //alertLayer(MESSAGES['mypage.js.coupon.msg.register.admin.inquiry']);
                        return false;
                    } else {
                        alert("존재하지 않는 쿠폰번호입니다.");
                        //alertLayer(MESSAGES['mypage.js.coupon.msg.register.inexistente']);
                        goCouponList();
                    }
                }
                ,error : function(xhr) {
                    alert(xhr.responseText || '처리 중 오류가 발생하였습니다. 다시시도해 주세요.');
                }
                ,complete : function(data) {
                }
            });
        }
    }

</script>

<!-- layerpopup - 쿠폰 적용 가능 상품 -->
<div id="layerPopupCouponProductDiv">
</div>
<!-- //layerpopup - 쿠폰 적용 가능 상품 -->
<!--// 컨텐츠 끝 -->
	
	<script>
function doFooterAsk(){
	if(getCookie("__NCP_LOCALE__") == "ko"){	
		jsLinkUrlPost(PATH_LOCALE + '/helpdesk/bundleOrder/list');
	}else{
		jsLinkUrlPost(PATH_LOCALE + '/helpdesk/bundleOrder/new');
		/* var bool = confirm(MESSAGES['common.js.header.msg']);
		
		if(bool){
			changeLocale("ko");
		} */
	}
}

function doFooterCenter(){
	if(getCookie("__NCP_LOCALE__") == "ko"){	
		jsLinkUrlPost(PATH_LOCALE + '/helpdesk');
	}else{		
		var bool = confirm(MESSAGES['footer.js.locale.msg']);
		
		if(bool){
			changeLocale("ko");
		}
	}
}

function doFooterView(){	
	if(getCookie("__NCP_LOCALE__") == "ko"){	
		window.open("https://www.ftc.go.kr/bizCommPop.do?wrkr_no=1538102451&apv_perm_no=2011322016230200086");
	}else{		
		var bool = confirm(MESSAGES['footer.js.locale.msg']);
		
		if(bool){
			changeLocale("ko");
		}
	}
}

function goFamilyUrl(url){
	window.open(url);
}

function goLangUrl(url){
	window.open(url);
}

function goRetailStore(){
	if(getCookie("__NCP_LOCALE__") == "ko"){	
		jsLinkUrlPost(PATH_LOCALE + '/helpdesk/notice/view/99');
	}else if(getCookie("__NCP_LOCALE__") == "en"){		
		jsLinkUrlPost(PATH_LOCALE + '/helpdesk/notice/view/100');
	}else if(getCookie("__NCP_LOCALE__") == "cn"){
		jsLinkUrlPost(PATH_LOCALE + '/helpdesk/notice/view/101');
	}
}

</script>
</html>