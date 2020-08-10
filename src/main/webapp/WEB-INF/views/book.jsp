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

	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />


	<link href="/css/reset.css?ver=171736" rel="stylesheet" />
	<link href="/css/style.css?ver=171736" rel="stylesheet" />

	<link href="/css/common.css?ver=171736" rel="stylesheet" />

	<link href="/css/header.css?ver=171736" rel="stylesheet" />
	<link href="/css/footer.css?ver=171736" rel="stylesheet" />

	<link href="/css/sub_banner.css?ver=171736" rel="stylesheet" />
	<!-- <link href="/css/sub_banner.css?ver=171736" rel="stylesheet" /> -->





	<link href="/css/book.css?ver=171736" rel="stylesheet" />
	<link href="/css/vanillaCalendar.css" rel="stylesheet" />



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
</head>

<body class="book list">


<%@ include file="include/nav.jsp"%>




		<div class="sub_banner">
			<div class="banner_title"
				style="background-image:url('https://www.roomescape.co.kr/_template/assets/img/reserve/book_sub_banner_back.jpg');">
				<img src="https://www.roomescape.co.kr/_template/assets/img/reserve/book_sub_banner_text.png" alt="" />
			</div>

			<div class="banner_title m"
				style="background-image:url('https://www.roomescape.co.kr/_template/assets/img/reserve/m_book_sub_banner_back.jpg');">
			</div>
		</div>


		<div class="book_inner inner_1_depth">
			<div class="book_panel">
				<div class="calender">
					<div id="v-cal">
						<div class="vcal-header">
							<button class="vcal-btn" data-calendar-toggle="previous"><!-- 아래 svg는 각각 <-, -> 화살표임 -->
								<svg height="24" version="1.1" viewbox="0 0 24 24" width="24"
									xmlns="http://www.w3.org/2000/svg">
									<path d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z">
									</path>
								</svg>
							</button>

							<div class="vcal-header__label" data-calendar-label="month">
								March 2017
							</div>


							<button class="vcal-btn" data-calendar-toggle="next">
								<svg height="24" version="1.1" viewbox="0 0 24 24" width="24"
									xmlns="http://www.w3.org/2000/svg">
									<path d="M4,11V13H16L10.5,18.5L11.92,19.92L19.84,12L11.92,4.08L10.5,5.5L16,11H4Z">
									</path>
								</svg>
							</button>
						</div>
						<div class="vcal-week">
							<span>Mon</span>
							<span>Tue</span>
							<span>Wed</span>
							<span>Thu</span>
							<span>Fri</span>
							<span>Sat</span>
							<span>Sun</span>
						</div>
						<div class="vcal-body" data-calendar-area="month"></div>
					</div>

					<!-- 달력 컨트롤에서 날짜를 선택하면 선택한 값이 아래 태그 안에 들어간다 -->
					<p class="demo-picked"><span data-calendar-label="picked"></span>
					</p>
				</div>

				<div class="location">
					<div class="loc_header">
						<span>지역</span>
					</div>

					<div class="loc_list">
						<div class="loc all" data-loc="전국">
							<span>전국</span>
						</div>

						<div class="loc seoul" data-loc="서울">
							<span>서울</span>
						</div>

						<div class="loc hongdae" data-loc="홍대">
							<span>홍대</span>
						</div>

						<div class="loc gangman" data-loc="강남">
							<span>강남</span>
						</div>

						<div class="loc gundae" data-loc="건대">
							<span>건대</span>
						</div>

						<div class="loc gyeonggi" data-loc="경기">
							<span>경기</span>
						</div>

						<div class="loc incheon" data-loc="인천">
							<span>인천</span>
						</div>

						<div class="loc suwon" data-loc="수원">
							<span>수원</span>
						</div>

						<div class="loc ansan" data-loc="안산">
							<span>안산</span>
						</div>

						<div class="loc busan" data-loc="부산">
							<span>부산</span>
						</div>

						<div class="loc daegu" data-loc="대구">
							<span>대구</span>
						</div>

						<div class="loc ulsan" data-loc="울산">
							<span>울산</span>
						</div>

						<div class="loc daejeon" data-loc="대전">
							<span>대전</span>
						</div>

						<div class="loc gwangju" data-loc="광주">
							<span>광주</span>
						</div>

						<div class="loc gyongsang" data-loc="경상">
							<span>경상</span>
						</div>

						<div class="loc jeonla" data-loc="전라">
							<span>전라</span>
						</div>

						<div class="loc chungcheong" data-loc="충청">
							<span>충청</span>
						</div>

						<div class="loc gangwon" data-loc="강원">
							<span>강원</span>
						</div>

						<div class="loc jeju" data-loc="제주">
							<span>제주</span>
						</div>
					</div>
				</div>

				<div class="store_selector">
					<div class="store_header">
						<span>매장</span>
					</div>

					<div id="store_list" class="store_list">
						<div class="store" data-store="116">
							<span>솔버 1호점</span>
						</div>
						<div class="store" data-store="117">
							<span>솔버 2호점</span>
						</div>
						<div class="store" data-store="119">
							<span>덤앤더머 대학로점</span>
						</div>
						<div class="store" data-store="321">
							<span>비밀의화원 홍대점</span>
						</div>
						<div class="store" data-store="335">
							<span>비밀의화원 강남점</span>
						</div>
						<div class="store" data-store="413">
							<span>덤앤더머 홍대점</span>
						</div>
						<div class="store" data-store="448">
							<span>비밀의화원 서면점</span>
						</div>
						<div class="store" data-store="465">
							<span>비밀의화원 혜화점</span>
						</div>
						<div class="store" data-store="529">
							<span>비밀의화원 대구 동성로점</span>
						</div>
						<div class="store" data-store="647">
							<span>비밀의화원 미드나잇점</span>
						</div>

					</div>
				</div>

				<div class="theme_selector">
					<div class="theme_header">
						<span>테마</span>
					</div>

					<div id="theme_list" class="theme_list"></div>
				</div>


				<div class="time_selector">
					<div class="time_header">
						<span>시간</span>
					</div>

					<div id="time_list" class="time_list"></div>
				</div>

				<div class="book_btn_box">
					<button type="button" id="book_btn">
						예약하기
					</button>
				</div>
			</div>
		</div> <!-- book_inner inner_1_depth end -->



<%@ include file="include/footer.jsp"%>



<script src="/js/vanillaCalendar.js" type="text/javascript"></script>
<script src="/js/book.js" type="text/javascript"></script>
</body>

</html>