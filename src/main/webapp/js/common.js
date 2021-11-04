//dropdown
var dropdown = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventWrap: '.d_dropdown'
    },
    bindEvt: function() {
        var _this = this;
        $(document).on('click','.d_dropdown .d_dropdown_sel', function(e) {
            e.preventDefault();
            _this.toggle(e);
        });

        $(document).on('click','.d_dropdown .d_dropdown_close', function(e) {
            e.preventDefault();
            _this.close(e);
        });
    },
    toggle: function(e) {
        if ($(e.target).parents(this.eventObj.eventWrap).hasClass('on')) {
            $(e.target).parents(this.eventObj.eventWrap).removeClass('on');
        }else {
            $(this.eventObj.eventWrap).removeClass('on');
            $(e.target).parents(this.eventObj.eventWrap).addClass('on');
        }
    },
    close: function(e) {
        if (!$(e).parents().is(this.eventObj.eventWrap)) {
            $(this.eventObj.eventWrap).removeClass('on');
        }
    }
};

//dropdown02
var dropdown02 = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventWrap: '.d_dropdown02'
    },
    bindEvt: function() {
        var _this = this;
        $(_this.eventObj.eventWrap).on('click','.d_dropdown02_sel', function(e) {
            e.preventDefault();
            _this.toggle(e);
        });

        $(_this.eventObj.eventWrap).on('click','.d_dropdown02_close', function(e) {
            e.preventDefault();
            _this.close(e);
        });
    },
    toggle: function(e) {
        $(this.eventObj.eventWrap).removeClass('on');
        $(e.target).parents(this.eventObj.eventWrap).addClass('on');
    },
    close: function(e) {
        if (!$(e).parents().is(this.eventObj.eventWrap)) {
            $(this.eventObj.eventWrap).removeClass('on');
        }
    }
};

//dropdown03
var dropdown03 = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventWrap: '.d_dropdown03'
    },
    bindEvt: function() {
        var _this = this;
        $(document).on('mouseenter','.d_dropdown03_sel', function(e) {
            e.preventDefault();
            _this.show(e);
        });

        $(document).on('mouseleave', this.eventObj.eventWrap, function(e) {
            e.preventDefault();
            _this.hide(e);
        });
    },
    show: function(e) {
        if (!$(e.target).parents(this.eventObj.eventWrap).hasClass('on')) {
            $(e.target).parents(this.eventObj.eventWrap).addClass('on');
        }
    },
    hide: function(e) {
        if ($(e.target).parents(this.eventObj.eventWrap).hasClass('on')) {
            $(e.target).parents(this.eventObj.eventWrap).removeClass('on');
        }
    }
};

//search
var search = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventWrap: '.d_search'
    },
    bindEvt: function() {
        var _this = this;
        $(document).on('click','.d_search .d_search_sel', function(e) {
            e.preventDefault();
            _this.toggle(e);
        });
    },
    toggle: function(e) {
        $(e.target).parents(this.eventObj.eventWrap).addClass('on').find('input').focus();
    },
    close: function(e) {
        if (!$(e).parents().is(this.eventObj.eventWrap)) {
            $(this.eventObj.eventWrap).removeClass('on');
        }
    }
};

//tab
var tab = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventWrap: '.d_tab'
    },
    bindEvt: function() {
        var _this = this;
        $(_this.eventObj.eventWrap).on('click','a, span', function(e) {
            //e.preventDefault();
            _this.toggle(e);
        });
    },
    toggle: function(e) {
        $(e.target).parents('li').addClass('on').siblings().removeClass('on');
    }
};

//tab02
var tab02 = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventWrap: '.d_tab02'
    },
    bindEvt: function() {
        var _this = this;
        $(_this.eventObj.eventWrap).on('click','.d_tab02_select a', function(e) {
            //e.preventDefault();
            _this.toggle( $(this) );
        });
    },
    toggle: function(els) {
        els.parents('li').addClass('on').siblings().removeClass('on');
        els.closest(".d_tab02").find('.d_tab02_cont').eq(els.parents('li').index()).show().addClass('on').siblings('.d_tab02_cont').hide().removeClass('on');
        layoutFix.init();
    }
};


//tab03
var tab03 = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventWrap: '.d_tab03'
    },
    bindEvt: function() {
        var _this = this;
        $(_this.eventObj.eventWrap).on('click','.d_tab03_select a', function(e) {
            //e.preventDefault();
            _this.toggle(e);
        });
    },
    toggle: function(e) {
        $(this.eventObj.eventWrap).find('.d_tab03_cont').hide();
        $($(e.target).attr('href')).show();
    }
};

var tabNav = { //탭형식컨텐츠
	init:function(){
		var uiTabNav = $(".uiTabNav:not([data-ui*='link'])");
		this.using();
	},
	set:function(id){
		if(id){
			$(".uiTabNav>li>a[href='#"+id+"']").closest("li").addClass("active").siblings("li").removeClass("active");
			$(".uiTabNav>li>label>input[type='radio'][data-href='#"+id+"']").attr("checked",true).closest("li").addClass("active").siblings("li").removeClass("active");
			//console.log(id);
			$("#"+id).addClass("active").siblings(".panel").removeClass("active");
		}

	},
	using:function(){

		$(document).on('click',".uiTabNav:not([data-ui*='link'])>li>a", function(e){
			$(this).closest("li").addClass("active").siblings("li").removeClass("active");
			var thisId = $(this).attr("href");
			// console.log( thisId.indexOf("#") );
			if(thisId.indexOf("#") > -1) {
				$(thisId).addClass("active").siblings(".panel").removeClass("active");
				e.preventDefault();
			}
		});	

		$(document).on('change',".uiTabNav>li input[type='radio']", function(e){
			$(this).closest("li").addClass("active").siblings("li").removeClass("active");
			var thisId = $(this).attr("data-href");
			//console.log(thisId);
			$(thisId).addClass("active").siblings(".panel").removeClass("active");
			e.preventDefault();
		});
	}
}

//scrollTab
// 20210728
var scrollTab = {
    init: function() {
        this.lastIndex = -1;
        this.currentIndex = -1;

        // 상품상세
        if ($('#contain').is('.pd, .goods')) {
            this.isDetail = true;
        }
        this.bindEvt();
    },
    eventObj: {
        eventWrap: '.d_scroll_tab'
    },
    bindEvt: function() {
        var _this = this;

        if ($(_this.eventObj.eventWrap).length > 0) {
            $(_this.eventObj.eventWrap).on('click','a',function(e) {
                _this.currentIndex = $(this).parent().index();
                var dir;
                if ($(this).parent().index() > _this.lastIndex) {
                    dir = 'down';
                }
                else {
                    dir = 'up';
                }
                _this.move(e, dir);
                _this.lastIndex = $(this).parent().index();
                e.preventDefault();
            });

            _this.toggle();

            $('#wrap').scroll(function(){
                 _this.toggle();
            });
        }
    },
    move: function(e, dir) {
        var _this = this;

        if (_this.isDetail) {
            if (dir === 'up') {
                
                $('#wrap').animate({
                    scrollTop: $($(e.target).attr('href')).offset().top + $('#wrap').scrollTop() - 55
                }, 20, function() {
                    
                });
                
            }
            else {
                $('#wrap').animate({
                    scrollTop: $($(e.target).attr('href')).offset().top + $('#wrap').scrollTop() + 5
                }, 20, function() {
                    
                });
            }
        }
        else {
            $('#wrap').scrollTop($($(e.target).attr('href')).offset().top + $('#wrap').scrollTop() - 105);
        }
    },
    toggle: function() {
        var _this = this;
        $(_this.eventObj.eventWrap).find('li').each(function() {

            if (_this.isDetail) {

                if ($('body').is('.scroll-up')) {
                    if ($('#wrap').scrollTop() >= $($(this).find('a').attr('href')).offset().top + $('#wrap').scrollTop() - 60) {
                        $(this).addClass('on').siblings().removeClass('on');
                    }
                }
                else {
                    if ($('#wrap').scrollTop() >= $($(this).find('a').attr('href')).offset().top + $('#wrap').scrollTop()) {
                        $(this).addClass('on').siblings().removeClass('on');
                    }
                }
                
            }
            else {
                if ($('#wrap').scrollTop() >= $($(this).find('a').attr('href')).offset().top + $('#wrap').scrollTop() - 110) {
                    $(this).addClass('on').siblings().removeClass('on');
                }
    
            }
        });
    }
};


//accordion
var accordion = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventWrap: '.d_accordion'
    },
    bindEvt: function() {
        var _this = this;
        $(document).on('click','.d_accordion_select', function(e) {
            e.preventDefault();
            _this.toggle(e);
        });
    },
    toggle: function(e) {
        if ($(e.target).parents('tr,li').hasClass('on')) {
            $(e.target).parents('tr,li').removeClass('on');
        }else {
            $(e.target).parents('tr,li').addClass('on').siblings().removeClass('on');
        }
        if ($('#quickMenuList01').length > 0) {
            quickMenuList01.update();
            quickMenuList02.update();
        }
    }
};

