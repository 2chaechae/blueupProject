$(document).ready(function(){
/*
//banner 동영상
  var x = $("#banner video").get(0);
  $(".play").children("img").css({"opacity":"0.4"});
  $(".play").click(function(){
    x.play(); //실행
    $(".play").children("img").css({"opacity":"0.4"});
    $(".stop").children("img").css({"opacity":"1"});
  });
  $(".stop").click(function(){
    x.pause(); //중지
    $(".stop").children("img").css({"opacity":"0.4"});
    $(".play").children("img").css({"opacity":"1"});
  });

*/
//collection 화살표스크롤
   var li_w =$(".coll li").width();
   var w = li_w*$(".coll li").size()+"px";   
   $(".coll").css("width",w);
   //console.log(w); //2320px
   $(".coll li:last").prependTo(".coll");
   $(".coll").css("margin-left", -290+"px");
   $(".prev > img").css("opacity","");
   $(".prev").click(function(){ // <
      $(".prev > img").css("opacity","0.7");
      $(".coll:not(:animated)")
         .animate({marginLeft:parseInt($(".coll").css("margin-left"))+290+"px"},400,"swing",function(){
         $(".coll li:last").prependTo(".coll");
         $(".coll").css("margin-left", -290+"px");
         $(".prev > img").css("opacity","");
      });
   });
   
   $(".next").click(function(){ // >
      $(".next > img").css("opacity","0.7");
      $(".coll:not(:animated)")
         .animate({marginLeft:parseInt($(".coll").css("margin-left"))-290+"px"},400,"swing",function(){
         $(".coll li:first").appendTo(".coll");
         $(".coll").css("margin-left", -290+"px");
         $(".next > img").css("opacity","");
      });
   });
   
   //collection화살표 마우스 오버시
   $(".prev").mouseover(function(){
      $(".prev > img").css("opacity","0.7");
   }).mouseout(function(){
      $(".prev > img").css("opacity","");
   });
   $(".next").mouseover(function(){
      $(".next > img").css("opacity","0.7");
   }).mouseout(function(){
      $(".next > img").css("opacity","");
   });
   
  //스크롤
/*
   $("#item, #gift > p, #collection > h2").css("opacity","0");
     $("#gift_con, #brand_con, .store, .cs").hide();
   $("#coll_wrap, #brand > p > img, #brand_con, #etc > p > img ").fadeOut(0);

   
   $(window).scroll(function(){
      $(".txt").text(parseInt($(this).scrollTop() )); //임시코드

   
      if($(this).scrollTop()>600){
         $("#item").animate({"opacity":"1"});
      }
       if($(this).scrollTop()>1100){
         $("#gift > p").eq(0).animate({"opacity":"1"});
           $("#gift_con").delay(400).slideDown(400);
      }
       if($(this).scrollTop()>1600){
            $("#collection > h2").animate({"opacity":"1"});
         $("#coll_wrap").delay(300).fadeIn();
      }
      if($(this).scrollTop()>2300){
         $("#brand > p > img").delay(0).fadeIn();
         $("#brand_con").delay(300).fadeIn();
      }
      if($(this).scrollTop()>3000){
         $("#etc > p > img").delay(0).fadeIn();
         $(".store, .cs").delay(500).slideDown();
      }

   }); //scroll end*/
   
}); //end