$(document).ready(function(){
  //현재 페이지 상단메뉴 표시
	$("#mtop > li").children("a").addClass("selm");
  
	//태그추가 상단바 드롭다운메뉴
	$("#top_bar").before("<div class='bg'></div>");
  
	//추가 태그, 상단바 하위메뉴
	$(".bg, .sub").hide();
	$("#mtop").mouseenter(function(){
		$(".bg, .sub").stop().slideDown("fast");
		$("#mtop").append("<p class='line finish'></p>");
	}).mouseleave(function(){
		$(".bg, .sub").stop().slideUp("");
		$("#mtop > p.line, #mtop > p.finish").css("opacity","0");
	});
	$(".bg").mouseover(function(){
		$(this).stop().show();
		$(".sub").stop().show();
	}).mouseout(function(){
		$(this).stop().slideUp();
		$(".sub").stop().hide();
	});
  /*
	//주메뉴 영어 -> 한글
	$("#mtop > li ").mouseover(function(){
		var over1 = $("> a",this).attr("data-atitle");
		$("> a",this).text(over1);
    $("#mtop > li").children("a").removeClass("selm");
	}).mouseout(function(){
		var out1 = $("> a",this).attr("data-btitle"); 
		$("> a",this).text(out1);
    $("#mtop > li").children("a").addClass("selm");
	});
	*/
	/*
	// 퀵메뉴 버튼 이미지 바꾸기
	$(".top_btn1").mouseover(function(){
		$(" > img",this).attr("src","images/top/login_hover.png");
	}).mouseout(function(){
		$(" > img",this).attr("src","images/top/login.png");
	});
	$(".top_btn2").mouseover(function(){
		$(" > img",this).attr("src","images/top/search_hover.png");
	}).mouseout(function(){
		$(" > img",this).attr("src","images/top/search.png");
	});
	
	*/
	//태그추가 로그인 드롭다운메뉴
	$("#quick > ul").before("<div class='community_bg'></div>");
	
	//추가 태그, 로그인 드롭다운메뉴
	$(".community_bg, .btn_sub").hide();
	$(".top_btn1").mouseenter(function(){
		$(".community_bg, .btn_sub").stop().slideDown("fast");
	}).mouseleave(function(){
		$(".community_bg, .btn_sub").stop().slideUp("");
	});
	$(".community_bg").mouseover(function(){
		$(this).stop().show();
		$(".btn_sub").stop().show();
	}).mouseout(function(){
		$(this).stop().slideUp();
		$(".btn_sub").stop().hide();
	});
	
	//태그추가 검색 드롭다운메뉴
	$("#quick > ul").before("<div class='sear_bg'></div>");
	
	//추가 태그, 검색 드롭다운메뉴
	$(".sear_bg, .btn_sub2").hide();
	$(".top_btn2").mouseenter(function(){
		$(".sear_bg, .btn_sub2").stop().slideDown("fast");
	}).mouseleave(function(){
		$(".sear_bg, .btn_sub2").stop().slideUp("");
	});
	$(".sear_bg").mouseover(function(){
		$(this).stop().show();
		$(" .btn_sub2").stop().show();
	}).mouseout(function(){
		$(this).stop().slideUp();
		$(" .btn_sub2").stop().hide();
	});
	
	//상단메뉴고정
	$(window).scroll(function(){
		if($(this).scrollTop() > 10){
			$("#top").addClass("fixed1");
		}else{
			$("#top").removeClass("fixed1");
		}
	});
	
	//up,down 버튼 맨위로 맨아래로 가기
	$(".up_btn").click(function(){
		$("html, body").stop().animate({scrollTop : 0},500);
	});
	$(".down_btn").click(function(){
		$("html, body").stop().animate({scrollTop : 7000},500);
	});
	// w1200 미만일경우 맨위,맨아래 버튼 사라지기
	$(window).resize(function(){
		var w = parseInt($(this).width());
		if(w >= 1200){ //1200초과
			$("body").css("width","100%");
			$(".up_btn, .down_btn").show();
		}else if(w < 1200){ //1024이하
			$("body").css("width","1200px");
			$(".up_btn, .down_btn").hide();
		}else{
			$("body").css("width","100%");
		}
	}).resize();
});//end