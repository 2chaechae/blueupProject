$(document).ready(function(){
	
	////스크롤
	$(".ban_con1_img, #ban_con1 > p").fadeOut(0);
	$("#ban_con2 > p:eq(0)").fadeOut(0);
	$("#ban_con2 > p:eq(1), #ban_con2 > p:eq(2)").hide();
	
	$("#identity_wrap > h3").fadeOut(0);
	$(".iden > img").css("opacity","0");
	
	$("#ds_txt").hide();
	$(".ds_img").fadeOut(0);
	
	$("#ht_img > h3").fadeOut(0);
	$("#ht_img > figcaption").fadeOut(0);
	$("#ht_img > figcaption").children("p").fadeOut(0);
	
	
	$(window).load(function(){
		$(".ban_con1_img").fadeIn();
		$("#ban_con1 > p").delay(500).fadeIn();
		$("#ban_con2 > p:eq(0)").delay(1000).fadeIn();
	});
	
	$(window).scroll(function(){
	
		if($(this).scrollTop() > 200){
			$("#ban_con2 > p:eq(1), #ban_con2 > p:eq(2)").slideDown();
			
		}
    if($(this).scrollTop() > 1000){
			$("#identity_wrap > h3").fadeIn(200);
		}
		if($(this).scrollTop() > 1150){
			$(".iden1 > img").animate({"opacity":"1"},800);
			$(".iden1_txt").children(".iden_num").animate({marginLeft:"0"},500);
			$(".iden1_txt").children("h4").animate({marginLeft:"0"},600);
			$(".iden1_txt").children("p:eq(1)").animate({marginLeft:"0"},800);
		}
		if($(this).scrollTop() > 1800){
			$(".iden2 > img").animate({"opacity":"1"},800);
			$(".iden2_txt").children(".iden_num").animate({marginLeft:"0"},500);
			$(".iden2_txt").children("h4").animate({marginLeft:"0"},600);
			$(".iden2_txt").children("p:eq(1)").animate({marginLeft:"0"},800);
		}
		if($(this).scrollTop() > 2600){
			$(".iden3 > img").animate({"opacity":"1"},800);
			$(".iden3_txt").children(".iden_num").animate({marginLeft:"0"},500);
			$(".iden3_txt").children("h4").animate({marginLeft:"0"},600);
			$(".iden3_txt").children("p:eq(1)").animate({marginLeft:"0"},800);
		}
		if($(this).scrollTop() > 3000){
			$(".iden4 > img").animate({"opacity":"1"},800);
			$(".iden4_txt").children(".iden_num").animate({marginLeft:"0"},500);
			$(".iden4_txt").children("h4").animate({marginLeft:"0"},600);
			$(".iden4_txt").children("p:eq(1)").animate({marginLeft:"0"},800);
		}
		if($(this).scrollTop() > 3700){
			$("#ds_txt").slideDown(1000);
			$(".ds_img:eq(0)").delay(300).fadeIn();
			$(".ds_img:eq(1)").delay(500).fadeIn();
			$(".ds_img:eq(2)").delay(700).fadeIn();
		}
		if($(this).scrollTop() > 4400){
			$("#ht_img > h3").fadeIn();
			$("#ht_img > figcaption").delay(300).fadeIn();
			$("#ht_img > figcaption").children("p:eq(0)").delay(300).slideDown();
			$("#ht_img > figcaption").children("p:eq(1)").delay(600).slideDown();
			$("#ht_img > figcaption").children("p:eq(2)").delay(1000).slideDown();
			
		}
	}); // scroll end
}); //end