//select
var select = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventWrap: '.d_select'
    },
    bindEvt: function() {
        var _this = this;
        $(document).on('click','.d_select_sel', function(e) {
            e.preventDefault();
            _this.toggle(e);
        });
        $(document).on('click','.d_select ul li a', function(e) {
            e.preventDefault();
            _this.selected(e);
        });
    },
    toggle: function(e) {
        var itemLen = $(e.currentTarget).parents('.d_select').find('li').length,
            contHeight,
            contScrollTop;
        if ($(e.currentTarget).parents('.d_select').hasClass('on')) {
            $(e.currentTarget).parents('.d_select').toggleClass('on');
        }else {
            $(this.eventObj.eventWrap).removeClass('on select-style01-up select-style01-down');
            $(e.currentTarget).parents().each(function() {
                if ($(this).css('overflow-y') == 'scroll') {
                    contHeight = $(this).height() - (event.clientY - $(this).offset().top);
                    contScrollTop = $(this).scrollTop() + (event.clientY - $(this).offset().top);
                }else {
                    contHeight = window.innerHeight - event.clientY;
                    contScrollTop = $(window).scrollTop() + event.clientY;
                }
                 if (contHeight < $(e.currentTarget).height()*(itemLen + 1) && contScrollTop > $(e.currentTarget).height()*(itemLen + 1)) {
                    $(e.currentTarget).parents('.d_select').addClass('select-style01-up');

                }else {
                    $(e.currentTarget).parents('.d_select').addClass('select-style01-down');
                }
            });
            $(e.currentTarget).parents('.d_select').toggleClass('on');
        }
    },
    selected : function(e) {
       if(!$(e.currentTarget).hasClass('d_no_option')) {
          $(e.currentTarget).parents('.d_select').find('button > span').html($(e.currentTarget).html());
       }else {
          $(e.currentTarget).parents('.d_select').find('button > span').html('선택하세요');
       }
       $(e.currentTarget).removeClass('d_no_option')
        $(e.currentTarget).parents('.d_select').removeClass('on select-style01-up select-style01-down');
    },
    close: function(e) {
        if (!$(e).parents().is(this.eventObj.eventWrap)) {
            $(this.eventObj.eventWrap).removeClass('on select-style01-up select-style01-down');
        }
    }
};

//layerpopup
var layerTarget;
var layerPopup = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventOpen: '.d_layer_open',
        eventClose: '.d_layer_close'
    },
    bindEvt: function() {
        var _this = this;
        $(document).on('click',_this.eventObj.eventOpen, function(e) {
            e.preventDefault();
            layerTarget = $(this);
            _this.popupOpen(e);
        });
        $(document).on('click',_this.eventObj.eventClose, function(e) {
            e.preventDefault();
            _this.popupClose(e);
        });


        // 레이어팝업 딤영역 클릭시 닫힘
        $(document).on('click',".layer-popup", function(e) {
            // console.log( $(e.target) );
            if ( $(e.target).is(".layer-popup") ){
                $(this).closest(".layer-popup").hide();
                 $('.contain').off('scroll touchmove mousewheel');
            }
        });



    },
    popupOpen: function(e) {
        //$('.layer-popup').hide();
        var layerId = $(e.currentTarget).attr('href');
        if(!$(layerId).hasClass('inlayer')){  $('.layer-popup').hide(); } // 여러 layer 띄우기 수정 2018.11.30
        $(layerId).css('display','block').find('.layer-popup-cont').focus();

        $('.contain').on('scroll touchmove mousewheel', function(event) {
            event.preventDefault();
            event.stopPropagation();
            return false;
        });
        $("body").addClass("isPopLayer");
    },
    popupOpenNow: function(e) {
        //$('.layer-popup').hide();
        var layerId = e;
        if(!$(layerId).hasClass('inlayer')){  $('.layer-popup').hide(); } // 여러 layer 띄우기 수정 2018.11.30
        var layerDisplay = 'inline-block';
        if(!$(layerId).hasClass('scrollOk')){
        	layerDisplay = 'block';
	        $('.contain').on('scroll touchmove mousewheel', function(event) {
	            event.preventDefault();
	            event.stopPropagation();
	            return false;
	        });
        }
        $(layerId).css('display','block').find('.layer-popup-cont').focus();
        $("body").addClass("isPopLayer");
    },
    popupClose: function(e) {
        var layerId = $(e.target).parents('.layer-popup').attr('id');
        if (layerTarget != undefined) {
            layerTarget.focus();
        }
        $(e.target).parents('.layer-popup').hide();

        $('.contain').off('scroll touchmove mousewheel');
        $("body").removeClass("isPopLayer");
    },
    popupCloseNow: function(id) {
        var layerId = id;
        $(id).hide();
        $('.contain').off('scroll touchmove mousewheel');
        $("body").removeClass("isPopLayer");
    },
    close: function(e) {
    }
};

//layoutFix
var scrollLeft = 0;
var layoutFix = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventWrap: '.d_fix'
    },
    bindEvt: function() {
        var _this = this;

        if ($(_this.eventObj.eventWrap).length > 0) {
             _this.fixed();

            $('#wrap').scroll(function(){
                _this.fixed();
            });
            $(window).scroll(function(){
                scrollLeft = -this.scrollX;

                return scrollLeft;
            });
        }
    },
    fixed: function() {
        var _this = this,
            scrollLeft = -$(window).scrollLeft();
        $(_this.eventObj.eventWrap).each(
            function() {
                // 20210728 
                // 상품상세
                if ($('#contain').is('.pd, .goods')) {
                    var standThis = $(this),
                    standThisH = standThis.find('.d_fix_obj').height(),
                    fixLeft = standThis.offset().left;

                    if ($('#wrap').scrollTop() > standThis.offset().top + $('#wrap').scrollTop() - parseInt(standThis.find('.d_fix_obj').css('top'))) {

                        standThis.addClass('d_fix_on');
                        standThis.find('.d_fix_obj').css('position', 'fixed');
                        standThis.find('.d_fix_obj').css('left',fixLeft + scrollLeft);

                        $(window).resize(function() {
                            fixLeft = standThis.offset().left;
                            standThis.find('.d_fix_obj').css('position', 'fixed');
                            standThis.find('.d_fix_obj').css('left',fixLeft + scrollLeft);
                        });
                    }else {
                        standThis.removeClass('d_fix_on');
                        standThis.find('.d_fix_obj').css('position', 'static');
                    }
                    $(window).resize(function() {
                        if ($('#wrap').scrollTop() > standThis.offset().top + parseInt(standThis.find('.d_fix_obj').css('top'))) {
                            fixLeft = standThis.offset().left;
                            standThis.find('.d_fix_obj').css('position', 'fixed');
                            standThis.find('.d_fix_obj').css('left',fixLeft + scrollLeft);
                        }
                    });

                }
                else {

                    var standThis = $(this),
                    standThisH = standThis.find('.d_fix_obj').height(),
                    fixLeft = standThis.offset().left;
                    if ($('#wrap').scrollTop() > standThis.offset().top + $('#wrap').scrollTop() + parseInt(standThis.find('.d_fix_obj').css('top'))) {

                        standThis.addClass('d_fix_on');
                        standThis.find('.d_fix_obj').css('position', 'fixed');
                        standThis.find('.d_fix_obj').css('left',fixLeft + scrollLeft);
                        //standThis.find('.d_fix_obj').width(parseInt(standThis.width())); // mod 2018-11-20

                        if ($('.orderInfoArea').outerHeight(true) - standThis.find('.d_fix_obj').outerHeight(true) + 260 < $('#wrap').scrollTop()) { // mod 2018-11-20
                            standThis.find('.d_fix_obj').css('top',($('.orderInfoArea').outerHeight(true) - standThis.find('.d_fix_obj').outerHeight(true)) - $('#wrap').scrollTop() + 260); // mod 2018-11-20
                        }else {
                            // standThis.find('.d_fix_obj').css('top', '0');
                        }

                        $(window).resize(function() {
                            fixLeft = standThis.offset().left;
                            //standThis.find('.d_fix_obj').width(parseInt(standThis.width()));  // mod 2018-11-20
                            standThis.find('.d_fix_obj').css('position', 'fixed');
                            standThis.find('.d_fix_obj').css('left',fixLeft + scrollLeft);
                        });
                    }else {
                        standThis.removeClass('d_fix_on');
                        standThis.find('.d_fix_obj').css('position', 'static');
                    }
                    $(window).resize(function() {
                        if ($('#wrap').scrollTop() > standThis.offset().top + parseInt(standThis.find('.d_fix_obj').css('top'))) {
                            fixLeft = standThis.offset().left;
                            //standThis.find('.d_fix_obj').width(parseInt(standThis.width())); // mod 2018-11-20
                            standThis.find('.d_fix_obj').css('position', 'fixed');
                            standThis.find('.d_fix_obj').css('left',fixLeft + scrollLeft);
                        }else {
                            standThis.find('.d_fix_obj').css('position', 'static');
                        }
                    });

                }
                //end
            }
        );
    }
};

//radioSelect
var radioSelect = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventSel: '.d_radio_select'
    },
    bindEvt: function() {
        var _this = this;
        $(_this.eventObj.eventSel).not(':disabled').on('click', function(e) {
            e.preventDefault();
            _this.objToggle(e);
        });
    },
    objToggle: function(e) {
        $(e.currentTarget).addClass('on').siblings(this.eventObj.eventSel).removeClass('on');
    }
};

