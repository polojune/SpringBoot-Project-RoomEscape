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



<link href="/css/board.css?ver=171736" rel="stylesheet">



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
<body class="board list" cz-shortcut-listen="true">



<%@ include file="include/nav.jsp"%>



	<div class="sub_banner">
		<div class="banner_title" style="background-image:url('https://www.roomescape.co.kr/_template/assets/img/board/free_sub_banner_back.jpg?ver=');">
			<a href="https://www.roomescape.co.kr/board/list.php?board=free">
				<img src="https://www.roomescape.co.kr/_template/assets/img/board/free_sub_banner_text.png?ver=" alt="">
			</a>
		</div>

		<div class="banner_title m" style="background-image:url('https://www.roomescape.co.kr/_template/assets/img/board/m_free_sub_banner_back.jpg?ver=');"><a href="https://www.roomescape.co.kr/board/list.php?board=free"></a></div>
	</div>


		<div class="board_inner inner_1_depth">
			<div class="board_inner inner_2_depth">
			
				<div class="clearfix"></div>

				<div class="board_panel">

						<div class="cap">
							<div class="page_info">
								<span>페이지정보 : 1/3</span>
							</div>

							<div class="search">

								<div class="keyword">
										<input type="text" id="search_query" class="search_query" style="width:calc(100% - 66px)">
										<button id="search" type="button"><i class="fa fa-search"></i></button>
								</div>
							</div>
						</div>

					<div class="clearfix"></div>

					<div class="table">
						<table>
							<thead>
								<tr>
									<th class="tag numb">번호</th>


									<th class="tag subject">제목</th>
									<th class="tag name">닉네임</th>
									<th class="tag date">등록일</th>
									<th class="tag view">조회</th>
								</tr>
							</thead>

							<tbody>
								<tr class="notice">
									<td class="value numb" style="color:#121212;font-weight:900;">
										공지
									</td>


									<td class="value subject"><a href="https://www.roomescape.co.kr/board/view.php?board=free&amp;id=2" style="color:#121212;">자유게시판 이용 안내</a><span class="comment_cnt">[0]</span></td>

									<td class="value name">

										<span>전국방탈출</span>

											<img class="ceo" src="https://www.roomescape.co.kr/_template/assets/img/board/manager.png?ver=171736" alt="">
									</td>
									<td class="value date">2019-07-24</td>
									<td class="value view">422</td>
								</tr>

							

							</tbody>
						</table>

						<div class="m_table">
							<div class="m notice">
								<div class="left">
									<span style="color:#121212;font-weight:900;">
										공지
									</span>
								</div>

								<div class="right">
									<div class="subject">
										<a href="https://www.roomescape.co.kr/board/view.php?board=free&amp;id=2" style="color:#121212;"><span class="subject_span">자유게시판 이용 안내</span><span class="comment_cnt">[0]</span></a>
									</div>

									<div class="name">

										<span>
											전국방탈출
											<img class="ceo" src="https://www.roomescape.co.kr/_template/assets/img/board/manager.png?ver=171736" alt="">
										</span>


										<span>2019-07-24</span>

										<span>422</span>
									</div>

								
								</div>
							</div>

						</div>
					</div>

					<div class="pagination">
						<ul class="pagination_inner">
							<!-- 이전 페이지 그룹 이동 버튼 -->
		                    <li class="page_forward disabled">
			                    <span aria-hidden="true">
			                    	<img src="https://www.roomescape.co.kr/_template/assets/img/board/prev.png?ver=171736" alt="">
			                    </span>
			                </li>

			                <!-- 페이지 번호 -->
				            <li class="active"><a href="javascript:void(0);">1</a></li>
	                		<li><a href="https://www.roomescape.co.kr/board/list.php?board=free&amp;page=2">2</a></li>
	                		<li><a href="https://www.roomescape.co.kr/board/list.php?board=free&amp;page=3">3</a></li>

	                		<!-- 다음 페이지 그룹 이동 버튼 -->
		                     <li class="disabled">
			                    <span aria-hidden="true">
			                   		<img src="https://www.roomescape.co.kr/_template/assets/img/board/next.png?ver=171736" alt="">
			                    </span>
			                </li>
						</ul>	
					</div>
				</div>

				<div class="board_btn">
					<!-- 	<button type="button" id="login_layer_pop_event" class="btn_write">글쓰기</button> -->
						<a href="http://localhost:8080/freeSaveForm">글쓰기 </a>
						<script>
							$("#login_layer_pop_event").click(function() {
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
				</div>
			</div>
		</div>

		
		
   <%@ include file="include/footer.jsp"%>




</body>
</html>