<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>ë¡ê·¸ì¸íì´ì§ìëë¤.</h1>
  <hr/>
<!-- ìíë¦¬í°ë x-www-form-url-encoded íìë§ ì¸ì --> 
<form action="/loginProc" method="POST">
	<input type="text" name="username" />
	<input type="password" name="password" />
	<button>ë¡ê·¸ì¸</button>
</form>
   <br />

	<h1>Social Login</h1>
	<br />
	<!-- javascript:; ë í´ë¦­í´ë ë°ìì ìê² íë í¤ìë -->
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
  
    
</body>
</html>