//iconToggle
var iconToggle = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventCont: '.d_icon_toggle'
    },
    bindEvt: function() {
        var _this = this;
        $(_this.eventObj.eventCont).on('click', function(e) {
            e.preventDefault();
            _this.objToggle(e);
        });
    },
    objToggle: function(e) {
        $(e.currentTarget).toggleClass('on');
    }
};

//toggleBtn
var toggleBtn = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventCont: '.d_toggle_btn'
    },
    bindEvt: function() {
        var _this = this;
        $(_this.eventObj.eventCont).on('click','button', function(e) {
            e.preventDefault();
            _this.objToggle(e);
        });
    },
    objToggle: function(e) {
        if ($(e.currentTarget).hasClass('d_toggle_on')) {
            $(e.currentTarget).parents('.d_toggle_btn').find('.d_toggle_on').hide();
            $(e.currentTarget).parents('.d_toggle_btn').find('.d_toggle_off').show();
        }else {
            $(e.currentTarget).parents('.d_toggle_btn').find('.d_toggle_off').hide();
            $(e.currentTarget).parents('.d_toggle_btn').find('.d_toggle_on').show();
        }
    }
};

//toggleHover
var toggleHover = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventCont: '.d_toggle_hover'
    },
    bindEvt: function() {
        var _this = this;
        $(_this.eventObj.eventCont).on('mouseenter focusin','.d_toggle_hover_sel', function(e) {
            e.preventDefault();
            _this.objToggleOn(e);
        });
        $(_this.eventObj.eventCont).on('mouseleave', function(e) {
            e.preventDefault();
            _this.objToggleOff(e);
        });
    },
    objToggleOn: function(e) {
        $(e.currentTarget).parents(this.eventObj.eventCont).addClass('on').find('.d_toggle_hover_cont').focus();
    },
    objToggleOff: function(e) {
        $(e.currentTarget).removeClass('on');
    }
};


//toggle
var toggle = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventCont: '.d_toggle',
        eventSel: '.d_toggle_select'
    },
    bindEvt: function() {
        var _this = this;
        $(_this.eventObj.eventSel).on('click', function(e) {
            e.preventDefault();
            _this.objToggle(e);
        });
    },
    objToggle: function(e) {
        $(e.target).parents(this.eventObj.eventCont).eq(0).toggleClass('on');
    }
};

//starScore
var starScore = {
    init: function() {
        this.bindEvt();
    },
    eventObj: {
        eventCont: '.d_star_score'
    },
    bindEvt: function() {
        var _this = this;
        $(document).on('click','.d_star_score .d_score_sel', function(e) {
            e.preventDefault();
            _this.objToggle(e);
        });
    },
    objToggle: function(e) {
        // $(e.currentTarget).toggleClass('on');
        $(e.currentTarget).parents('.d_star_score').find('.d_score_sel').removeClass('on');
        for (var i = 0; i < $(e.currentTarget).index() + 1; i++) {
            $(e.currentTarget).parents('.d_star_score').find('.d_score_sel').eq(i).addClass('on');
        }
    }
};

var globalClose = {
    init: function() {
        this.bindEvt();
    },
    bindEvt: function() {
        $('html').on('click', this.closeAll);
    },
    closeAll: function(e) {
        dropdown.close(e.target);
        //search.close(e.target);
        select.close(e.target);
        // gnbType02.close(e.target);
    }
};

var flexBanner = {
	swiper:null,
	init:function(){
		var _this = this;
		if($(".flexBanner").length && $(".flexBanner").css('display') == 'block') {
			_this.swiper = new Swiper('.flexBanner .swiper-container', {
				effect:'fade',
				autoplay:true,
				speed:800
			});

			$('.flexBanner .swiper-slide').on('mouseover', function() {
				_this.swiper.autoplay.stop();
			});
			  
			$('.flexBanner .swiper-slide').on('mouseout', function() {
			    _this.swiper.autoplay.start();
			});
		}else{
			
		}
	}
}

// 20210126 EOSD-3029 검색 개선
var search_layer = (
    function search_layer($) {

		var Public = {
			/**
			 * @param {string} target : swiper 적용 selector
			 */
            swiper: function (target) {
                var swiper = null;

                $('body').off('search').on('search', function(e, param){
                    // open
                    if (param) {
                        swiper = new Swiper(target, {
                            autoplay: {
                              delay: 3000  
                            },
                            slidesPerView: 2,
                            observer: true,
                            observeParents: true,
                            loop : true
                        });

                        $('.gb_sch_column').off('mouseenter.search').on('mouseenter.search', '.swiper-container', function(){
                            swiper.autoplay.stop();
                        });
        
                        $('.gb_sch_column').off('mouseleave.search').on('mouseleave.search', '.swiper-container', function(){
                            swiper.autoplay.start();
                        });
                    }
                    else {
                        if (swiper) {
                            swiper.destroy(true, true);
                            swiper = null;
                        }
                    }
                });

                $(document).off('visibilitychange.swiper').on('visibilitychange.swiper', function(){
                    //문서 가시성 체크
                    // console.log(document.hidden)
                });
               
            },
            keywordRolling: function () {
                var $context = $('.gb_sch_box');
                var $list = $context.find('.rolling-list');
                var $list_wrap = $context.find('.rolling-list-wrap');
                var list_len = $list.find('> li').length;
                var first_li = $list.find('> li:eq(0)');
                var li_h = first_li.height();
                var ul_h = li_h * $list.find('> li').length;
                var tmp_html = first_li[0].outerHTML;
                var sum_top = 0;
                var timer = 0;
                var roll_reset = function() {
                    $list.css('transition', '');
                    $list.css('margin-top', '0');
                    sum_top = 0;
                }
                var roll_up = function(){
                    if (list_len < 2) return;

                    sum_top -= li_h;
                    $list.css('margin-top', sum_top + 'px');
                    // $list.css('transition', 'margin .5s');
                    $list.css('transition', '');
                    setTimeout(function(){
                        if (sum_top <= ul_h * -1) {
                            roll_reset();
                        }
                    }, 500);
                };
                
                $list.append(tmp_html);

                timer = setInterval(roll_up, 3000);
                
                $list_wrap.off('click.search').on('click.search', function(){
                    var $this = $(this);
                    $this.hide();
                    $context.find('.key').focus();
                });

                $context.off('input.search', '.key').on('input.search', '.key', function(){
                    var $this = $(this);
                    $this.focus();
                    $list_wrap.hide();
                });

                $context.off('focusout.search', '.key').on('focusout.search', '.key', function(){
                    var $this = $(this);

                    if($this.val().trim() === '') {
                        clearInterval(timer);
                        $list_wrap.show();
                        timer = setInterval(roll_up, 3000);
                    }
                });
            }
        };

        $(function(){
            $(document)
            .off('click.search', '.gb_sch_box .btnClose')
            .on('click.search', '.gb_sch_box .btnClose', function(e){
                $('body').trigger('search', null);
                $(".body").removeClass("schOn");
                e.preventDefault();
            });

            $('body').on('search', function(e, param){
                // open
                if (param) {
                    // Public.swiper('.gb_sch_column .swiper-container:not(.swiper-container-horizontal)');
                }
                else {
                }
            });
        });
       
        // finally
        return Public;
    }

)(window.jQuery);

// 20210319 메인 개편 start
var yscroll = (
    function yscroll($) {

		var Public = {
			/**
			 * @param {function} fn : callback 함수
			 */
            bind: function (fn) {

                // 기획전은 제외
                if ($('.contain.dp.promo.view').length) {
                    $('body').addClass('scroll-up');
                    return;
                }

                var wrap = document.getElementById('wrap');
                // var lastScrollTop = window.pageYOffset || document.documentElement.scrollTop;
                var lastScrollTop = wrap.scrollTop;
                var timer = 0;
        
                $('#wrap').on('scroll.yscroll', function (e) {
        
                    // var scrollTop = window.pageYOffset || document.documentElement.scrollTop;
                    var scrollTop = wrap.scrollTop;
        
                    // if (scrollTop >= document.documentElement.scrollHeight - window.innerHeight){
                    if (scrollTop >= wrap.scrollHeight - wrap.offsetHeight){                        
                        dir = 'bottom';
                    }
                    else if (scrollTop <= 0) {
                        dir = 'top';
                    }
                    else if (scrollTop > lastScrollTop) {
                        dir = 'down';
                    }
                    else if (scrollTop < lastScrollTop) {
                        dir = 'up';
                    }
                    else {
                        dir = 'stop';
                    }
        
                    // console.log(dir)
                    setBody(dir);
                    
                    lastScrollTop = scrollTop <= 0 ? 0 : scrollTop;
        
                    fn && fn.call(this, e, dir);

                    // if(timer !== 0) {
                    //     clearTimeout(timer);        
                    // }
                    // timer = setTimeout(function() {
                    //     setBody('stop');
                    // }, 0);

                });
        
                function setBody (arg) {
                    var classlist = document.querySelector('body').classList;
                    classlist.remove("scroll-top", "scroll-bottom", "scroll-up", "scroll-down", "scroll-stop");
                    classlist.add("scroll-" + arg);
                }
        
            }
        };

        // finally
        return Public;
    }
)(window.jQuery);

