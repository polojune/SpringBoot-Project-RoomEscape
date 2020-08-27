<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <!-- 반응형 meta -->
    <meta
      name="viewport"
      content="width=device-width, minimum-scale=1, maximum-scale=1, user-scalable=yes"
    />
    <!-- IE 대응 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="/css/font.css?ver=" rel="stylesheet" />
    <link
      href="//netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
    <link
      rel="stylesheet"
      href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <link href="/css/reset.css?ver=171736" rel="stylesheet" />
    <link href="/css/style.css?ver=171736" rel="stylesheet" />
    <link href="/css/common.css?ver=171736" rel="stylesheet" />
    <link href="/css/header.css?ver=171736" rel="stylesheet" />
    <link href="/css/footer.css?ver=171736" rel="stylesheet" />
    <link href="/css/sub_banner.css?ver=171736" rel="stylesheet" />
    <!-- <link href="/css/sub_banner.css?ver=171736" rel="stylesheet" /> -->
    <link href="/css/board.css?ver=171736" rel="stylesheet" />
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


<%@ include file="include/nav.jsp"%>
    
  
 
	 
	  <form action="/loginProc" method="POST" style="width:285px; margin: 0 auto;">
	  
		    <div class="form-group" >
		      <label for="username" >Username:</label>
		      <input type="text" style="width:100%" class="form-control" id="username" placeholder="Enter email" name="email" >
		    </div>
		    <div class="form-group" >
		      <label for="pwd">Password:</label>
		      <input type="password" style="width:100%" class="form-control" id="pwd" placeholder="Enter password" name="pswd" >
		    </div>
		    <div class="form-group form-check" >
		      <label class="form-check-label" >
		        <input class="form-check-input"  type="checkbox" name="remember"> Remember me
		      </label>
		    </div>
		   <button type="submit" class="btn btn-primary">Submit</button> 
	    
	  </form>


	<br />
	<div style="width:285px; margin: 0 auto;" >
	<a href="/oauth2/authorization/google"> <img
		src="https://pngimage.net/wp-content/uploads/2018/06/google-login-button-png-1.png"
		alt="google" width="357px" height="117px">
	</a>
	<br />
	<a href="/oauth2/authorization/facebook"> <img
		src="https://pngimage.net/wp-content/uploads/2018/06/login-with-facebook-button-png-transparent-1.png"
		alt="facebook" width="357px" height="117px">
	</a>
	<br />
    <a href="/oauth2/authorization/naver"> 
	<img src="/images/Log in with NAVER_Official_Green.PNG"
		alt="naver" width="357px" height="50px">
	</a>
	<br />
   </div>
   <%@ include file="include/footer.jsp"%> 
    
</body>
</html>