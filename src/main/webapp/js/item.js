$(document).ready(function(){

	
//찜 하트 클릭시 
 $(".heart img").toggle(function(){ 
   $(this).attr("src","images/item/heart_hover.png");
 },function(){
   $(this).attr("src","images/item/heart.png");
 });
 
	//스크롤
  $(".items, #notice_wrap").css("opacity","0");
  
	$(window).load(function(){
    $(".items").eq(0).animate({"opacity":"1"});
  });
	
	
	
	$(window).scroll(function(){
	
		if($(this).scrollTop()>900){
			$(".items").eq(1).animate({"opacity":"1"});
		}
		if($(this).scrollTop()>1500){
			$(".items").eq(2).animate({"opacity":"1"});
		}
		if($(this).scrollTop()>2100){
			$(".items").eq(3).animate({"opacity":"1"});
		}
		if($(this).scrollTop()>2900){
			$("#notice_wrap").animate({"opacity":"1"});
		}


	}); //scroll end
  
  
	
}); //end