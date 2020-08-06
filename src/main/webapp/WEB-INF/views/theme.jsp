<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">

<!-- 반응형 meta -->
<meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1, user-scalable=yes">

<!-- IE 대응 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge" />


<link href="/css/font.css?ver=" rel="stylesheet" />

<link href="//netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">

<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>


<link href="/css/reset.css?ver=171736" rel="stylesheet" />
<link href="/css/style.css?ver=171736" rel="stylesheet" />

<link href="/css/common.css?ver=171736" rel="stylesheet" />

<link href="/css/header.css?ver=171736" rel="stylesheet" />
<link href="/css/footer.css?ver=171736" rel="stylesheet" />

<!-- <link href="/css/sub_banner.block.css?ver=171736" rel="stylesheet" /> -->
<!-- <link href="/css/sub_banner.css?ver=171736" rel="stylesheet" /> -->






<link href="/css/theme.css?ver=171736" rel="stylesheet" />
<link href="/css/theme.new.css?ver=171736" rel="stylesheet" />
<link href="/css/theme_banner.css?ver=171736" rel="stylesheet" />


















<link href="/css/login_layer.css?ver=171736" rel="stylesheet" />

<link href="/css/nonbootstrap.css?ver=171736" rel="stylesheet" />






<!-- include summernote css/js -->
<link href="/css/summernote.css?ver=171736" rel="stylesheet" />
<script src="/js/summernote.js?ver=171736"></script>

<!-- tweenmax libaray -->
<script src="/js/TweenMax.min.js"></script>

<!--jquery UI libaray -->

<!-- safari browser css -->
<script src="/js/safari.js"></script>

<script type="/js/jquery.form.min.js"></script>
<script>
	var $assets_url = "https://www.roomescape.co.kr/_template/assets";
	var $home_url = "https://www.roomescape.co.kr";
</script>
<title>전국방탈출 - 방탈출카페의 모든 것</title>
	<style>
		.theme.main .container .container_inner.section.section_search .my_review_close {
		    display: inline-block;
		    width: 280px;
		    height: 35px;
		    background-color: #ffffff;
		    border: 1px solid #e4e4e4;
		}

		.theme.main .container .container_inner.section.section_search .tag.my_review_close_category_reveal {
			width: 69px;
		}

		.theme.main .container .container_inner.section.section_search .my_review_close .category {
			float: left;
		    width: calc(100% - 100px);
		    height: 100%;
		    box-sizing: border-box;
		}

		.theme.main .container .container_inner.section.section_search .my_review_close .category ul {
			width:100%;
			height:100%;
		}

		.theme.main .container .container_inner.section.section_search .my_review_close .category ul .select {
		    float: left;
		    position: relative;
		    width: 100%;
		    height: 100%;
		}	

		.theme.main .container .container_inner.section.section_search .my_review_close .category ul .select .select_inner {
		    display: inline-block;
		    position: absolute;
		    top: 0;
		    bottom: 0;
		    left: 0;
		    right: 0;
		    width:100%;
		    height: 24px;
		    margin: auto;
		    border-radius: 2.5px;
		    text-align: center;
		    line-height: 24px;
		    font-weight: 600;
		    cursor: pointer;
		}

		.theme.main .container .container_inner.section.section_search .my_review_close .category ul .select .select_inner.active {
		    background-color: rgb(255, 204, 1);
		}

		@media (max-width: 665px) {
			.theme.main .container .container_inner.section.section_search .my_review_close {
			    position: relative;
			    width: 100%;
			}

			.theme.main .container .container_inner.section.section_search .my_review_close .tag {
			    width: 100%;
			    text-align: center;
			    cursor: pointer;
			}

			.theme.main .container .container_inner.section.section_search .my_review_close .category {
			    display: none;
			    position: absolute;
			    top: 35px;
			    left: 0;
			    z-index: 1;
			    width: 100%;
			    background-color: #fff;
			}

			.theme.main .container .container_inner.section.section_search .my_review_close .category.active {
			    display: block;
			}

			.theme.main .container .container_inner.section.section_search .my_review_close .category ul {
			    width: 100%;
			    height: 100%;
			}

			.theme.main .container .container_inner.section.section_search .my_review_close .category ul .select {
			    width: 100%;
			    height: 36px;
			    background-color: #fff;
			    border-bottom: 1px solid #e6e6e6;
			}

			.theme.main .container .container_inner.section.section_search .my_review_close .category ul .select .select_inner {
			    width: 100%;
			    height: 35px;
			    line-height: 35px;
			}
		}

	</style>