var header = (
    function header($) {

		var Public = {
			/**
			 * @param 
			 */
            gnb: function () {

                var $context = $('#gnbMenu');
               
                // $(".menu > ul > li", $context).hover(function(e) {
                //     $(this).children(".pan").stop(true, false).fadeToggle(0);
                //     e.preventDefault();
                // });

                $(".menu > ul > li", $context).on('mouseenter', function(){
                    $(this).children(".pan").addClass('active');
                });

                $(".menu > ul > li", $context).on('mouseleave', function(){
                    $(this).children(".pan").removeClass('active');
                });

                $context.on('mouseenter', function(){
                    $(this).addClass('opened');
                });

                $context.on('mouseleave', function(){
                    $(this).removeClass('opened');
                });

            }
        };

        // finally
        return Public;
    }
)(window.jQuery);

var main = (
    function main($) {

		var Public = {
			/**
			 * @param 
			 */
            visual: function () {

                var $context = $('#main_visual');
                var $btnNav = $context.find('.navigation .btnNav');
                var totalcount = $context.find('.main_slider > li').length;

                if ($btnNav.find('.count').length) $btnNav.find('.count').remove();
                $btnNav.append('<span class="count"><em class="current">1</em> <em class="char">/</em> <em class="total">' + totalcount + '</em></span>');
               
                $(".main_slider", $context).slick({
                    autoplay: true,
                    autoplaySpeed: 4000,
                    dots: true,
                    prevArrow: $('#main_visual .btnNav.prev'),
                    nextArrow: $('#main_visual .btnNav.next'),
                });

                $(".main_slider", $context).on('beforeChange', function(event, slick, currentSlide, nextSlide){
                    $btnNav.find('.current').text(nextSlide + 1)
                });

            },
            arrival: function () {

                var $context = $('.main-section.new_arr');

                $('.arrival_list', $context).slick({
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    speed: 200,
                    arrows: false,
                    // fade: true,
                    asNavFor: '.main-section.new_arr .cate_list'
                 });

                 $('.cate_list', $context).slick({
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    speed: 200,
                    asNavFor: '.main-section.new_arr .arrival_list',
                    dots: false,
                    arrows: false,
                    variableWidth: true,
                    focusOnSelect: true
                });

            },
            ranking: function () {

                var $context = $('.main-section.rank');
               
                $('.ranking_list', $context).slick({
                    autoplay: true,
                    autoplaySpeed: 5000,
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    speed: 200,
                    dots: false,
                    prevArrow: $('.main-section.rank .btnNav.prev'),
                    nextArrow: $('.main-section.rank .btnNav.next'),
                    asNavFor: '.main-section.rank .cate_list'
                 });

                 $('.cate_list', $context).slick({
                    slidesToShow: 6,
                    slidesToScroll: 1,
                    speed: 200,
                    asNavFor: '.main-section.rank .ranking_list',
                    dots: false,
                    arrows: false,
                    variableWidth: true,
                    focusOnSelect: true
                });

            },
            collection: function () {

                var $context = $('.main-section.collection');

                // $('.item_list', $context).each(function(){
                //     var $this = $(this);

                //     $this.slick({
                //         variableWidth: true,
                //         dots: true,
                //         arrows: true
                //     });
                // });

                setSlide($context.find('.collection_wrap.active .goods')[0]);

                // tab
                $(".tab_btn > div", $context).on('click', function(){
                    var $index = $(this).index();

                    $(".tab_btn > div").removeClass("active");
                    $(this).addClass("active");

                    $(".tab_box > div").fadeOut(0);
                    $(".tab_box > div").eq($index).fadeIn(500);

                    if (!$(".tab_box > div").eq($index).find('.goods').is('.swiper-container-horizontal')) {
                        setSlide($(".tab_box > div").eq($index).find('.goods'));
                    }

                });

                function setSlide(obj){
                    new Swiper(obj, {
                        slidesPerView: 2.5,
                        spaceBetween: 30,
                        freeMode: true,
                        scrollbar: {
                            el: ".swiper-scrollbar",
                            draggable: true
                            // hide: true
                        }
                        // navigation: {
                        //     nextEl: ".swiper-button-next",
                        //     prevEl: ".swiper-button-prev",
                        // }
                    });
                }

            },
            style: function () {

                var $context = $('.main-section.style_sns');

                $('.sns_list', $context).slick({
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    speed: 200,
                    arrows: false,
                    fade: true,
                    asNavFor: '.main-section.style_sns .cate_list'
                 });

                 $('.cate_list', $context).slick({
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    speed: 200,
                    asNavFor: '.main-section.style_sns .sns_list',
                    dots: false,
                    arrows: false,
                    variableWidth: true,
                    focusOnSelect: true
                });

            }
        };

        // finally
        return Public;
    }
)(window.jQuery);
// 20210319 메인 개편 end

