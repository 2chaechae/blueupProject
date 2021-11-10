<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/min/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/gtm.js?v=20211106192902"></script>

	<meta charset="utf-8">
	<title>MLB 관리자</title>
	<link rel="shortcut icon" type="image/x-icon" href="https://static.mlb-korea.com/pc/static/favicon/favicon.ico" />
	<link rel="icon" type="image/x-icon" href="https://static.mlb-korea.com/pc/static/favicon/favicon.ico" />
	
	<link href="https://static.mlb-korea.com/pc/static/css/swiper.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
	<!-- <link href="https://static.mlb-korea.com/pc/static/css/jquery-ui.1.12.1.css?v=10-7-4-29-2" rel="stylesheet" type="text/css"> -->
	<link href="https://static.mlb-korea.com/pc/static/css/bs.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/cm.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/ly.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/mn.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/dp.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/pd.css?v=10-7-4-29-2" rel="stylesheet" type="text/css">
	<link href="https://static.mlb-korea.com/pc/static/css/od.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/my.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/mb.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/se.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/ev.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/cs.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
	<link href="https://static.mlb-korea.com/pc/static/css/et.css?v=10-7-4-29-2" rel="stylesheet" type="text/css" />
	<script>var PATH_LOCALE = '';</script>
	<script src="https://static.mlb-korea.com/pc/static/js/jquery-ui.min.js"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/min/jsrender-0.9.90.min.js"></script>	
	<script src="https://static.mlb-korea.com/pc/static/js/min/masonry.pkgd.min.js"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/validator.js"></script>	
	<script src="https://static.mlb-korea.com/pc/static/js/min/masonry.pkgd.min.js?v=10-7-4-29-2"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/min/imagesloaded.pkgd.min.js?v=10-7-4-29-2"></script>	
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/sns.js?v=10-7-4-29-2"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/moment.js?v=10-7-4-29-2"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBvRMB27X0JzAxjAUs26Q32tEfw-E0NUng" async defer></script>
	
	<!-- <script src="/static/js/jquery-migrate-1.4.1.js"></script> -->
	<!-- <script src="/static/js/jquery-ui-1.12.1.js"></script> -->
	<script src="https://player.vimeo.com/api/player.js"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/swiper.min.js"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/slick.js?v=10-7-4-29-2"></script>	
	<script src="https://static.mlb-korea.com/pc/static/js/common.js?v=10-7-4-29-2"></script>
	<script src="https://static.mlb-korea.com/pc/static/js/commonFunction.js?v=10-7-4-29-2"></script>	
	
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/member/login.js?v=prod-version-858_20211102145956"></script>
	<script type="text/javascript" src="https://static.mlb-korea.com/pc/static/js/naver/naverLogin_implicit-1.0.2-min.js" charset="utf-8"></script>
	<script type="text/javascript" >var YOUR_CLIENT_ID = 'JlTrvDTlo4qERsv1bY4m';</script>
	<script type="text/javascript" >var KAKAO_CLIENT_ID = 'd4a424c6f042566dc9f227392cfdfe6f';</script>	
	<!-- <script src="https://bizmessage.kakao.com/chat/includeScript"></script> -->

	
	<script type="text/javascript" src="/javascript/message/common_ko.js?v=prod-version-858_20211102145956"></script>
	<script type="text/javascript" src="/javascript/message/footer_ko.js?v=prod-version-858_20211102145956"></script>
	<script type="text/javascript" src="/javascript/message/member_ko.js?v=prod-version-858_20211102145956"></script>
	
	
	
</head>
<body class="body" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<iframe id="hfrADCheck" src="//adcheck.about.co.kr/mad/prd/view?shopid=mlb" scrolling="no" frameborder="0" width="0" height="0" style="display: none;"></iframe>

<div class="wrap" id="wrap">