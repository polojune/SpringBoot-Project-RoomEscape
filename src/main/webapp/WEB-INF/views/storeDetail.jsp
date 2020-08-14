<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ko"><head>
<meta charset="utf-8">

<!-- 반응형 meta -->
<meta name="viewport" content="width=device-width, minimum-scale=1, maximum-scale=1, user-scalable=yes">

<!-- IE 대응 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<link href="/css/font.css?ver=" rel="stylesheet">

<link href="//netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">

<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<link href="/css/reset.css?ver=171736" rel="stylesheet">
<link href="/css/style.css?ver=171736" rel="stylesheet">

<link href="/css/common.css?ver=171736" rel="stylesheet">

<link href="/css/header.css?ver=171736" rel="stylesheet">
<link href="/css/footer.css?ver=171736" rel="stylesheet">

<link href="/css/sub_banner.css?ver=171736" rel="stylesheet">
<!-- <link href="/css/sub_banner.css?ver=171736" rel="stylesheet" /> -->



<link href="/css/popup_layer.css?ver=171736" rel="stylesheet">
<link href="/css/store.detail.popup.css?ver=171736" rel="stylesheet">
<link href="/css/store.detail.css?ver=171736" rel="stylesheet">



<link href="/css/login_layer.css?ver=171736" rel="stylesheet">

<link href="/css/nonbootstrap.css?ver=171736" rel="stylesheet">






<!-- include summernote css/js -->
<link href="/css/summernote.css?ver=171736" rel="stylesheet">
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
</head>
<body class="store detail" cz-shortcut-listen="true">



