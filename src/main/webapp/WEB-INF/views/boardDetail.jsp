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
  <body class="board view" cz-shortcut-listen="true">
 

<%@ include file="include/nav.jsp"%>
      <div class="sub_banner">
        <div
          class="banner_title"
          style="
            background-image: url('https://www.roomescape.co.kr/_template/assets/img/board/free_sub_banner_back.jpg');
          "
        >
          <a href="https://www.roomescape.co.kr/board/list.php?board=free">
            <img
              src="https://www.roomescape.co.kr/_template/assets/img/board/free_sub_banner_text.png"
              alt=""
            />
          </a>
        </div>
        <div
          class="banner_title m"
          style="
            background-image: url('https://www.roomescape.co.kr/_template/assets/img/board/m_free_sub_banner_back.jpg');
          "
        >
          <a href="https://www.roomescape.co.kr/board/list.php?board=free"></a>
        </div>
      </div>
      <div class="board_inner inner_1_depth">
        <div class="board_inner inner_2_depth">
       
          <div class="clearfix"></div>
          <div class="board_panel">
            <div class="post_info">
              <div class="post_info_left">
                <div class="post_title">
                  <h3>
                    ${boardRespDto.title}
                  </h3>
                </div>
              </div>
              <div class="post_info_right">
                <div class="post_write_date">
                  <span>${boardRespDto.createDate}</span>
                </div>
                <div class="post_view_count">
                  <span>조회수</span>
                  <span>${boardRespDto.count}</span>
                </div>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="post_orther_info">
              <div class="post_orther_info_right">
                <div class="post_writer">
                  <span>
                    <img
                      src="https://www.roomescape.co.kr/_template/assets/img/board/medal1.png"
                      alt=""
                    />
                  </span>
                  <span>${boardRespDto.username}</span>
                </div>
              </div>
              <div class="clearfix"></div>
            </div>
            <div class="board_main_text free">
              <div class="post_content">
                <p>
                  ${boardRespDto.content}
                  
                </p>
              </div>
              <hr class="hr" />
              <div class="clearfix"></div>
            </div>
            <div class="board_btn_box">
						
					
            <div class="board_btn_box_inner left">
	              <a href="/board/update/${boardRespDto.id}" class="board_btn">수정</a>
	         <button type="button" onclick="del(${boardRespDto.id})" class="board_btn" >삭제</button>
           </div>
     <!--  -->  <script>
	         function del(id) {
				var chk = confirm("정말 삭제하시겠습니까?");
				if (chk) {
					location.href='/delete/'+id;
				  }
			}	
          </script>   
            
            
            <div class="board_btn_box">
              <div class="board_btn_box_inner right">
                <button type="button" class="board_btn login_layer_pop_event">
                  글쓰기
                </button>
                <a  href="/boards"
                  class="board_btn"
                  >목록</a
                >
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="comments_box">
              <div class="comments_info">
                <span><i class="fa fa-comment"></i></span>
                <span>댓글</span>
              </div>
              <div class="comment_write">
                <textarea
                  class="comment_box login_layer_pop_event"
                  placeholder="로그인 이후 쓰기가 가능합니다."
                  type="textarea"
                ></textarea>
                <div class="comment_input_btn_box">
                  <p><span id="counter">1000</span><span>자</span></p>
                  <button
                    type="button"
                    class="comment_input_btn login_layer_pop_event"
                  >
                    입력
                  </button>
                </div>
                <div class="clearfix"></div>
              </div>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="footer">
      <div class="footer_wrap">
        <div class="f_logo">
          <a href="https://www.roomescape.co.kr">
            <img
              src="https://www.roomescape.co.kr/_template/assets/img/footer/logo_f.png"
              alt=""
            />
          </a>
        </div>
        <div class="f_info">
          <div class="policy">
            <div class="company_name">
              <p>
                <span>욜로가이즈</span>
              </p>
            </div>
            <div class="policies">
              <a href="#" class="privacy"> 개인정보 처리방침 </a>
              <a
                href="https://www.roomescape.co.kr/ad/index.php"
                class="biz_contact"
              >
                사업자 혜택
              </a>
              <a
                href="https://www.roomescape.co.kr/board/list.php?board=ceoinq"
              >
                창업&amp;외주 문의
              </a>
            </div>
          </div>
          <div class="company">
            <div class="contact">
              <p class="ceo">
                <span class="tag">대표이사</span>
                <span class="colon">&nbsp;:&nbsp;</span>
                <span class="value">조준호</span>
              </p>
              <p class="pipe">
                <span>&nbsp;|&nbsp;</span>
              </p>
              <p class="biz_numb">
                <span class="tag">사업자등록번호</span>
                <span class="colon">&nbsp;:&nbsp;</span>
                <span class="value">298-81-01094</span>
              </p>
              <p class="pipe">
                <span>&nbsp;|&nbsp;</span>
              </p>
              <p class="center">
                <span class="tag">고객센터</span>
                <span class="colon">&nbsp;:&nbsp;</span>
                <span class="value">02-6337-3400</span>
              </p>
            </div>
            <div class="copyright">
              <p class="email">
                <span class="tag">메일</span>
                <span class="colon">&nbsp;:&nbsp;</span>
                <span class="value">escaperoom@yologuys.com</span>
              </p>
              <p class="pipe">
                <span>&nbsp;|&nbsp;</span>
              </p>
              <p class="loc">
                <span class="tag">주소</span>
                <span class="colon">&nbsp;:&nbsp;</span>
                <span class="value"
                  >서울특별시 서초구 강남대로 369 12층 1378호</span
                >
              </p>
            </div>
          </div>
          <div class="app">
            <div class="android">
              <a
                href="https://play.google.com/store/apps/details?id=blackcap.nationalescape"
                target="_black"
              >
                <img
                  src="https://www.roomescape.co.kr/_template/assets/img/playstore.png"
                  alt=""
                />
              </a>
            </div>
            <div class="ios">
              <a
                href="https://itunes.apple.com/us/app/apple-store/id1441281712"
                target="_black"
              >
                <img
                  src="https://www.roomescape.co.kr/_template/assets/img/appstore.png"
                  alt=""
                />
              </a>
            </div>
            <div class="clearfix"></div>
          </div>
        </div>
      </div>
    </footer>
    <script>
      $(".login_layer_pop_event").click(function () {
        $("body").css("overflow", "hidden");
        $("#login_wrap_back").css("display", "block");
        $("#login_wrap").css("display", "block");
        var agent = navigator.userAgent.toLowerCase();
        if (
          (navigator.appName == "Netscape" && agent.indexOf("trident") != -1) ||
          agent.indexOf("msie") != -1
        ) {
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
    
  </body>
</html>
    