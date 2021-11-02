$(document).ready(function(){

//찜 하트 클릭시
 $(".heart img").toggle(function(){ 
   $(this).attr("src","images/item/heart_hover.png");
 },function(){
   $(this).attr("src","images/item/heart.png");
 });
	
	
// best gift 화살표 클릭시 이동	
	var i=0;
	var num=$(".item").length;//.size()
	
	
	$(".prev").css({"opacity":"0.6"});
	//console.log(num);
	$(".prev").click(function(){ // <
		if(i>0){
			$(".next").css({"opacity":"1"});
			i--;
			var move = -990*i;
			//console.log(i);
			$(".gift_item").stop().animate({left:move},500);
			$(".prev").css({"opacity":"0.6"});
		}else{
			return false;
		}
	});
	
	$(".next").click(function(){ // >
		if(i<1){
			$(".prev").css({"opacity":"1"});
			i++;
			var move = -990*i;
			//console.log(i);
			$(".gift_item").stop().animate({left:move},500);
			$(".next").css({"opacity":"0.6"});
		}else{
			return false;
		}
	});	
	
	//스크롤
  $("#best, #rec_wrap, #ser_wrap").css("opacity","0");
  
	$(window).load(function(){
    $("#best").animate({"opacity":"1"});
  });
	
	$(window).scroll(function(){
	
		if($(this).scrollTop()>800){
			$("#rec_wrap").animate({"opacity":"1"});
		}
		if($(this).scrollTop()>1600){
			$("#ser_wrap").animate({"opacity":"1"});
		}
		
	}); //scroll end
  
  
  
	
}); //end