<%@ include file="include/nav.jsp"%>




		<div class="container_inner section section_def_info">
			<div class="def_info_banner">
				<div class="def_info_banner_inner">
					<div class="content">
						<div id="def_info_slider" class="owl-carousel owl-theme">
							<div class="slide">
								<div class="slide_inner">
									<div class="pic" style="background-image:url(http://www.yologuys.com/Escape_img/company_focus/676_1.jpg)"></div>
								</div>
							</div>
						</div>

						<div class="slider_nav">
							<div class="am-next" style="position:absolute;top:0;z-index:9999;">
								<img src="https://www.roomescape.co.kr/_template/assets/img/store/detail/section_slider_next.jpg" alt="">
							</div>

							<div type="button" class="am-prev" style="position:absolute;top:0;z-index:9999;">
								<img src="https://www.roomescape.co.kr/_template/assets/img/store/detail/section_slider_prev.jpg" alt="">
							</div>
						</div>
					</div>

					<div class="def_info">
						<div class="fixing_wid">
							<div class="def_info_inner">
								<div class="def_info_title">
									<span>${storeDetailRespDto.store.intro}</span>
								</div>

								<div class="def_info_desc">
									<span>${storeDetailRespDto.store.intro}</span>
								</div>

								<div class="star_n_users">
									<span class="tag img">
										<img src="/images/star/${storeDetailRespDto.store.rating/2}star.png" alt="1">
									</span>
								</div>
							</div>

							<div class="reserve_n_contact">
								<div class="reserve_n_contact_inner">
									<div class="reserve_btn">
										<span>
											<button type="button" id="no_alliance_reserve">예약하기</button>
										</span>
									</div>

									<div class="to_homepage">
										<span>
											<a href="http://mdpk.co.kr/" target="_blank">업체 홈페이지</a>
										</span>
									</div>

									<div class="favor_btn">
										<button type="button" id="add_favorite_cafe">
											<img src="https://www.roomescape.co.kr/_template/assets/img/store/detail/add_favorite.png?ver=171736" alt="">
										</button>

										<script>
											$("#add_favorite_cafe").click(function(e) {
												e.preventDefault();

												$.ajax({
													async:false,
													type: "POST",
													url: "https://www.roomescape.co.kr/bbs/ajax.add.myfavorite.cafe.php",
													data: {
														"store_id" : "676",
														"user_id" : ""
													},
													dataType: "json",
													cache:false,
													success: function(data) {

														var $result = eval(data);

														if($result.result !== true) {
															alert($result.msg);
														}

														if($result.result === true) {
															alert($result.msg);
															location.reload();
														}
													}
												});
											});
										</script>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	  	<style>
	  		#def_info_slider {
	  			transform: scale(1); 
	  			text-align: center;
	  		}

	  		#def_info_slider .slide {
	  			/*width:334px;*/
	  			width:21%;
    			transform: scale(1.1) !important;
	  		}

	  		.store.detail .slider_nav {
	  			display:none;
	  		}
	  	</style>

	  	<script>
	  		$('document').ready(function() {
	  			var owl = $('#def_info_slider');

				$(document).on("click", ".am-prev", function() {
					owl.trigger('prev.owl.carousel');
				});

				$(document).on("click", ".am-next", function() {
					owl.trigger('next.owl.carousel');
				});
	  		});	
	  	</script>

		<div class="container_inner section section_det_info">
			<div class="fixing_wid">
				<div class="det_info_inner intro">
				
					<div class="preface">
						<h2>소개</h2>
					</div>

					<div class="desc">
						<p>
							<span>
									<span>${storeDetailRespDto.store.intro}</span>
							</span>
						</p>
					</div>
				</div>

				<div class="det_info_inner theme_info">
					<div class="preface">
						<h2>
							테마
						</h2>
					</div>

					<div class="theme_list">
				
						<div class="theme">
					
						 <c:forEach var="themeDto" items="${storeDetailRespDto.themes}" > 
							<div class="theme_inner">
								<div class="pic" ><img src="${themeDto.themeImg}"width="210" height="200"/>  <a href="/theme/detail.php?theme=3310"></a></div>

								<div class="info">
									<div class="name font_fit_div" style="font-size: 13.4297px; line-height: 26.8594px;">
										<p>
											<span><a href="/theme/detail.php?theme=3310">${themeDto.name}</a></span>
										</p>
									</div>

									<div class="genre_n_star">
									
                                    <span class="text genre">${themeDto.genre}</span>
									<span class="text tag">평점</span>

										<span class="img">
											<img src="/images/star/${themeDto.rating/2}star.png" alt="">
										</span>

										<span class="text value">
											${themeDto.rating}
										</span>
									</div>
								</div>
							</div>
						</c:forEach>
						</div>
					</div>
				</div>

				<script>

					var $nameFontFitDiv = $('.name.font_fit_div');

					$(document).ready(function() {
						var $heiNameFontFitDiv = $nameFontFitDiv.height();

						$nameFontFitDiv.css({
							'font-size': ($heiNameFontFitDiv/2) + 'px',
							'line-height': $heiNameFontFitDiv + 'px'
						});

					});

					$(window).resize(function () {

						var $heiNameFontFitDiv = $nameFontFitDiv.height();

						$nameFontFitDiv.css({
							'font-size': ($heiNameFontFitDiv/2) + 'px',
							'line-height': $heiNameFontFitDiv + 'px'
						});
					});
				</script>

				<div class="det_info_inner loc">
					<div class="preface">
						<h2>
							정보
						</h2>
					</div>

					<div class="loc_info">
						<div class="phone">
							<span class="text tag"><img src="https://www.roomescape.co.kr/_template/assets/img/store/detail/call.jpg" alt=""></span>
							<span class="text value">02-462-2537</span>
							<span class="contact_btn"><a href="tel:02-462-2537">전화하기</a></span>
						</div>

						<div class="address">
							<span class="tag"><img src="https://www.roomescape.co.kr/_template/assets/img/store/detail/loc.jpg" alt=""></span>
							<span class="text value">${storeDetailRespDto.store.info}</span>
						</div>
					</div>
				</div>

				<div class="det_info_inner fee">
					<div class="preface">
						<h2>요금</h2>
					</div>

					<div class="fee_info">
						<div class="type">	
							<span class="tag">홈페이지 참조</span>
							<span class="value">0</span>
						</div>
					</div>
				</div>

				<div class="det_info_inner map_box">
					<div class="map_box_inner">
						<div id="map" class="map" style="overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://i1.daumcdn.net/dmaps/apis/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute;"><div style="position: absolute; z-index: 0;"></div><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map0.daumcdn.net/map_2d/1912uow/L3/1987/920.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -149px; top: 393px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/1912uow/L3/1987/921.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 107px; top: 393px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/1912uow/L3/1987/922.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 363px; top: 393px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/1912uow/L3/1987/923.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 619px; top: 393px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/1912uow/L3/1988/920.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -149px; top: 137px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/1912uow/L3/1988/921.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 107px; top: 137px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/1912uow/L3/1988/922.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 363px; top: 137px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/1912uow/L3/1988/923.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 619px; top: 137px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/1912uow/L3/1989/920.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -149px; top: -119px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/1912uow/L3/1989/921.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 107px; top: -119px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/1912uow/L3/1989/922.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 363px; top: -119px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/1912uow/L3/1989/923.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 619px; top: -119px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 1;"></div><div style="width: 647px; height: 450px; position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; width: 3235px; height: 2250px; left: -1294px; top: -900px;" viewBox="0 0 3235 2250"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"><div style="position: absolute; margin: -39px 0px 0px -14px; z-index: 0; left: 324px; top: 225px;"><img draggable="false" src="https://t1.daumcdn.net/mapjsapi/images/marker.png" alt="" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 29px, 42px, 0px); top: 0px; left: 0px; width: 29px; height: 42px;"><img src="https://i1.daumcdn.net/dmaps/apis/transparent.gif" alt="" draggable="false" usemap="#daum.maps.Marker.Area:1" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 29px; height: 42px;"><map id="daum.maps.Marker.Area:1" name="daum.maps.Marker.Area:1"><area href="javascript:void(0)" alt="" shape="poly" coords="14,39,9,27,4,21,1,16,1,10,4,4,11,0,18,0,25,4,28,10,28,16,25,21,20,27" title="" style="-webkit-tap-highlight-color: transparent;"></map></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div><div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">50m</div></div><div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>
					</div>
				</div>

				<div id="review" class="det_info_inner review">
					<div class="preface">
						<h2>
							리뷰
						</h2>
					</div>
                 
					<div class="review_input_box">
								<div class="review_input_box_caption">
									<div class="total_star">
										<p>	
											<span>5.0</span>
											<span>점</span>

											<span>
												<img src="https://www.roomescape.co.kr/_template/assets/img/store/detail/5star.png?ver=" alt="">
											</span>
										</p>
									</div>

									<div class="notice">
										<p>
											<span class="icon">
												<i class="fa fa-bullhorn"></i>
											</span>

											<span class="text">
												테마 스포일러나 근거없는 비방글은 삭제될 수 있습니다.
											</span>
										</p>
									</div>
								</div>

								<div class="reviewFrm_box">
									<form id="reviewFrm" class="reviewFrm" name="reviewFrm" method="post">

										<input type="hidden" name="star" value="">

										<div class="reviewFrm_inner">
											<div class="review_star_box">
												<div class="review_info">
													<div class="writer">
														<span class="text">
															로그인 후 이용해주세요.
														</span>
													</div>

												</div>

												<div class="rating_star no_login_no_review_event">
													<img style="width:100%;cursor:pointer;" src="https://www.roomescape.co.kr/_template/assets/img/theme/detail/review/5star.png" alt="">
												</div>
											</div>

											<textarea class="review_content no_login_no_review_event" id="review_content" name="review_content" placeholder="로그인 후 이용해주세요."></textarea>
										</div>

							  			<div class="reviewFrm_btn_box">
							  			    <input type="button" id="reviewFrm_submit" class="reviewFrm_submit no_login_no_review_event" value="후기 등록">
							  			</div>
									</form>
								</div>
							</div>
                   
							</div>
						 <c:forEach var="reviewDto" items="${storeDetailRespDto.reviews}">	
							<div class="memb_review_box">
								<div class="memb_review">
									<div class="review_top">
										<div class="review_writer_or_star">
											<div class="writer">
												<span class="name text">${reviewDto.username}</span>
											</div>
										</div>

										<div class="review_write_datetime">
											<span class="datetime text">20200801</span>
										</div>

										<div class="star">
											<span class="value_img">
												<img src="/images/star/${reviewDto.rating/2}star.png" alt="">
											</span>
											<span class="text">${reviewDto.rating}</span>
											<span class="tag">점</span>
										</div>
									</div>

									<div class="review_bottom">
										<p>
											<span>
												${reviewDto.content}
											</span>
										</p>
									</div>
								</div>

							</div>
					   </c:forEach>
							
				</div>
			</div>
		
	

	<script>
		function isEmpty(value) { 
            if( value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length ) ){ 
                return true 
            } else { 
                return false 
            } 
        }


		$("#reviewFrm").submit(function(e) {
			e.preventDefault();

			if(isEmpty($("#datetime").text()) === true) {
				alert("작성날짜가 없습니다.");
				return false;
			}

			if(isEmpty($("#rated_star").val()) === true) {
				alert("평점을 입력해주세요.");
				return false;
			}

			if(isEmpty($("#review_content").val()) === true) {
				alert("작성해주세요.");
				return false;
			}

			$.ajax({
				type: "POST",
				url: "https://www.roomescape.co.kr/bbs/review.write.ok.php",
				data: {
					"store_id" : "676",
					"user_id" : "",
					"review_type" : "store",
					"review_writed_data" : $("#datetime").text(),
					"review_content" : $("#review_content").val(),
					"review_reated_star" : $("#rated_star").val()
				},
				dataType: "json",
				cache:false,
				success: function(data) {

					$result = eval(data);

					if($result.review_writed_result == "fail") {
						alert($result.msg);
						return false;
					}

					if($result.review_writed_result == "exist") {
						alert($result.msg);
						return false;
					}

					if($result.review_writed_result == "succed") {
						alert($result.msg);
						location.reload();
					}
				}
			});
		});
	</script>

	
	<script>
		$(".no_login_no_review_event").click(function() {
			$(".review_content.no_login_no_review_event").val("");

			$("body").css("overflow","hidden");
			$("#login_wrap_back").css("display","block");
			$("#login_wrap").css("display","block");
			
			var agent = navigator.userAgent.toLowerCase();
			if((navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1)) {
				//ie
			    $("#login_wrap_back").addClass("ie");
			} else {
			     //not ie
			    $(".container").addClass("not_ie");
			    $("#login_wrap_back").addClass("not_ie");
			}
		});
	</script>




