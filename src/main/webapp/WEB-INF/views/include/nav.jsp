<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div id="login_wrap_back" class="login_wrap_back" style="width:100%;"></div>
<div id="login_wrap" class="login_wrap">
	<div class="login_layer">
		<div class="close_btn">
			<img src="" alt="">
		</div>

		<div class="login_logo">
			<img src="https://www.roomescape.co.kr/_template/assets/img/auth/logo.png?ver=171736" alt="">
		</div>

		<form id="login_frm" class="login_frm">
			<div class="input_box email_input_box">
				<label>아이디</label>
				<input type="text" id="login_email" class="login_email" name="email" placeholder="이메일">
			</div>
					
			<div class="input_box password_input_box">
				<label>비밀번호</label>
				<input type="password" id="login_password" class="login_password" name="password" placeholder="비밀번호">
			</div>

			<div class="btns">
				<input type="submit" id="login_sbmt_btn" value="로그인">
			</div>
		</form>

		<hr class="hr">

		<div class="memb_info_find">
			<a href="https://www.roomescape.co.kr/auth/find_identity.php">아이디 찾기</a>
			<a href="https://www.roomescape.co.kr/auth/find_account.php">비밀번호 찾기</a>
			<a href="/join">회원이 아니세요?</a>
		</div>
	</div>
</div>


	<div class="container">
<div id="m_main_menu" class="m_main_menu">
	<div id="m_main_menu_close_btn" class="m_main_menu_close_btn">
		<a class="m_login login_layer_open" href="/login">
			<img src="https://www.roomescape.co.kr/_template/assets/img/m/login.png?ver=171736" alt="">
		</a>

		<a class="m_join" href="/auth/join">
			회원이 아니세요?
		</a>
		<img src="https://www.roomescape.co.kr/_template/assets/img/m/m_menu_close_btn.png?ver=171736" alt="">
	</div>

	<nav>
		<ul>
			<li><a href="https://www.roomescape.co.kr"><span>홈</span></a></li>
			<li><a href="/store"><span>카페</span></a></li>
			<li><a href="/theme"><span>테마</span></a></li>
			<li><a href="/reserve"><span>예약</span></a></li>
			<li><a href="/map"><span>지도</span></a></li>
		
           
		</ul>
	</nav>
</div>

<header id="header" class="header">
	<div class="header_wrap">
		<h1 class="logo">
			<a href="https://www.roomescape.co.kr">
				<img src="https://www.roomescape.co.kr/_template/assets/img/logo_h.png?ver=171736" alt="">
			</a>
		</h1>

		<nav class="main_menu">
			<ul class="depth1">
				<li><a href="/store">카페</a></li>
				<li><a href="/theme">테마</a></li>
				<li><a href="/map">지도</a></li>
				<li><a href="/book">예약</a></li>
			     
			     <style>
.dropbtn {
  background-color: black;
  color: rgb(156,154,154);
  height:5;
  font-size: 16px;
  font-weight:bold;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: black;
  min-width: 80px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>


<div class="dropdown">
  <button class="dropbtn">커뮤니티</button>
  <div class="dropdown-content">
    <a href="http://localhost:8080/notice">공지사항</a>
    <a href="http://localhost:8080/board">자유게시판</a>
  
  </div>
</div>
				
			</ul>
		</nav>

		<div class="header_util">
			<div id="login_btn" class="login">
				<a class="login_layer_open" href="/login">
			  	<img class="login_btn_mouse_leave" src="https://www.roomescape.co.kr/_template/assets/img/login.png?ver=171736" alt="">
				<img class="login_btn_mouse_over" src="https://www.roomescape.co.kr/_template/assets/img/login_over.png?ver=171736" alt="">
				</a>
			</div>
			
		 <!--    <div id="logout_btn" class="logout">
					<a href="">
					<img class="logout_btn_mouse_leave" src="https://www.roomescape.co.kr/_template/assets/img/logout.png?ver=171737" alt="" style="">
					<img class="logout_btn_mouse_over" src="https://www.roomescape.co.kr/_template/assets/img/logout_over.png?ver=171737" alt="" style="display: none;">
					</a>
	       </div>--> 
			
			<div class="join">
				<a href="/join">회원이 아니세요?</a>
			</div>
		</div>
	</div>

	<div class="m_header_wrap">
		<div id="m_main_menu_btn" class="m_main_menu_btn">
			<img src="https://www.roomescape.co.kr/_template/assets/img/m/m_menu.png?ver=171736" alt="">
		</div>
	</div>

	<script>
		$('#m_main_menu_btn').click(function() {
				var animation = new TimelineLite();

				$('#m_main_menu').show();
				$("html").css("overflow","hidden");
				animation.to('#m_main_menu', 0.2, {css:{className:'+=active',display:'block'},delay:0,ease:Linear.easeNone});
			});

			$('#m_main_menu_close_btn').click(function() {
				var animation = new TimelineLite();

				$("html").css("overflow","initial");
				animation.to('#m_main_menu', 0.2, {css:{className:'-=active',display:'none'},delay:0,ease:Linear.easeNone});
			});
	</script>

	<script>
		$('#login_btn').hover(function() {
			$('.login_btn_mouse_leave').hide();
			$('.login_btn_mouse_over').show();
		},function() {
			$('.login_btn_mouse_leave').show();
			$('.login_btn_mouse_over').hide();
		});

		$('#logout_btn').hover(function() {
			$('.logout_btn_mouse_leave').hide();
			$('.logout_btn_mouse_over').show();
		},function() {
			$('.logout_btn_mouse_leave').show();
			$('.logout_btn_mouse_over').hide();
		})
	</script>
</header>