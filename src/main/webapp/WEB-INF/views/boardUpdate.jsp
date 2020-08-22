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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>-->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet"> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>


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

  <div class="board_panel">  


  

        <input type="hidden" id="id"  value="${board.id}">




        <input type="text" class="input input_text" id="title" name="title" value="${board.title}" placeholder="제목">

      





       <!--   <input type="hidden" name="userId" value="${1}">-->


        <style>
            .board_option,
            .notice_option {
                width: 100%;
                padding: 10px;
                margin-bottom: 20px;
            }
        </style>

        <textarea id="content" name="content"  style="display: none;">${board.content}</textarea>
        

        <div class="boardFrm_btn">
            <button type="button" id="btn-update" class="boardFrm_submit">게시글 수정하기</button>
            <!-- <a href="/board/edit/${board.id}" class="boardFrm_submit">수정하기</a>-->
        </div>
    
</div>

</div>

<script type="text/javascript">

	$('#content').summernote({
		placeholder : 'Hello Bootstrap 4',
		tabsize : 2,
		height : 400
	});
	
</script>
<script src="/js/board.js"></script>		
		
   <%@ include file="include/footer.jsp"%>




</body>
</html>