// 20210608 EOSD-3452 상품상세 개편
var pd = (
    function pd($) {

		var Public = {
			/**
			 * @param 
			 */
            visual: function () {

                var $context = $('#pdPhotoSet');
                var $photos = $('#pdPhotoSlide');
                var $thumbs = $('#pdThumbSlide');

                var photoSwiper =  new Swiper($photos.find('.swiper-container')[0], {
                    loop:true,
                    watchOverflow:true,
                    speed: 200,
                    navigation: {
                        nextEl: '#pdPhotoSlide .btnNav.next',
                        prevEl: '#pdPhotoSlide .btnNav.prev',
                    }
                });

                $photos.data('swiper', photoSwiper);
                $photos.on('jump', function(event, index){
                    isStart = true;
                    isEnd = false;
                    selPosition = 0;

                    var tmp = $thumbs.find('.slide[data-index='+ index +']').prevAll().get().reverse();
                    $thumbWrapper.append(tmp);

                    setSel();
                    setActive(index);
                });

                // var thumbSwiper =  new Swiper($thumbs.find('.swiper-container')[0], {
                //     spaceBetween: 10,
                //     slidesPerView: 7,
                //     spaceBetween:10,
                //     watchOverflow:true,
                //     loop: true,
                //     // slideToClickedSlide: true,
                //     navigation: {
                //         nextEl: '#pdThumbSlide .btnNav.next',
                //         prevEl: '#pdThumbSlide .btnNav.prev',
                //     }
                // });

                var $thumbContainer = $thumbs.find('.slide-container');
                var $thumbWrapper = $thumbContainer.find('.slide-wrapper');
                var thumbPerView = 5;
                var thumbSpace = 5;
                var thumbWidth = $thumbs.find('.slide').width();
                var maxPosition = (thumbPerView - 1) * thumbWidth + (thumbPerView - 1) * thumbSpace;
                var isEnd = false;
                var isStart = true;
                var selPosition = 0;
                var clickable = true;
                var currentIndex = 0;
                var setSel = function() {
                    $thumbContainer.find('.sel').css('left', selPosition);
                };
                var moveNext = function() {
                    var $target = $thumbWrapper.find('.slide').first();
                    var $tmp = $target.clone();

                    $thumbWrapper.append($tmp);
                    $thumbWrapper.css('transform', 'translateX(' + -1 * (thumbWidth + thumbSpace) + 'px)');

                    // $thumbWrapper.animate({
                    //     // transform: 'translateX(' + -1 * (thumbWidth + thumbSpace) + 'px)'
                    //     left: -1 * (thumbWidth + thumbSpace) + 'px'
                    // }, 200, function() {
                    //     // Animation complete.
                    //     // $target.remove();
                    // });

                    $thumbWrapper.one('transitionend', function(){
                        $thumbWrapper.css({
                            'transition-duration' : '0ms',
                            'transform': 'translateX(0px)'
                        });
                        $target.remove();
                        setTimeout(function(){
                            $thumbWrapper[0].style.removeProperty('transition-duration');
                            clickable = true;
                        },100);
                    });
                };

                var movePrev = function() {

                    var $target = $thumbWrapper.find('.slide').last();
                    var $tmp = $target.clone();

                    $thumbWrapper.css({
                        'transition-duration' : '0ms',
                        'transform': 'translateX(' + -1 * (thumbWidth + thumbSpace) + 'px)'
                    });

                    $thumbWrapper.prepend($tmp);

                    setTimeout(function(){
                        $thumbWrapper[0].style.removeProperty('transition-duration');
                        $thumbWrapper.css('transform', 'translateX(0px)');
                    }, 1)

                    $thumbWrapper.one('transitionend', function(){
                        $target.remove();

                        setTimeout(function(){
                            clickable = true;
                        },100);
                    });
                };

                var next = function (){
                    clickable = false;
                    isStart = false;

                    selPosition += thumbWidth + thumbSpace;

                    if (isEnd && currentEvent === null) {
                        moveNext();
                    }

                    if (selPosition >= maxPosition) {
                        selPosition = maxPosition;
                        isEnd = true;
                    }

                    setSel();
                };

                var prev = function(){
                    clickable = false;
                    isEnd = false;

                    selPosition -= thumbWidth + thumbSpace;

                    if (isStart && currentEvent === null) {
                        movePrev();
                    }

                    if (selPosition <= 0) {
                        selPosition = 0;
                        isStart = true;
                    }

                    setSel();
                };

                var setActive = function(n) {
                    $thumbs.find('.slide').removeClass('active');
                    $thumbs.find('.slide[data-index='+ n +']').addClass('active');
                };

                var currentEvent = null;
                

                $thumbContainer.find('.sel').remove();
                $thumbContainer.append('<div class="sel"></div>');
                setActive(0);

                // 다음버튼
                $thumbs.find('.btnNav.next').on('click', function(e){
                    var $this = $(this);
                    $this.attr('disabled', true);
                    setTimeout(function(){
                        $this.removeAttr('disabled');
                    },300);

                    e.preventDefault();
                    if ( !clickable ) return false;
                    photoSwiper.slideNext();
                });

                // 이전버튼
                $thumbs.find('.btnNav.prev').on('click', function(e){
                    var $this = $(this);
                    $this.attr('disabled', true);
                    setTimeout(function(){
                        $this.removeAttr('disabled');
                    },300);

                    e.preventDefault();
                    if ( !clickable ) return false;
                    photoSwiper.slidePrev();
                });

                // 썸네일 클릭
                $thumbs.on('click', '.slide', function(){

                    currentEvent = 'click';

                    var $this = $(this);
                    var dataIndex = $this.data('index');
                    var listIndex = $this.index();

                    photoSwiper.slideToLoop(dataIndex, 0);

                    selPosition = listIndex * thumbWidth + listIndex * thumbSpace;

                    if (selPosition === maxPosition) {
                        isEnd = true;
                    }
                    else if (selPosition === 0) {
                        isStart = true;
                    }
                    setSel();
                });
                
                $thumbContainer.find('.sel').on('transitionend', function(){
                    setTimeout(function(){
                        clickable = true;
                    },100);
                    currentEvent = null;
                });

                photoSwiper.on('slideChangeTransitionStart', function(swiper) {
                    clickable = false;
                    currentIndex = photoSwiper.realIndex;
                    setActive(currentIndex);
                });
                photoSwiper.on('slideChangeTransitionEnd', function(swiper) {
                    if( $photos.find(".list>li.mov .item video.video").length ) {
                        ui.pd.video.stop();
                    }
                });

                photoSwiper.on('slideNextTransitionStart', function(swiper) {
                    next();
                });

                photoSwiper.on('slidePrevTransitionStart', function(swiper) {
                    prev();
                });

                // $('#wrap').on('scroll', function(){
                //     setThumbPos();
                // });

                // $(window).on('resize load', function(){
                //     setThumbPos();
                // });

                function setThumbPos(){
                    var y = window.innerHeight - $thumbs.offset().top - 140;
                    if (y >= 0) y = 0;

                    $thumbs.find('.pdThumbWrap').css({
                        '-webkit-transform': 'translateY(' + y + 'px)',
                        'transform': 'translateY(' + y + 'px)'
                    });
                }

            },

            reco: function () {
                var recomPdListBox = new Swiper('#recomPdListBox', {
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
            },
            fold: function () {
                $('.product-detail-section .fold').each(function(){
                    var $this = $(this);
                    var $header = $this.find('.fold-header');

                    $header.on('click', function(){
                        $this.toggleClass('on');
                    });
                });
            }
        };

        // finally
        return Public;
    }
)(window.jQuery);    

$(document).ready(function() {

    //datepicker
    if ($('body').find('.calendar').length > 0) {
        $( '.calendar' ).datepicker({
            //showOn: 'button',
            //buttonText: '날짜선택',
            //buttonImage: '../../../images/common/ico_calendar_on.png',
            dayNamesMin: ['Su','Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
            monthNames: ['01','02','03','04','05','06','07','08','09','10','11','12'],
            nextText: '다음 달',
            prevText: '이전 달',
            dateFormat: 'yy.mm.dd',
            yearSuffix: '.',
            isFixed:true,
            showMonthAfterYear: true,
            beforeShow: function(els) { 

                window.setTimeout(function(){
                    calPost(els)
                });
                $("#wrap").on("load scroll",function(){
                    if ( $("#ui-datepicker-div").is(":visible") ){
                        calPost(els)
                    }
                });
                $(".ly-box.scroll").on("load scroll",function(){
                    $("#ui-datepicker-div").hide();
                });
                
            }
        });

        function calPost(els){
            // var wrapSt = $("#wrap").scrollTop();
            var iptL = $(els).offset().left ;
            var iptT = $(els).offset().top  ;
            var calW = 0;
            var calH = 32 ;
            // console.log( iptL , iptT ) ;  
            $("#ui-datepicker-div").css({
                "left":iptL + calW,
                "top":iptT + calH
            });   
        }
    }

    dropdown.init();
    dropdown02.init();
    dropdown03.init();
    // search.init();
    tab.init();
    tab02.init();
    tab03.init();
    tabNav.init();
    scrollTab.init();
    accordion.init();
    select.init();
    layerPopup.init();
    layoutFix.init();
    radioSelect.init();
    iconToggle.init();
    toggleBtn.init();
    toggleHover.init();
    //topUp.init();
    toggle.init();
    starScore.init();
	globalClose.init();
	flexBanner.init();
    yscroll.bind();// 20210319 메인 개편
});

var ui = {
    init:function(){ // 초기구동
        this.common.init();
        this.slides.init();
        this.top_cate.init();
        this.ly.init();
        this.pd.init();
        this.dp.init();
    },
    common:{
        init:function(){

            $urlParam = (function(a) {  //URL에서 파라미터 읽어오기
                if (a == "") return {};
                var b = {};
                for (var i = 0; i < a.length; i++){
                    var p=a[i].split('=');
                    if (p.length != 2) continue;
                    b[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " ")); //공백으로 변환 후 디코딩
                    //console.log(p[0]+" = "+b[p[0]])
                }
                return b;
            })(window.location.search.substr(1).split('&')); //파라미터 정보만 분리
            //console.log(  $urlParam['tab'] );

            var __areaObj = document.getElementsByTagName("area");
            var __length = __areaObj.length;
            for (var i = 0; i < __length; i++) {
            __areaObj[i].onfocus = function () { this.blur(); }
            } 
        }
    },
    scrHold:{ // 스크롤 막기,풀기 
		sct:0,
		stat:false,
		using:function(opt){

			if(opt === true && this.stat === false ){
				this.stat = true;
				ui.scrHold.sct = $(window).scrollTop();
				//$("body").css({"overflow":"hidden" });
				$("body").addClass("lock");
			}
			if(opt === false){
				this.stat = false;
				//$("body").css({"height":"","overflow":""});
				$("body").removeClass("lock");
			}
		}
	},
    pd:{
        init:function(){
            this.bindEvt();
            this.video.init();           
            this.goods_zoom.init();
        },
        bindEvt:function(){

            //  html/pd/goods.jsp
            $(document).on("mouseenter","#btn_goods_share",function(){
                $(this).closest(".share").addClass("on");
            });
            $(document).on("mouseleave",".gdsWrap .sect.product .info.data .hits .share .list",function(){
                $(this).closest(".share").removeClass("on");
            });

        },
        video:{
            movie:[],
            init:function(){
                if( $(".pdPhoto .list>li.mov .item video.video").length ) {
                    $(".pdPhoto .list>li.mov .item video.video").each(function(index){
                        $(this).attr("id","goods_video_"+index);
                        ui.pd.video.movie[index] = document.getElementById("goods_video_"+index);
                        ui.pd.video.movie[index].onended = function() {
                            console.log("goods_video ended" + index);
                            ui.pd.video.stop();
                        };
                    });
                    ui.pd.video.play();
                }
            },
            play:function(){
                for (var i in ui.pd.video.movie) {
                    ui.pd.video.movie[i].play();
                    ui.pd.video.movie[i].controls = true; 
                }
            },
            stop:function(){
                for (var i in ui.pd.video.movie) {
                    ui.pd.video.movie[i].pause();
                    ui.pd.video.movie[i].currentTime = 0;
                    ui.pd.video.movie[i].controls = true; 
                }
            }
        },
        goods_zoom:{
            init:function(){
                ui.pd.goods_zoom.pop_sld = $("#pdPhotoSlide").html();
                // console.log(ui.pd.goods_zoom.pop_sld);
                $(document).on("click",".popGoodsZoom .goods_big_slide .item a",function(){
                    ui.pd.goods_zoom.close();
                });
            },
            pop_sld:"",
            pop:'<article id="popGoodsZoom" class="layer-popup popGoodsZoom">'+
                    '<section class="layer-popup-cont" tabindex="0">'+
                        '<div class="layer-cont">'+
                            '<div class="goods_big_slide" id="goods_big_slide"></div>'+
                        '</div>'+
                        '<div class="layer-popup-close">'+
                            '<button type="button" onclick="ui.pd.goods_zoom.close();">닫기</button>'+
                        '</div>'+
                    '</section>'+
                '</article>'
            ,
            set:function(){
                $("#goods_big_slide").append( ui.pd.goods_zoom.pop_sld );
                //console.log(ui.pd.goods_zoom.pop_sld);
                if ( $("#goods_big_slide li.mov").length ) {
                    $("#goods_big_slide li.mov").remove();
                    $("#goods_big_slide .swiper-notification").remove();
                    this.isMov = true;
                }
                $("#goods_big_slide .item a").attr("onclick","");
                $("#goods_big_slide .item img").each(function(){
                    var big_src = $(this).attr("data-big");
                    $(this).attr("src",big_src);
                });
            },
            open:function(el){
                $("#pdPhotoSlide .list>li").each(function(i){
                    $(this).attr("data-index",i)
                });
                src_big = $(el).find("img").attr("data-big");
                // src_idx = parseInt( $(el).closest("li").attr("data-index") );
                src_idx = parseInt( $(el).closest("li").attr("data-swiper-slide-index") );
                // console.log( src_idx );
                if ( $("#popGoodsZoom").length == false ) {
                    $("body").append(this.pop);
                    this.set();
                }
                $("#popGoodsZoom .layer-cont img.big").attr("src",src_big);
                layerPopup.popupOpenNow('#popGoodsZoom'); 
                $("#popGoodsZoom .layer-popup-cont").scrollTop(0);
                //this.zoom_slide.opt.initialSlide = src_idx ;
                this.zoom_slide.using(src_idx);
            },
            close:function(){
                //console.log(this.isMov);
                var my_idx = $("#goods_big_slide").find("li.swiper-slide-active").data("swiper-slide-index");
                if( this.isMov ) {
                    my_idx ++ ;
                }
                if( my_idx >= 0 ){
                    // 20210608
                    // ui.slides.pdPhoto.slide1.slideToLoop(my_idx,10);
                    $('#pdPhotoSlide').data('swiper').slideToLoop(my_idx,10);
                    $('#pdPhotoSlide').trigger('jump', my_idx)
                }
           
                layerPopup.popupCloseNow('#popGoodsZoom');

            },
            zoom_slide:{
                els:"#goods_big_slide .swiper-container",
                opt:{
                    loop:true,
                    // initialSlide:0,
                    effect:'slide',
                    autoHeight:true,
                    navigation: {
                        nextEl: '#goods_big_slide .navigation .btnNav.next',
                        prevEl: '#goods_big_slide .navigation .btnNav.prev',
                    }
                },
                using:function(src_idx){
                    // this.opt.initialSlide = src_idx ;
                    var slideNum = $(this.els).find(".swiper-slide").length ;
                    if ( slideNum > 1 ) {
                        if(!this.slide) {
                            this.slide = new Swiper(this.els, this.opt);
                        }                       
                        if( ui.pd.goods_zoom.isMov ) {
                            src_idx = src_idx - 0;
                        }else{
                            src_idx = src_idx + 1;
                        }
                        // console.log(src_idx);
                        ui.pd.goods_zoom.zoom_slide.slide.slideTo(src_idx , 1);
                        // console.log("이동");
                        ui.pd.goods_zoom.zoom_slide.slide.update();
                    }else{
                        $("#goods_big_slide .navigation").hide();
                    }
                }
            }
        }
    },
    top_cate:{
        init:function(){
            this.bindEvt();
        },
        bindEvt:function(){

            $(document).on("mouseenter",".top_cate_box .menu .list li a",function(){
                $(".top_cate_box").addClass("over line");
                var pan_on = $(this).attr("data-pan");
                // console.log(pan_on);
                $(".top_cate_box").find("#"+pan_on+"").addClass("on").siblings(".pan").removeClass("on");
            });
            $(document).on("mouseleave",".top_cate_box",function(){
                $(".top_cate_box").removeClass("over line");
                $(".top_cate_box").find(".pan").removeClass("on");
            });
            $(document).on("mouseenter",".top_cate_box .menu .list.spc li a",function(){
                $(".top_cate_box").find(".pan").removeClass("on");
                $(".top_cate_box").removeClass("line");
            });
        }
    },
    dp:{
        init:function(){
            this.cate();
        },
        cate:function(){

            //  /static/html/dp/list_d3.jsp
            $(document).on("click",".dp_cate_top .menu>li>.txt .bt",function(){
                $(this).closest("li").addClass("on").siblings("li").removeClass("on");
            })
            .on("click",".dp_cate_top .menu>li.on>.txt .bt",function(){
               $(".dp_cate_top .menu>li").removeClass("on"); 
            })
            .on("click",function(){
               $(".dp_cate_top .menu>li").removeClass("on"); 
            })
            .on("click",".dp_cate_top .menu>li:not(.on)>.txt .bt , .dp_cate_top .menu>li.on>.subs",function(e){
               e.stopPropagation();
            });



            //  html/dp/pm_view_promo.jsp
            $(document).on("mouseenter","#btn_promotion_share",function(){
                $(this).addClass("on");
            })
            .on("mouseleave","#btn_promotion_share",function(){
                $(this).removeClass("on");
            });



            //  /html/dp/look_view.jsp
            $(document).on("mouseenter",".mds_look_veiw .slide .pics",function(e){
               	$(".mds_look_veiw .slide").addClass("on");
            })
            .on("mouseenter",".mds_look_veiw .slide .navigation .btnNav ",function(e){
            	$(".mds_look_veiw .slide").addClass("on");            	
            }); 
            $("body").on("mouseover",function(e){
                $(".mds_look_veiw .slide").removeClass("on");
                //$(".mds_look_veiw .slide .navigation").fadeOut();     
            });
 			$(document).on("mouseover",".mds_look_veiw .slide .pics",function(e){
 				e.stopPropagation();
 			});



 			//  /static/html/dp/look_list.jsp
            $(document).on("click",".look_cate .menu>li>.txt .bt",function(){
                $(this).closest("li").addClass("on").siblings("li").removeClass("on");
            })
            .on("click",function(){
               $(".look_cate .menu>li").removeClass("on"); 
            })
            .on("click",".look_cate .menu>li>.subs .close",function(){
                $(this).closest("li").removeClass("on"); 
            })
            .on("click",".look_cate .menu>li>.txt .bt , .look_cate .menu>li.on>.subs",function(e){
               e.stopPropagation();
            });

            
        }
    },
    ly:{
        init:function(){
            this.recent.init();
            this.flexBanner.init();
            this.bindEvt();
            this.bodyCls();
        },
        bodyCls:function(){
            if ( $("#contain").length ) {
                var cls = $("#contain").attr("class").replace("contain","");
                $("body").addClass(cls);
            }
        },
        bindEvt:function(){
            $(window).on("load resize", function(){
                ui.ly.containHt();
            });


            // 언어석택 열기 //
            $(document).on({
                "mouseenter":function(){
                    $(this).addClass("over");
                },
                "mouseleave":function(){
                    $(this).removeClass("over");
                },
            },"#btn_selLang")
            .on({
                "mouseenter":function(){
                    $(this).addClass("over");
                },
                "mouseleave":function(){
                    $(this).removeClass("over");
                },
            },"#btn_head_myinfo");
            // 언어석택 열기 //


            //  상단 검색창 열기 //
            $(document).on("click","body:not('.schOn') #btn_gb_sch_box",function(){
                $(".body").addClass("schOn");
                $(".body").removeClass("gnbOn");
                
                if ($('html').attr('lang') !== 'ko'){
                    $(".gb_sch_box>.in .box .keyword .key").focus(); 
                }
                
                $("#btn_gb_sch_box").removeAttr("data-ga-category");
                $("#btn_gb_sch_box").removeAttr("data-ga-action");
                $('body').trigger('search', 'on'); 
            }).on("click",".schOn #btn_gb_sch_box",function(){
            	
                $(".body").removeClass("schOn");
                $('body').trigger('search', null);
                $("#btn_gb_sch_box").attr("data-ga-category","PC_MLB_Header");
                $("#btn_gb_sch_box").attr("data-ga-action","검색");
            })
            .on("click","#btn_gb_sch_box , .gb_sch_box", function(e){ 
                e.stopPropagation(); 
            })
            .on("click", function(e){ 
                $(".body").removeClass("schOn");
                $('body').trigger('search', null); //20210126 EOSD-3029 검색 개선
            });
            //  상단 검색창 열기 //


            // GNB 열기 //
            $(document).on("click",".head .header .btnGnb a.bt",function(){
                if ( $(".body").hasClass("gnbOn") ){
                    $(".body").removeClass("gnbOn");
                }else{
                    $(".body").addClass("gnbOn");
                }
                $(".body").removeClass("schOn");
            })
            .on("click",".btnGnb a.bt , nav.gnb", function(e){ 
                e.stopPropagation(); 
            })
            .on("click", function(e){ 
                $(".body").removeClass("gnbOn");
            });
            // GNB 열기 //


            ui.ly.posit();
            $("#wrap").on("load scroll resize",function(){
                ui.ly.posit();
            }) 
        },
        posit:function(){
            // 20210319 start
            var flexHt = $("#flexBanner:visible").outerHeight() || 0;
            var hdHt = $(".header:visible").outerHeight();
            var scrTop = $("#wrap").scrollTop();
            var headerHeight = $('#gnbMenu').outerHeight();
            
            // $(".contain").css({"padding-top": $(".head").outerHeight() });
            $(".contain").css({"padding-top": flexHt});
            
            //var els = ; // , nav.gnb , .gb_sch_box 
			
			$(".top_cate_box").css("top", flexHt + hdHt );

            if( scrTop >= flexHt  ){
                 
                if(scrTop === 0) {
                    $(".body").removeClass("isHeadFix");
                }
                else if(scrTop > 0 && flexHt >= 0) {
                    $(".body").addClass("isHeadFix");
                }
                
                $(".head").css("top", 0 - flexHt);
                $("nav.gnb").css("top", hdHt  );
                
                // $(".gb_sch_box").css("top", hdHt  );
                $(".gb_sch_box").css("top", headerHeight);
                
            }else{
                $(".body").removeClass("isHeadFix");
                $(".head").css("top", 0  - scrTop );
                $("nav.gnb").css("top", flexHt + hdHt - scrTop );

                // $(".gb_sch_box").css("top",  flexHt + hdHt - scrTop  );
                $(".gb_sch_box").css("top",  flexHt + headerHeight - scrTop  );
            }
            // 20210319 end
        },
        topScr:"",
        flexBanner:{  //  상단 띠배너 
            init:function(){

				$(document).on("click",".flexBanner .bts .btnClose",function(){
					$(".flexBanner").hide();
					$(".body").removeClass("isFlexBn");
                   // ui.ly.flexBanner.posit();
                   ui.ly.posit();
				});

            	
        		if ( $("#flexBanner").is(":visible") ){
        			$(".body").addClass("isFlexBn");
            	}else{
            		$(".body").removeClass("isFlexBn");
            	} 
            	ui.ly.flexBanner.using();
                ui.ly.flexBanner.posit();
 
            },
            using:function(opt){
                $("#wrap").on("load scroll",function(){
                    ui.ly.flexBanner.posit();
                });
            },
            posit:function(){
                // 20210319 start
                var flexHt = $("#flexBanner:visible").outerHeight() || 0;
                var headerHt = $(".header:visible").outerHeight();

                // $(".contain").css({"padding-top": $(".head").outerHeight() });
                $(".contain").css({"padding-top": flexHt});
                // 20210319 end           
            }

        },
        recent:{  //  페이지 하단  최근본 상품 ,  페이지 맨위로 올리기 버튼 
            init:function(){
                // 20210608 내용 변경
                var foot = $(".wrap>.foot");
                var footH = foot.outerHeight();
                var footY = foot.offset().top;

                this.slide.using();

                $(document).on("mouseenter","#recentGoodsSlide .swiper-slide a",function(){ //최근본 상품 이미지에 마우수 올렸을때 타이틀 출력;
                	var tit = $(this).find("img").attr("alt");
                	// console.log(tit);
                	$(".nav_bot .menu .box .tit").html(tit);
                })
                .on("mouseleave","#recentGoodsSlide",function(){
                	$(".nav_bot .menu .box .tit").html("");
                })
                .on("click",function(e){
                    // console.log($(e.target))
                    if ( !$(e.target).closest(".nav_bot").is(":visible") ) {
                        ui.ly.recent.close($(".nav_bot .menu .list>li.recent>a.bt"));
                    }
                });

                $(document).on("click",".nav_bot .menu .list>li.recent>a.bt",function(){  // 최근본상품 열기
                	ui.ly.recent.open(this);
                });

                $(document).on("click",".nav_bot .menu .list>li.recent>a.bt.close",function(){  // 최근본상품 닫기
                	ui.ly.recent.close(this);
                })
                .on("click",".nav_bot.on .menu .list>li.recent>a",function(){ 
                	$(".nav_bot").removeClass("on");
                });


                $(window).on("load resize",function(){
                    var w = $("#wrap").outerWidth(); 
                    var c = $("#contain").outerWidth(); 
                    $(".nav_bot").css({
                        "right":w-c
                    });
                });
                if ( $("body").css("overflow-y") == "hidden"  ) {
                    //console.log("hidd");
                    var $Wrap = $("#wrap");
                }else{
                    //console.log("autoo");
                    var $Wrap = $(window);
                }
                $(document).on("click", ".nav_bot .menu .list>li.top>a.bt", function() { // 페이지 맨위로
					var els = $(this);
					if (els.hasClass("disabled")) return false;
					$Wrap.add("html,body").animate({ scrollTop: 0 }, 50, function() {
						els.removeClass("disabled");
					});
					els.addClass("disabled");
				});
                var scT ;
                $Wrap.on("load scroll",function(){
                    scT = $Wrap.scrollTop();
                    if (scT > 300) {
                        ui.ly.recent.isTopStat = true;
                        if ( !$(".nav_bot").hasClass("on") ) {
                            $(".nav_bot").addClass("tops");
                        }
                    }else{
                        ui.ly.recent.isTopStat = false;
                        if ( !$(".nav_bot").hasClass("on") ) {
                            $(".nav_bot").removeClass("tops");
                        }
                    }

                    if (foot[0].getBoundingClientRect().y < window.innerHeight) {
                        $(".nav_bot").addClass('dock');
                        $(".nav_bot").css('margin-top', (-1 * footH) + 'px');
                    }
                    else {
                        $(".nav_bot").removeClass('dock');
                        $(".nav_bot").css('margin-top', '0px');
                    }
                });

            },
            isTopStat:false,
            open:function(els){
                $(".nav_bot").addClass("on tops");
                $(els).addClass("close");

            },
            close:function(els){
                if ( !ui.ly.recent.isTopStat ) {
                     $(".nav_bot").removeClass("on tops");
                }
                $(".nav_bot").removeClass("on");
                $(els).removeClass("close");
            },
            slide:{
                els:"#recentGoodsSlide",
                opt:{
                    slidesPerGroup: 3,
                    slidesPerView: 3,
                    spaceBetween: 10,
                    observer: true,
					observeParents: true,
					watchOverflow:true,
                    // loop:true,
                    navigation: {
                        nextEl: '.btNav.next',
						prevEl: '.btNav.prev'
                    }
                },
                using:function(){
                    this.slide = new Swiper(this.els, this.opt);
                }
            }
        },
        containHt:function(){
            var winH = $(window).height();
            var headH = $(".wrap>.head").outerHeight();
            var footH = $(".wrap>.foot").outerHeight();
            var $contents = $(".wrap>.contain");
            var contMinHt = winH - headH - footH ;
            $contents.css("min-height", contMinHt);
        }
    },
    slides:{
        init:function(){
            // 20210608
            // $(this.pdPhoto.els1).length && this.pdPhoto.using();
            $(this.pdRelated.els).length && this.pdRelated.using();
            $(this.mnRank.els).length && this.mnRank.using();

            // 20210608
            // $(".gdsWrap .sect.product .photos .pdThumb .list>li>a").on("click",function(){
            //     var my_idx = $(this).closest("li").data("swiper-slide-index");
            //     ui.slides.pdPhoto.slide1.slideToLoop(my_idx,10);
            // });

            $(this.video.els).length && this.video.using();
        },
        pdPhoto:{ 
            // 20210608 pd 함수에서 관리 (이하 사용 안함)
            // 상품상세 
            els1: "#pdPhotoSlide .swiper-container",
            els2: "#pdThumbSlide .swiper-container",
            opt1: {
                spaceBetween: 10,
                loop:true,
                // simulateTouch:false,
                watchOverflow:true,
                navigation: {
                    nextEl: '#pdPhotoSlide .btnNav.next',
                    prevEl: '#pdPhotoSlide .btnNav.prev',
                }
            },
            opt2: {
                spaceBetween: 10,
                slidesPerView: 5,
                spaceBetween:5,
                touchRatio: 0.2,
                simulateTouch:false,
                watchOverflow:true,
                loop: true,
                // slideToClickedSlide: true,
                navigation: {
                    nextEl: '#pdThumbSlide .btnNav.next',
                    prevEl: '#pdThumbSlide .btnNav.prev',
                }
            },
            using: function() {
                if ( $(this.els1).find(".swiper-slide").length > 1) {
                    this.slide1 = new Swiper(this.els1, this.opt1);
                    this.slide1.on('slideChangeTransitionEnd', function(swiper) {
                        // console.log('pdPhoto slide changed', this.realIndex  , this.els);
                        if( $(".pdPhoto .list>li.mov .item video.video").length ) {
                            ui.pd.video.stop();
                        }
                    });
                }else{
                    $("#pdPhotoSlide").find(".navigation").hide(); 
                }


                if ( $(this.els2).find(".swiper-slide").length > 5) {
                    this.slide2 = new Swiper(this.els2, this.opt2);
                }else{
                    $(this.els2).find(".swiper-slide").each(function(i){
                        $(this).attr("data-swiper-slide-index",i);
                    });
                    $("#pdThumbSlide").find(".navigation").hide();
                }
                if ( $(this.els2).find(".swiper-slide").length <= 1) {
                    $("#pdThumbSlide").hide();
                }

            }
        },
        pdRelated:{  // 상품 관련상품 static/html/pd/goods.jsp
            els: "#pdRelatedSlide .swiper-container",
            opt: {
                slidesPerView: 4,
                observer: true,
                observeParents: true,
                watchOverflow:true,
                slidesPerGroup:1,
                spaceBetween:20,
                navigation: {
                    nextEl: '#pdRelatedSlide .navigation .btnNav.next',
                    prevEl: '#pdRelatedSlide .navigation .btnNav.prev'
                },
                preloadImages: false,
                lazy: true,
                loop: true,
                breakpoints: {
                    1280: {
                        slidesPerView: 3,
                        spaceBetween:20
                    }
                }
            },
            using: function() {
                if ( $(this.els).find(".swiper-slide").length <= 4 ) {
                    this.opt.loop = false;
                }
                this.slide = new Swiper(this.els, this.opt);
            }
        },
        mnRank:{  // /static/html/mn/main.jsp
            els: ".mds-section.rank .slide .swiper-container",
            opt: {
                slidesPerView: 4,
                observer: true,
                observeParents: true,
                watchOverflow:true,
                slidesPerGroup:1,
                spaceBetween:20,
                navigation: {
                    nextEl: '.navigation .btnNav.next',
                    prevEl: '.navigation .btnNav.prev'
                },
                preloadImages: false,
                lazy: true,
                loop: false
            },
            using: function() {
               this.slide = new Swiper(this.els, this.opt);
            }
        },
        video:{  // 메인  동영상들 슬라이드  /static/html/mn/main.jsp
            els: ".mds-section.video .swiper-container",
            opt: {
                slidesPerView: 'auto',
                initialSlide:0,
                centeredSlides:true,
                spaceBetween:20,
                observer: true,
                observeParents: true,
                watchOverflow:true,
                simulateTouch:false,
                navigation: {
                    nextEl: '.mds-section.video .navigation .btnNav.next',
                    prevEl: '.mds-section.video .navigation .btnNav.prev'
                },
                loop:true,
                autoplay:false
            },
            using: function() {
                if ( $(this.els).find(".swiper-slide").length <= 1 ) {
                    this.opt.loop = false;
                    $(this.els).find(".swiper-slide").addClass("only");
                    $(this.els).find(".swiper-wrapper").addClass("only");
                }
                this.slide = new Swiper(this.els, this.opt);

                $(this.els).find(".swiper-slide .vs").append('<div class="screen"></div>');
                $(".mds-section.video iframe.video_iframe").each(function(i){
                    $(this).attr("id","video_iframe_"+i);
                });

                player_video=[];
                $(".mds-section.video iframe.video_iframe").each(function(i){
                    player_video[i] = new Vimeo.Player('video_iframe_'+i); 
                });

                video_stat = true;
                od = 0
                $("#wrap").on("load scroll", function(){
                    $videoEls = $(".mds-section.video .swiper-slide-active .video_iframe");
                    videoStart = $videoEls.offset().top - $(window).height() + $videoEls.height() + $("#wrap").scrollTop();
                    videoEnd = $videoEls.offset().top + $("#wrap").scrollTop() ;
                    var scrollTop = $("#wrap").scrollTop();
                    //console.log(scrollTop , videoStart , videoEnd ,od ,video_stat)
                    if(scrollTop > videoStart && scrollTop < videoEnd && od == 0 && video_stat == true){
                        od = 1;        
                        player_video[ui.slides.video.slide.activeIndex].setVolume(0);
                        player_video[ui.slides.video.slide.activeIndex].play();
                    }else if((scrollTop < videoStart || scrollTop > videoEnd) && od == 1){
                        od = 0;
                        player_video[ui.slides.video.slide.activeIndex].pause();
                    }
                });
                this.slide.on('slideChangeTransitionEnd', function(){
                    player_video[ui.slides.video.slide.previousIndex].pause();
                    player_video[ui.slides.video.slide.activeIndex].setVolume(0);
                    player_video[ui.slides.video.slide.activeIndex].play()
                });






            }
        }
    }
}

$(document).ready(function(){
    ui.init();
});

// 20210105 EOSD-2924 불필요 코드 주석
// function css_browser_selector(u) {
//     var ua = u.toLowerCase(),
//         is = function(t) {
//             return ua.indexOf(t) > -1;
//         },
//         g = 'gecko',
//         w = 'webkit',
//         s = 'safari',
//         c = 'chrome',
//         o = 'opr',
//         m = 'mobile',
//         v = 0,
//         r = window.devicePixelRatio ? (window.devicePixelRatio + '').replace('.', '_') : '1';
//     var res = [
//         /* IE */
//         (!(/opera|webtv/.test(ua)) && /msie\s(\d+)/.test(ua) && (v = RegExp.$1 * 1)) ?
//             ('ie ie' + v + ((v == 6 || v == 7) ?
//                 ' ie67 ie678 ie6789' : (v == 8) ?
//                 ' ie678 ie6789' : (v == 9) ?
//                 ' ie6789 ie9m' : (v > 9 ) ?
//                 ' ie9m' : '')) :
//             /* EDGE */
//             (/edge\/(\d+)\.(\d+)/.test(ua) && (v = [RegExp.$1, RegExp.$2])) ?
//             'ie ie' + v[0] + ' ie' + v[0] + '_' + v[1] + ' ie9m edge' :
//                 /* IE 11 */
//                 (/trident\/\d+.*?;\s*rv:(\d+)\.(\d+)\)/.test(ua) && (v = [RegExp.$1, RegExp.$2])) ?
//                     'ie ie' + v[0] + ' ie' + v[0] + '_' + v[1] + ' ie9m' :
//                     /* FF */
//                     (/firefox\/(\d+)\.(\d+)/.test(ua) && (re = RegExp)) ?
//                         g + ' ff ff' + re.$1 + ' ff' + re.$1 + '_' + re.$2 :
//                         is('gecko/') ? g :
//                             /* Opera */
//                             is(o) ? o + (/version\/(\d+)/.test(ua) ? ' ' + o + RegExp.$1 :
//                                 (/opera(\s|\/)(\d+)/.test(ua) ? ' ' + o + RegExp.$2 : '')) :
//                                 /* K */
//                                 is('konqueror') ? 'konqueror' :
//                                     /* Black Berry */
//                                     is('blackberry') ? m + ' blackberry' :
//                                         /* Chrome */
//                                         (is(c) || is('crios')) ? w + ' ' + c :
//                                             /* Iron */
//                                             is('iron') ? w + ' iron' :
//                                                 /* Safari */
//                                                 !is('cpu os') && is('applewebkit/') ? w + ' ' + s :
//                                                     /* Mozilla */
//                                                     is('mozilla/') ? g : '',
//         /* Android */
//         is('android') ? m + ' android' : '',
//         /* Tablet */
//         is('tablet') ? 'tablet' : '',
//         /* Machine */
//         is('j2me') ? m + ' j2me' :
//             is('ipad; u; cpu os') ? m + ' chrome android tablet' :
//                 is('ipad;u;cpu os') ? m + ' chromedef android tablet' :
//                     is('iphone') ? m + ' ios iphone' :
//                         is('ipod') ? m + ' ios ipod' :
//                             is('ipad') ? m + ' ios ipad tablet' :
//                                 is('mac') ? 'mac' :
//                                     is('darwin') ? 'mac' :
//                                         is('webtv') ? 'webtv' :
//                                             is('win') ? 'win' + (is('windows nt 6.0') ? ' vista' : '') :
//                                                 is('freebsd') ? 'freebsd' :
//                                                     (is('x11') || is('linux')) ? 'linux' : '',
//         /* Ratio (Retina) */
//         (r != '1') ? ' retina ratio' + r : '',
//         'js portrait'].join(' ');
//     if(window.jQuery && !window.jQuery.browser) {
//         window.jQuery.browser = v ? {msie: 1, version: v} : {};
//     }
//     return res;
// };
// (function(d, w) {
//     var _c = css_browser_selector(navigator.userAgent);
//     var h = d.documentElement;
//     h.className += ' ' + _c;
//     var _d = _c.replace(/^\s*|\s*$/g, '').split(/ +/);
//     w.CSSBS = 1;
//     for(var i = 0; i < _d.length; i++) {
//         w['CSSBS_' + _d[i]] = 1;
//     }
//     var _de = function(v) {
//         return d.documentElement[v] || d.body[v];
//     };
//     if(w.jQuery) {
//         (function($) {
//             var p = 'portrait', l = 'landscape';
//             var m = 'smartnarrow', mw = 'smartwide', t = 'tabletnarrow', tw = 'tabletwide', ac = m + ' ' + mw + ' ' + t + ' ' + tw + ' pc';
//             var $h = $(h);
//             var to = 0, cw = 0;

//             /* ie7 cpu 100% fix */
//             function CSSSelectorUpdateSize() {
//                 if(to != 0) return;
//                 try {
//                     var _cw = _de('clientWidth'), _ch = _de('clientHeight');
//                     if(_cw > _ch) {
//                         $h.removeClass(p).addClass(l);
//                     } else {
//                         $h.removeClass(l).addClass(p);
//                     }
//                     if(_cw == cw) return;
//                     cw = _cw;
//                     //clearTimeout(to);
//                 } catch(e) {
//                 }
//                 to = setTimeout(CSSSelectorUpdateSize_, 100);
//             }

//             function CSSSelectorUpdateSize_() {
//                 try {
//                     $h.removeClass(ac);
//                     $h.addClass(
//                         (cw <= 360) ? m :
//                             (cw <= 640) ? mw :
//                                 (cw <= 768) ? t :
//                                     (cw <= 1024) ? tw : 'pc'
//                     );
//                 } catch(e) {
//                 }
//                 to = 0;
//             }

//             if(w.CSSBS_ie) {
//                 setInterval(CSSSelectorUpdateSize, 1000);
//             } else {
//                 $(w).on('resize orientationchange', CSSSelectorUpdateSize).trigger('resize');
//             }
//             $(w).on("load",function(){
//                 CSSSelectorUpdateSize
//             });
//         })(w.jQuery);
//     }
// })(document, window);


if(window.CSSBS_edge) {
    //console.log(window.CSSBS_opr)
}