$(document).ready(function(){
	
	//고객센터 리스트
	$(".list_li2 div").hide();
	$(".list_li2").toggle(function(){
		//$(".list_li2 div").show();
		$(".list_li2 div:not(:animated)").slideDown();
		$("#list_lia").addClass("sel");
		$(".list_li2 span").text("--");
	},function(){
		$("#list_lia").removeClass("sel");
		$(".list_li2 div:not(:animated)").slideUp();
		$(".list_li2 span").text("+");
	});
	
	//고객서비스
	//문의하기
	$(".service:eq(0)").mouseover(function(){
		$("img",this).attr("src","images/csc/service1_hover.png");
		$("figcaption",this).css({color:"#008480", "border-bottom":"1px solid #008480"});
	}).mouseout(function(){
		$("img",this).attr("src","images/csc/service1.png");
		$("figcaption",this).css({color:"", "border-bottom":""});
	});
	//맞춤서비스
	$(".service:eq(1)").mouseover(function(){
		$("img",this).attr("src","images/csc/service2_hover.png");
		$("figcaption",this).css({color:"#008480", "border-bottom":"1px solid #008480"});
	}).mouseout(function(){
		$("img",this).attr("src","images/csc/service2.png");
		$("figcaption",this).css({color:"", "border-bottom":""});
	});
	//제품관리&수리
	$(".service:eq(2)").mouseover(function(){
		$("img",this).attr("src","images/csc/service3_hover.png");
		$("figcaption",this).css({color:"#008480", "border-bottom":"1px solid #008480"});
	}).mouseout(function(){
		$("img",this).attr("src","images/csc/service3.png");
		$("figcaption",this).css({color:"", "border-bottom":""});
	});
	//기프트 상담
	$(".service:eq(3)").mouseover(function(){
		$("img",this).attr("src","images/csc/service4_hover.png");
		$("figcaption",this).css({color:"#008480", "border-bottom":"1px solid #008480"});
	}).mouseout(function(){
		$("img",this).attr("src","images/csc/service4.png");
		$("figcaption",this).css({color:"", "border-bottom":""});
	});
	
	
	
	//자주찾는 질문 top5
	$(".top5_wrap > dl > dd:not(:first)").hide();
	$(".top5_wrap > dl > dt:first p").addClass("selected");
	
	$(".top5_wrap > dl > dt > p").click(function(){
		$(".top5_wrap > dl > dt > p").removeClass("selected");
		$(this).addClass("selected");
		
		if($(this).parent().next().css("display")=="none"){
			$(".top5_wrap > dl > dd").slideUp("fast");
		}
		$(this).parent().next().slideDown("fast");
		return false;
	});

	
	
});//end