<%@ include file="include/footer.jsp"%>





	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ce18cab36a449220fafb15c9ed629ece"></script><script charset="UTF-8" src="https://t1.daumcdn.net/mapjsapi/js/main/4.2.0/kakao.js"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng("37.5413565", "127.0678125"),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);

		var markerPosition  = new kakao.maps.LatLng("37.5413565", "127.0678125"); 

		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		marker.setMap(map);
	</script>

	<script>
		$("#no_alliance_reserve").click(function() {
			$("body.store.detail").append('<div id="popup_layer_back" class="popup_layer_back" style="width:100%;"></div>');

			var $element = '<div id="popup_layer" class="popup_layer">';
			$element += '<div id="popup_layer__inner" class="popup_layer__inner">';
			$element += '<div class="aliiance_notice">전국 방탈출 예약 제휴 업체가 아닙니다.<br />업체 예약 홈페이지로 이동하시겠습니까?</div>';
			$element += '<div class="aliiance_btn">';
			$element += '<a href="http://mdpk.co.kr/sub_02/sub02_1.html?JIJEM=S8">예약 홈페이지 이동</a><button type="button" id="popup_close">취소</button>';
			$element += '</div></div>';

			$("body.store.detail").append($element);

			$("body").css("overflow","hidden");
			$("#popup_layer_back").css("display","block");
			$("#popup_layer").css("display","block");
			
			var agent = navigator.userAgent.toLowerCase();
			if((navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1)) {
				//ie
			    $("#popup_layer_back").addClass("ie");
			} else {
			     //not ie
			    $(".container").addClass("not_ie");
			    $("#popup_layer_back").addClass("not_ie");
			}

		});

		$("body").on("click","#popup_close",function() {

			$('body').css("overflow","auto");
			$("#popup_layer_back").css("display","none");
			$("#popup_layer").css("display","none");

			var agent = navigator.userAgent.toLowerCase();
			if((navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1)) {
				//ie
			    $("#popup_layer_back").removeClass("ie");
			} else {
			     //not ie
			     $(".container").removeClass("not_ie");
			     $("#popup_layer_back").removeClass("not_ie");
			}
		});

		$("body").on("click","#popup_layer_back",function() {
			$('body').css("overflow","auto");
			$("#popup_layer_back").css("display","none");
			$("#popup_layer").css("display","none");

			var agent = navigator.userAgent.toLowerCase();
			if((navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1)) {
				//ie
			    $("#popup_layer_back").removeClass("ie");
			} else {
			     //not ie
			     $(".container").removeClass("not_ie");
			     $("#popup_layer_back").removeClass("not_ie");
			}
		});
	</script>

</body></html>