</head>
<body class="theme main">





<%@ include file="include/nav.jsp"%>





		<!--sub_banner-->
		<div class="sub_banner" style="background-image:url('https://www.roomescape.co.kr/_template/assets/img/theme/theme_sub_banner_back.jpg?ver=');">
			<img class="banner_title" src="https://www.roomescape.co.kr/_template/assets/img/theme/theme.png?ver=" alt="" />
			<div id="owl_carousel_1" class="owl-carousel owl-theme banner_slider">
					<div class="img-wrap slide slide1">
						<div class="slide_wrap">
				        	<div class="slide_inner slider1_inner">
					            <div class="slide_elem_1">
					            	<a href="/theme/detail.php?theme=3311">
					            		<div class="pic" style="background-image:url('http://www.yologuys.com/Escape_img/theme/3311.jpg');"></div>
						            </a>
					            </div>
					        </div>
					        <div class="info">
					         	<div class="kinds_loc">
					            	<span>공포</span>
					            </div>

					            <div class="name">
					            	<span class="name_font_fit_div"><a href="/theme/detail.php?theme=3311">콜러</a></span>
					            </div>
					        </div>
					    </div>
			        </div>
					<div class="img-wrap slide slide1">
						<div class="slide_wrap">
				        	<div class="slide_inner slider1_inner">
					            <div class="slide_elem_1">
					            	<a href="/theme/detail.php?theme=3306">
					            		<div class="pic" style="background-image:url('http://www.yologuys.com/Escape_img/theme/3306.jpg');"></div>
						            </a>
					            </div>
					        </div>
					        <div class="info">
					         	<div class="kinds_loc">
					            	<span>?</span>
					            </div>

					            <div class="name">
					            	<span class="name_font_fit_div"><a href="/theme/detail.php?theme=3306">동창회</a></span>
					            </div>
					        </div>
					    </div>
			        </div>
					<div class="img-wrap slide slide1">
						<div class="slide_wrap">
				        	<div class="slide_inner slider1_inner">
					            <div class="slide_elem_1">
					            	<a href="/theme/detail.php?theme=3307">
					            		<div class="pic" style="background-image:url('http://www.yologuys.com/Escape_img/theme/3307.jpg');"></div>
						            </a>
					            </div>
					        </div>
					        <div class="info">
					         	<div class="kinds_loc">
					            	<span>?</span>
					            </div>

					            <div class="name">
					            	<span class="name_font_fit_div"><a href="/theme/detail.php?theme=3307">이상한 하루</a></span>
					            </div>
					        </div>
					    </div>
			        </div>
					<div class="img-wrap slide slide1">
						<div class="slide_wrap">
				        	<div class="slide_inner slider1_inner">
					            <div class="slide_elem_1">
					            	<a href="/theme/detail.php?theme=3308">
					            		<div class="pic" style="background-image:url('http://www.yologuys.com/Escape_img/theme/3308.jpg');"></div>
						            </a>
					            </div>
					        </div>
					        <div class="info">
					         	<div class="kinds_loc">
					            	<span>?</span>
					            </div>

					            <div class="name">
					            	<span class="name_font_fit_div"><a href="/theme/detail.php?theme=3308">ROO3</a></span>
					            </div>
					        </div>
					    </div>
			        </div>
					<div class="img-wrap slide slide1">
						<div class="slide_wrap">
				        	<div class="slide_inner slider1_inner">
					            <div class="slide_elem_1">
					            	<a href="/theme/detail.php?theme=3309">
					            		<div class="pic" style="background-image:url('http://www.yologuys.com/Escape_img/theme/3309.jpg');"></div>
						            </a>
					            </div>
					        </div>
					        <div class="info">
					         	<div class="kinds_loc">
					            	<span>?</span>
					            </div>

					            <div class="name">
					            	<span class="name_font_fit_div"><a href="/theme/detail.php?theme=3309">동물병원</a></span>
					            </div>
					        </div>
					    </div>
			        </div>
					<div class="img-wrap slide slide1">
						<div class="slide_wrap">
				        	<div class="slide_inner slider1_inner">
					            <div class="slide_elem_1">
					            	<a href="/theme/detail.php?theme=3310">
					            		<div class="pic" style="background-image:url('http://www.yologuys.com/Escape_img/theme/3310.jpg');"></div>
						            </a>
					            </div>
					        </div>
					        <div class="info">
					         	<div class="kinds_loc">
					            	<span>?</span>
					            </div>

					            <div class="name">
					            	<span class="name_font_fit_div"><a href="/theme/detail.php?theme=3310">5010</a></span>
					            </div>
					        </div>
					    </div>
			        </div>
					<div class="img-wrap slide slide1">
						<div class="slide_wrap">
				        	<div class="slide_inner slider1_inner">
					            <div class="slide_elem_1">
					            	<a href="/theme/detail.php?theme=3305">
					            		<div class="pic" style="background-image:url('http://www.yologuys.com/Escape_img/theme/3305.jpg');"></div>
						            </a>
					            </div>
					        </div>
					        <div class="info">
					         	<div class="kinds_loc">
					            	<span>코미디</span>
					            </div>

					            <div class="name">
					            	<span class="name_font_fit_div"><a href="/theme/detail.php?theme=3305">LUCKY</a></span>
					            </div>
					        </div>
					    </div>
			        </div>
					<div class="img-wrap slide slide1">
						<div class="slide_wrap">
				        	<div class="slide_inner slider1_inner">
					            <div class="slide_elem_1">
					            	<a href="/theme/detail.php?theme=3304">
					            		<div class="pic" style="background-image:url('http://www.yologuys.com/Escape_img/theme/3304.jpg');"></div>
						            </a>
					            </div>
					        </div>
					        <div class="info">
					         	<div class="kinds_loc">
					            	<span>?</span>
					            </div>

					            <div class="name">
					            	<span class="name_font_fit_div"><a href="/theme/detail.php?theme=3304">XXX 클럽</a></span>
					            </div>
					        </div>
					    </div>
			        </div>
					<div class="img-wrap slide slide1">
						<div class="slide_wrap">
				        	<div class="slide_inner slider1_inner">
					            <div class="slide_elem_1">
					            	<a href="/theme/detail.php?theme=3297">
					            		<div class="pic" style="background-image:url('http://www.yologuys.com/Escape_img/theme/3297.jpg');"></div>
						            </a>
					            </div>
					        </div>
					        <div class="info">
					         	<div class="kinds_loc">
					            	<span>감성</span>
					            </div>

					            <div class="name">
					            	<span class="name_font_fit_div"><a href="/theme/detail.php?theme=3297">금잔화</a></span>
					            </div>
					        </div>
					    </div>
			        </div>
			    </div>

			    <ul id='carousel-custom-dots' class='carousel-custom-dots owl-dots'>
				</ul>

				<link rel="stylesheet" href="https://www.roomescape.co.kr/_template/assets/lib/owl-carousel/css/owl.carousel.css" />
				<link rel="stylesheet" href="https://www.roomescape.co.kr/_template/assets/lib/owl-carousel/css/owl.theme.default.css" />
				<script src='https://www.roomescape.co.kr/_template/assets/lib/owl-carousel/js/owl.carousel.js'></script>
				<script>
			  		$('#owl_carousel_1').owlCarousel({
					    nav: true,
					    dots:true,
					    dotsEach:true, /* dots 항상 표시 */
					    
					    margin:30, /* 슬라이드 각 요소의 margin값 넣기 */

					    center:true, /* 첫번째 요소가 가운데로 배치 */
					    loop:true,

					    dotsContainer: '#carousel-custom-dots',
					    
				        navText : ['<img class="section_slider_nav_btn" src="https://www.roomescape.co.kr/_template/assets/img/theme/detail/def_info/sub_banner_slider_prev.jpg" alt="" />','<img class="section_slider_nav_btn" src="https://www.roomescape.co.kr/_template/assets/img/theme/detail/def_info/sub_banner_slider_next.jpg" alt="" />'],

					    mouseDrag: true,
					    responsiveClass: true,
					    responsive: {
					        0:{
					          items: 1,
					          loop:true
					        },
					        320:{
					          items: 1,
					          loop:true
					        },
					        600:{
					          items: 3,
					          loop:true
					        },
					        1000:{
					          items: 3,
					          loop:true
					        },
					        1280:{
					          items: 5,
					          loop:true
					        },
					        1400:{
					          items: 5,
					          loop:true
					        }
					    },
					    onInitialized: function(e) {

					    	var idx = e.item.index;

				        	var $item_length = $('#owl_carousel_1 .owl-item.active').length

				        	if($item_length == 5 || $item_length == 6) {

				        		$('#owl_carousel_1 .owl-item.middle').removeClass('middle');
				        		$('#owl_carousel_1 .owl-item.medium').removeClass('medium');
				        		$('#owl_carousel_1 .owl-item').eq(idx+2).addClass('middle');
				        		$('#owl_carousel_1 .owl-item').eq(idx-1).addClass('medium');
				        		$('#owl_carousel_1 .owl-item').eq(idx+1).addClass('medium');

					        } else if($item_length == 3) {

					        	$('#owl_carousel_1 .owl-item.middle').removeClass('middle');
					        	$('#owl_carousel_1 .owl-item.medium').removeClass('medium');
					        	$('#owl_carousel_1 .owl-item').eq(idx+1).addClass('middle');
					        	$('#owl_carousel_1 .owl-item').eq(idx-1).addClass('medium');
					        	$('#owl_carousel_1 .owl-item').eq(idx+1).addClass('medium');

					        } else if($item_length == 1) {

					        	$('#owl_carousel_1 .owl-item.middle').removeClass('middle');
					        	$('#owl_carousel_1 .owl-item.medium').removeClass('medium');
					        	$('#owl_carousel_1 .owl-item').eq(idx).addClass('middle');
					        	$('#owl_carousel_1 .owl-item').eq(idx-1).addClass('medium');
					        	$('#owl_carousel_1 .owl-item').eq(idx+1).addClass('medium');

					        }

					       	
					    }
					});

					$('#owl_carousel_1').on('initialized.owl.carousel translate.owl.carousel', function(e){
				        var idx = e.item.index;

				        console.log(e.item.index);
				        console.log($('#owl_carousel_1 .owl-item.active').length);

				        var $item_length = $('#owl_carousel_1 .owl-item.active').length

				        if($item_length == 5 || $item_length == 6)  {

				        	$('#owl_carousel_1 .owl-item.middle').removeClass('middle');
				        	$('#owl_carousel_1 .owl-item.medium').removeClass('medium');
				        	$('#owl_carousel_1 .owl-item').eq(idx+2).addClass('middle');
				        	$('#owl_carousel_1 .owl-item').eq(idx-1).addClass('medium');
				        	$('#owl_carousel_1 .owl-item').eq(idx+1).addClass('medium');

				        } else if($item_length == 3) {

				        	$('#owl_carousel_1 .owl-item.middle').removeClass('middle');
				        	$('#owl_carousel_1 .owl-item.medium').removeClass('medium');
				        	$('#owl_carousel_1 .owl-item').eq(idx+1).addClass('middle');
				        	$('#owl_carousel_1 .owl-item').eq(idx-1).addClass('medium');
				        	$('#owl_carousel_1 .owl-item').eq(idx+1).addClass('medium');

				        } else if($item_length == 1) {

				        	$('#owl_carousel_1 .owl-item.middle').removeClass('middle');
				        	$('#owl_carousel_1 .owl-item.medium').removeClass('medium');
				        	$('#owl_carousel_1 .owl-item').eq(idx).addClass('middle');
				        	$('#owl_carousel_1 .owl-item').eq(idx-1).addClass('medium');
				        	$('#owl_carousel_1 .owl-item').eq(idx+1).addClass('medium');

				        }

				        
				    });

					$('document').ready(function() {
	  					var owl = $('#owl_carousel_1');
				    	$('#carousel-custom-dots').on("click",".owl-dot.active",function () {
					  		owl.trigger('refresh.owl.carousel');
						});
					});
			  	</script>
			  	<style>
			  		#owl_carousel_1 .owl-item {
					  display:inline-block;
					  opacity: 0;
					  transform: scale(0.8);
					  -ms-transform: scale(0.8);
					  transition: all .2s;
					  -webkit-transform: all .2s;
					  z-index: 1;
					}
					
					#owl_carousel_1 .active { 
						opacity: 0.5; 
					}
					
					#owl_carousel_1 .active.middle_beside {
					  transform: scale(0.9);
					  -ms-transform: scale(0.9);
					  opacity: 0.8;
					  margin: 0 -1%;
					  z-index: 2;
					  margin-left: 10px;
		    		  margin-right: 30px;
					}
					
					#owl_carousel_1 .active.center {
					  transform: scale(1.1);
					  -ms-transform: scale(1.1);
					  opacity: 1;
					  z-index: 3;
					}

					@media all and (max-width:599px) {
						#owl_carousel_1 .active.center {
							transform: scale(0.9) !important;
					  		-ms-transform: scale(0.9) !important;
						}

						.theme .container .sub_banner .banner_title {
							margin-bottom:0;
						}
					}

					@media all and (max-width:380px) {
						#owl_carousel_1 .active.center {
							transform: scale(0.9) !important;
					  		-ms-transform: scale(0.9) !important;
						}

						.theme .container .sub_banner .banner_title {
							margin-bottom:0;
						}
					}
			  	</style>
		</div>
			<div class="container_inner section section_search">
				<div class="fixing_wid fixing_wid_960">
					<div class="search">
						<div class="tag">
							<img src="https://www.roomescape.co.kr/_template/assets/img/theme/search_tag.jpg" alt="" />
						</div>

						<div class="input">
							<input type="text" id="theme_search" class="theme_search" />
							<button id="search_keyword" type="button"><i class="fa fa-search"></i></button>
						</div>
					</div>

					<div class="clearfix"></div>

					<div class="loc">
						<div id="loc_category_reveal" class="tag">
							<span>지역</span>
						</div>

						<div id="loc_category" class="category">
							<ul>
								<li class="select select_1">
									<span class="loc_select_btn select_inner select_1_inner" data-loc="전국">
										전국
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_2_inner" data-loc="서울">
										서울(기타)
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_4_inner" data-loc="홍대">
										홍대(서울)
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_5_inner" data-loc="강남">
										강남(서울)
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_6_inner" data-loc="건대">
										건대(서울)
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_7_inner" data-loc="경기">
										경기(기타)
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_8_inner" data-loc="부평">
										부평
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_9_inner" data-loc="인천">
										인천(기타)
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_10_inner" data-loc="수원">
										수원
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_11_inner" data-loc="안산">
										안산
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_12_inner" data-loc="부산">
										부산
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_13_inner" data-loc="대구">
										대구
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_14_inner" data-loc="울산">
										울산
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_15_inner" data-loc="대전">
										대전
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_16_inner" data-loc="광주">
										광주
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>
								
								<li class="select select_1">
									<span class="loc_select_btn select_inner select_17_inner" data-loc="경상">
										경상(기타)
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_18_inner" data-loc="전라">
										전라(기타)
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_19_inner" data-loc="충청">
										충청(기타)
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_20_inner" data-loc="강원">
										강원
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="loc_select_btn select_inner select_21_inner" data-loc="제주">
										제주
									</span>
								</li>
							</ul>
						</div>
					</div>
					
					<div class="genre">
						<div id="genre_category_reveal" class="tag">
							<span>장르</span>
						</div>

						<div id="genre_category" class="category">
							<ul>
								<li class="select select_1">
									<span class="genre_select_btn select_inner select_1_inner" data-genre="전체">
										전체
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_2_inner" data-genre="추리">
										추리
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_2_inner" data-genre="스릴러">
										스릴러
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_4_inner" data-genre="감성">
										감성
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_5_inner" data-genre="로맨스">
										로맨스
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_6_inner" data-genre="범죄">
										범죄
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_7_inner" data-genre="코미디">
										코미디
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_8_inner" data-genre="모험">
										모험
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_9_inner" data-genre="판타지">
										판타지
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_10_inner" data-genre="19금">
										19금
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_11_inner" data-genre="공포">
										공포
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_12_inner" data-genre="드라마">
										드라마
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_13_inner" data-genre="미스터리">
										미스터리
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_14_inner" data-genre="아케이드">
										아케이드
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_15_inner" data-genre="액션">
										액션
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_16_inner" data-genre="야외">
										야외
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>
								
								<li class="select select_1">
									<span class="genre_select_btn select_inner select_17_inner" data-genre="음악">
										음악
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_18_inner" data-genre="잠입">
										잠입
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_19_inner" data-genre="역사">
										역사
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_20_inner" data-genre="SF">
										SF
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_1">
									<span class="genre_select_btn select_inner select_21_inner" data-genre="?">
										?
									</span>
								</li>
							</ul>
						</div>
					</div>

					<div class="kinds">
						<div id="kinds_category_reveal" class="tag">
							<span>유형</span>
						</div>

						<div id="kinds_category" class="category">
							<ul>
								<li class="select select_1">
									<span class="kinds_select_btn select_inner select_1_inner" data-kinds="rock">
										자물쇠
									</span>
								</li>
								
								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_2">
									<span class="kinds_select_btn select_inner select_2_inner" data-kinds="device">
										장치 
									</span>
								</li>
								
								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_3">
									<span class="kinds_select_btn select_inner select_3_inner" data-kinds="both">
										비슷한 비율
									</span>
								</li>
							</ul>
						</div>
					</div>

					<div class="allow_user_number">
						<div id="user_number_category_reveal" class="tag">
							<span>추천인원</span>
						</div>

						<div id="user_number_category" class="category">
							<ul>
								<li class="select select_1">
									<span class="user_number_select_btn select_inner select_1_inner" data-user-number="2">
										2명
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_2">
									<span class="user_number_select_btn select_inner select_2_inner" data-user-number="3">
										3명
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_3">
									<span class="user_number_select_btn select_inner select_3_inner" data-user-number="4">
										4명
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_4">
									<span class="user_number_select_btn select_inner select_4_inner" data-user-number="5">
										5명 이상
									</span>
								</li>
							</ul>
						</div>
					</div>

					<div class="difficulty">
						<div id="difficulty_category_reveal" class="tag">
							<span>난이도</span>
						</div>

						<div id="difficulty_category" class="category">
							<ul>
								<li class="select select_1">
									<span class="difficulty_select_btn select_inner select_1_inner" data-difficulty="1">1</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_2">
									<span class="difficulty_select_btn select_inner select_2_inner" data-difficulty="2">2</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_3">
									<span class="difficulty_select_btn select_inner select_3_inner" data-difficulty="3">3</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_4">
									<span class="difficulty_select_btn select_inner select_4_inner" data-difficulty="4">4</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_5">
									<span class="difficulty_select_btn select_inner select_5_inner" data-difficulty="5">5</span>
								</li>
							</ul>
						</div>
					</div>

					<div class="activity">
						<div id="activity_category_reveal" class="tag">
							<span>활동성</span>
						</div>

						<div id="activity_category" class="category">
							<ul>
								<li class="select select_1">
									<span class="activity_select_btn select_inner select_1_inner" data-activity="1">
										적음
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_2">
									<span class="activity_select_btn select_inner select_1_inner" data-activity="2">
										보통
									</span>
								</li>

								<li class="pipe">
									<span>|</span>
								</li>

								<li class="select select_3">
									<span class="activity_select_btn select_inner select_1_inner" data-activity="3">
										많음
									</span>
								</li>
							</ul>
						</div>
					</div>

					<div class="my_review_close">
						<div id="my_review_close_category_reveal" class="tag my_review_close_category_reveal">
							<span>리뷰</span>
						</div>

						<div id="my_review_close_category" class="category">
							<ul>
								<li class="select select_1">
									<span class="my_review_close_select_btn select_inner select_1_inner" data-my-review="close">
										내 리뷰 제외하기
									</span>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="fixing_wid fixing_wid_960">
					<div class="search_btn_box">
						<button type="button" id="search_btn">검색</button>
					</div>
				</div>
			</div>

			<div class="container_inner section section_result">
				<div class="fixing_wid fixing_wid_960">
					<div id="theme_list_row" class="row"></div>

					<div id="theme_list_more" class="theme_list_more">
						<div id="theme_list_more_inner" class="theme_list_more_inner">
							<button id="theme_list_more_btn" type="button">more</button>
						</div>
					</div>
				</div>
			</div>





<%@ include file="include/footer.jsp"%>






</body>
</html>