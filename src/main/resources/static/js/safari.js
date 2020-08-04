$(document).ready(function() {
	if (navigator.userAgent.indexOf('Safari') != -1 && navigator.userAgent.indexOf('Chrome') == -1) {
	    //alert('Safari');
	    
	    //메인 슬라이더 조정
	    $windowSize = $(window).height() - 36;

	    $('.main_slider_wrap').css('height',$windowSize + 'px');
	    $('.main_slider_wrap #main_slider .owl-item').css('height',$windowSize + 'px');
	    $('.main_slider_wrap #main_slider .owl-item .page').css('height',$windowSize + 'px');

	  	$("body").addClass("dummyClass").removeClass("dummyClass");  
	}
});

$(window).resize(function() {
	if (navigator.userAgent.indexOf('Safari') != -1 && navigator.userAgent.indexOf('Chrome') == -1) {
	    //alert('Safari');
	    
	    //메인 슬라이더 조정
	    $windowSize = $(window).height() - 36;

	    $('.main_slider_wrap').css('height',$windowSize + 'px');
	    $('.main_slider_wrap #main_slider .owl-item').css('height',$windowSize + 'px');
	    $('.main_slider_wrap #main_slider .owl-item .page').css('height',$windowSize + 'px');

	  	$("body").addClass("dummyClass").removeClass("dummyClass");  
	}
});