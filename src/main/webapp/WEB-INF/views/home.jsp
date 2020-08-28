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
    <meta
      name="naver-site-verification"
      content="7267e3c33a7602cc373bcd4ec3a15698c6f034fe"
    />
    <link rel="canonical" href="https://www.roomescape.co.kr" />
    <meta name="robots" content="index,follow" />
    <meta name="title" content="전국방탈출 - 방탈출카페의 모든 것" />
    <meta
      name="keywords"
      content="전국방탈출, 방탈출, 강남 방탈출, 홍대 방탈출, 건대 방탈출"
    />
    <meta name="description" content="전국 방탈출 업체/테마 후기 예약 사이트" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="전국방탈출 - 방탈출카페의 모든 것" />
    <meta property="og:url" content="https://www.roomescape.co.kr" />
    <meta
      property="og:description"
      content="전국 방탈출 업체/테마 후기 예약 사이트"
    />
    <meta property="og:image:width" content="215" />
    <meta property="og:image:height" content="215" />
    <meta
      property="og:image"
      content="https://www.roomescape.co.kr/_template/assets/img/logo.jpg"
    />
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
    <link
      rel="stylesheet"
      href="//cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"
    />
    <link href="/css/reset.css?ver=171737" rel="stylesheet" />
    <link href="/css/style.css?ver=171737" rel="stylesheet" />
    <link href="/css/common.css?ver=171737" rel="stylesheet" />
    <link href="/css/header.css?ver=171737" rel="stylesheet" />
    <link href="/css/footer.css?ver=171737" rel="stylesheet" />
    <link href="/css/slider.css?ver=171737" rel="stylesheet" />
    <link href="/css/main.css?ver=171737" rel="stylesheet" />
    <link href="/css/carousel_section_theme.css?ver=171737" rel="stylesheet" />
    <link href="/css/login_layer.css?ver=171737" rel="stylesheet" />
    <link href="/css/nonbootstrap.css?ver=171737" rel="stylesheet" />
    <link rel="stylesheet" href="/css/slick.css" />
    <link rel="stylesheet" href="/css/slick-theme.css" />
    <!-- include summernote css/js -->
    <link href="/css/summernote.css?ver=171737" rel="stylesheet" />
    <script src="/js/summernote.js?ver=171737"></script>
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
  <body class="main" cz-shortcut-listen="true">
    <div id="login_wrap_back" class="login_wrap_back" style="width: 100%"></div>
    <div id="login_wrap" class="login_wrap">
      <div class="login_layer">
        <div class="close_btn">
          <img src="" alt="" />
        </div>
        <div class="login_logo">
          <img
            src="https://www.roomescape.co.kr/_template/assets/img/auth/logo.png?ver=171737"
            alt=""
          />
        </div>
        <form id="login_frm" class="login_frm">
          <div class="input_box email_input_box">
            <label>아이디</label>
            <input
              type="text"
              id="login_email"
              class="login_email"
              name="email"
              placeholder="이메일"
            />
          </div>
          <div class="input_box password_input_box">
            <label>비밀번호</label>
            <input
              type="password"
              id="login_password"
              class="login_password"
              name="password"
              placeholder="비밀번호"
            />
          </div>
          <div class="btns">
            <input type="submit" id="login_sbmt_btn" value="로그인" />
          </div>
        </form>
        <hr class="hr" />
        <div class="memb_info_find">
          <a href="https://www.roomescape.co.kr/auth/find_identity.php"
            >아이디 찾기</a
          >
          <a href="https://www.roomescape.co.kr/auth/find_account.php"
            >비밀번호 찾기</a
          >
          <a href="https://www.roomescape.co.kr/auth/join.php"
            >회원이 아니세요?</a
          >
        </div>
      </div>
    </div>

    <div class="container">
      <div id="m_main_menu" class="m_main_menu">
        <div id="m_main_menu_close_btn" class="m_main_menu_close_btn">
          <a class="m_login login_layer_open" href="javascript:void(0);">
            <img
              src="https://www.roomescape.co.kr/_template/assets/img/m/login.png?ver=171737"
              alt=""
            />
          </a>
          <a class="m_join" href="https://www.roomescape.co.kr/auth/join.php">
            회원이 아니세요?
          </a>
          <img
            src="https://www.roomescape.co.kr/_template/assets/img/m/m_menu_close_btn.png?ver=171737"
            alt=""
          />
        </div>
        <nav>
          <ul>
            <li>
              <a href="https://www.roomescape.co.kr"><span>홈</span></a>
            </li>
            <li>
              <a href="https://www.roomescape.co.kr/store/main.php"
                ><span>카페</span></a
              >
            </li>
            <li>
              <a href="https://www.roomescape.co.kr/theme/main.php"
                ><span>테마</span></a
              >
            </li>
            <li>
              <a href="https://www.roomescape.co.kr/book/index.php?type=select"
                ><span>예약</span></a
              >
            </li>
            <li>
              <a href="https://www.roomescape.co.kr/info/"><span>지도</span></a>
            </li>
            <li>
              <a href="https://www.roomescape.co.kr/board/list.php?board=free"
                ><span>커뮤니티</span></a
              >
            </li>
          </ul>
        </nav>
      </div>
      <header id="header" class="header">
        <div class="header_wrap">
          <h1 class="logo">
            <a href="https://www.roomescape.co.kr">
              <img
                src="https://www.roomescape.co.kr/_template/assets/img/logo_h.png?ver=171737"
                alt=""
              />
            </a>
          </h1>
          <nav class="main_menu">
            <ul class="depth1">
              <li>
                <a href="https://www.roomescape.co.kr/store/main.php">카페</a>
              </li>
              <li>
                <a href="https://www.roomescape.co.kr/theme/main.php">테마</a>
              </li>
              <li><a href="https://www.roomescape.co.kr/info/">지도</a></li>
              <li>
                <a
                  href="https://www.roomescape.co.kr/book/index.php?type=select"
                  >예약</a
                >
              </li>
              <li>
                <a href="https://www.roomescape.co.kr/board/list.php?board=free"
                  >커뮤니티</a
                >
              </li>
            </ul>
          </nav>
          <div class="header_util">
            <div id="login_btn" class="login">
              <a class="login_layer_open" href="javascript:void(0);">
                <img
                  class="login_btn_mouse_leave"
                  src="https://www.roomescape.co.kr/_template/assets/img/login.png?ver=171737"
                  alt=""
                />
                <img
                  class="login_btn_mouse_over"
                  src="https://www.roomescape.co.kr/_template/assets/img/login_over.png?ver=171737"
                  alt=""
                />
              </a>
            </div>
            <div class="join">
              <a href="https://www.roomescape.co.kr/auth/join.php"
                >회원이 아니세요?</a
              >
            </div>
          </div>
        </div>
        <div class="m_header_wrap">
          <div id="m_main_menu_btn" class="m_main_menu_btn">
            <img
              src="https://www.roomescape.co.kr/_template/assets/img/m/m_menu.png?ver=171737"
              alt=""
            />
          </div>
        </div>
        <script>
          $("#m_main_menu_btn").click(function () {
            var animation = new TimelineLite();
            $("#m_main_menu").show();
            $("html").css("overflow", "hidden");
            animation.to("#m_main_menu", 0.2, {
              css: { className: "+=active", display: "block" },
              delay: 0,
              ease: Linear.easeNone,
            });
          });
          $("#m_main_menu_close_btn").click(function () {
            var animation = new TimelineLite();
            $("html").css("overflow", "initial");
            animation.to("#m_main_menu", 0.2, {
              css: { className: "-=active", display: "none" },
              delay: 0,
              ease: Linear.easeNone,
            });
          });
        </script>
        <script>
          $("#login_btn").hover(
            function () {
              $(".login_btn_mouse_leave").hide();
              $(".login_btn_mouse_over").show();
            },
            function () {
              $(".login_btn_mouse_leave").show();
              $(".login_btn_mouse_over").hide();
            }
          );
          $("#logout_btn").hover(
            function () {
              $(".logout_btn_mouse_leave").hide();
              $(".logout_btn_mouse_over").show();
            },
            function () {
              $(".logout_btn_mouse_leave").show();
              $(".logout_btn_mouse_over").hide();
            }
          );
        </script>
      </header>
      <div class="clearfix"></div>
      <div class="main_slider_wrap">
        <div id="main_slider" class="owl-carousel owl-theme slider owl-loaded">
          <div class="owl-stage-outer">
            <div
              class="owl-stage"
              style="
                transform: translate3d(-2206px, 0px, 0px);
                transition: all 0s ease 0s;
                width: 6618px;
              "
            >
              <div class="owl-item cloned" style="width: 1103px">
                <div class="page">
                  <div class="page_ratio">
                    <div class="page_contents">
                      <div class="layer_element layer_element_1">
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_1.png?ver=171737"
                          alt=""
                        />
                      </div>
                      <div class="layer_element layer_element_2">
                        <img
                          class="img_m w320"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_320.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w420"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_420.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w520"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_520.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w620"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_620.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w720"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_720.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w820"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_820.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w_normal"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2.png?ver=171737"
                          alt=""
                        />
                        <div class="img_pc layer_element_2_ratio">
                          <div
                            class="layer_element_2_ratio_content"
                            style="
                              background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide1/pc_element_2.png?ver=171737);
                            "
                          ></div>
                        </div>
                      </div>
                      <div class="layer_element m_layer_element_3">
                        <div class="m_layer_element_3_ratio">
                          <div class="m_layer_element_3_ratio_content">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_3.png?ver=171737"
                              alt=""
                            />
                          </div>
                        </div>
                      </div>
                      <div class="layer_element layer_element_3">
                        <div class="layer_element_3_ratio">
                          <div class="layer_element_3_ratio_content">
                            <div class="element_row_1">
                              <div
                                class="content"
                                style="
                                  background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_3.png?ver=171737);
                                "
                              ></div>
                            </div>
                            <div class="element_row_2">
                              <a
                                href="https://www.roomescape.co.kr/theme/main.php"
                              >
                                <img
                                  src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_3_2.png?ver=171737"
                                  alt=""
                                />
                              </a>
                              <a
                                href="https://www.roomescape.co.kr/store/main.php"
                              >
                                <img
                                  src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_3_3.png?ver=171737"
                                  alt=""
                                />
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="owl-item cloned" style="width: 1103px">
                <div class="page">
                  <div class="page_ratio">
                    <div class="page_contents">
                      <div class="layer_element layer_element_1 page_2">
                        <div
                          class="img_w_2560"
                          style="
                            background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_2560w.jpg?ver=171737);
                          "
                        ></div>
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_1000w.jpg?ver=171737"
                          alt=""
                          class="w_1000"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_750w.jpg?ver=171737"
                          alt=""
                          class="w_750"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_620w.jpg?ver=171737"
                          alt=""
                          class="w_620"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_550w.jpg?ver=171737"
                          alt=""
                          class="w_550"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_520w.jpg?ver=171737"
                          alt=""
                          class="w_520"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_480w.jpg?ver=171737"
                          alt=""
                          class="w_480"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_320w.jpg?ver=171737"
                          alt=""
                          class="w_320"
                        />
                      </div>
                      <div class="layer_element layer_element_2 page_2">
                        <div class="layer_element_2_ratio">
                          <div class="layer_element_2_ratio_content">
                            <div class="element_row_1">
                              <div
                                class="m_pic"
                                style="
                                  background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide2/m-elem-2-1.png);
                                "
                              ></div>
                              <div
                                class="pc_pic"
                                style="
                                  background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide2/elem-2-1.png);
                                "
                              ></div>
                            </div>
                            <div class="element_row_2">
                              <a
                                href="https://www.roomescape.co.kr/info/index.php"
                              >
                                <div class="pic">
                                  <img
                                    src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/elem-2-3.png"
                                    alt=""
                                  />
                                </div>
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="owl-item active" style="width: 1103px">
                <div class="page">
                  <div class="page_ratio">
                    <div class="page_contents">
                      <div class="layer_element layer_element_1">
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_1.png?ver=171737"
                          alt=""
                        />
                      </div>
                      <div class="layer_element layer_element_2">
                        <img
                          class="img_m w320"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_320.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w420"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_420.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w520"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_520.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w620"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_620.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w720"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_720.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w820"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_820.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w_normal"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2.png?ver=171737"
                          alt=""
                        />
                        <div class="img_pc layer_element_2_ratio">
                          <div
                            class="layer_element_2_ratio_content"
                            style="
                              background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide1/pc_element_2.png?ver=171737);
                            "
                          ></div>
                        </div>
                      </div>
                      <div class="layer_element m_layer_element_3">
                        <div class="m_layer_element_3_ratio">
                          <div class="m_layer_element_3_ratio_content">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_3.png?ver=171737"
                              alt=""
                            />
                          </div>
                        </div>
                      </div>
                      <div class="layer_element layer_element_3">
                        <div class="layer_element_3_ratio">
                          <div class="layer_element_3_ratio_content">
                            <div class="element_row_1">
                              <div
                                class="content"
                                style="
                                  background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_3.png?ver=171737);
                                "
                              ></div>
                            </div>
                            <div class="element_row_2">
                              <a
                                href="https://www.roomescape.co.kr/theme/main.php"
                              >
                                <img
                                  src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_3_2.png?ver=171737"
                                  alt=""
                                />
                              </a>
                              <a
                                href="https://www.roomescape.co.kr/store/main.php"
                              >
                                <img
                                  src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_3_3.png?ver=171737"
                                  alt=""
                                />
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="owl-item" style="width: 1103px">
                <div class="page">
                  <div class="page_ratio">
                    <div class="page_contents">
                      <div class="layer_element layer_element_1 page_2">
                        <div
                          class="img_w_2560"
                          style="
                            background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_2560w.jpg?ver=171737);
                          "
                        ></div>
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_1000w.jpg?ver=171737"
                          alt=""
                          class="w_1000"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_750w.jpg?ver=171737"
                          alt=""
                          class="w_750"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_620w.jpg?ver=171737"
                          alt=""
                          class="w_620"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_550w.jpg?ver=171737"
                          alt=""
                          class="w_550"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_520w.jpg?ver=171737"
                          alt=""
                          class="w_520"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_480w.jpg?ver=171737"
                          alt=""
                          class="w_480"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_320w.jpg?ver=171737"
                          alt=""
                          class="w_320"
                        />
                      </div>
                      <div class="layer_element layer_element_2 page_2">
                        <div class="layer_element_2_ratio">
                          <div class="layer_element_2_ratio_content">
                            <div class="element_row_1">
                              <div
                                class="m_pic"
                                style="
                                  background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide2/m-elem-2-1.png);
                                "
                              ></div>
                              <div
                                class="pc_pic"
                                style="
                                  background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide2/elem-2-1.png);
                                "
                              ></div>
                            </div>
                            <div class="element_row_2">
                              <a
                                href="https://www.roomescape.co.kr/info/index.php"
                              >
                                <div class="pic">
                                  <img
                                    src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/elem-2-3.png"
                                    alt=""
                                  />
                                </div>
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="owl-item cloned" style="width: 1103px">
                <div class="page">
                  <div class="page_ratio">
                    <div class="page_contents">
                      <div class="layer_element layer_element_1">
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_1.png?ver=171737"
                          alt=""
                        />
                      </div>
                      <div class="layer_element layer_element_2">
                        <img
                          class="img_m w320"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_320.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w420"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_420.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w520"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_520.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w620"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_620.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w720"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_720.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w820"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2_820.png?ver=171737"
                          alt=""
                        />
                        <img
                          class="img_m w_normal"
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/m_element_2.png?ver=171737"
                          alt=""
                        />
                        <div class="img_pc layer_element_2_ratio">
                          <div
                            class="layer_element_2_ratio_content"
                            style="
                              background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide1/pc_element_2.png?ver=171737);
                            "
                          ></div>
                        </div>
                      </div>
                      <div class="layer_element m_layer_element_3">
                        <div class="m_layer_element_3_ratio">
                          <div class="m_layer_element_3_ratio_content">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_3.png?ver=171737"
                              alt=""
                            />
                          </div>
                        </div>
                      </div>
                      <div class="layer_element layer_element_3">
                        <div class="layer_element_3_ratio">
                          <div class="layer_element_3_ratio_content">
                            <div class="element_row_1">
                              <div
                                class="content"
                                style="
                                  background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_3.png?ver=171737);
                                "
                              ></div>
                            </div>
                            <div class="element_row_2">
                              <a
                                href="https://www.roomescape.co.kr/theme/main.php"
                              >
                                <img
                                  src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_3_2.png?ver=171737"
                                  alt=""
                                />
                              </a>
                              <a
                                href="https://www.roomescape.co.kr/store/main.php"
                              >
                                <img
                                  src="https://www.roomescape.co.kr/_template/assets/img/slider/slide1/element_3_3.png?ver=171737"
                                  alt=""
                                />
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="owl-item cloned" style="width: 1103px">
                <div class="page">
                  <div class="page_ratio">
                    <div class="page_contents">
                      <div class="layer_element layer_element_1 page_2">
                        <div
                          class="img_w_2560"
                          style="
                            background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_2560w.jpg?ver=171737);
                          "
                        ></div>
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_1000w.jpg?ver=171737"
                          alt=""
                          class="w_1000"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_750w.jpg?ver=171737"
                          alt=""
                          class="w_750"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_620w.jpg?ver=171737"
                          alt=""
                          class="w_620"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_550w.jpg?ver=171737"
                          alt=""
                          class="w_550"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_520w.jpg?ver=171737"
                          alt=""
                          class="w_520"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_480w.jpg?ver=171737"
                          alt=""
                          class="w_480"
                        />
                        <img
                          src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/element_1_320w.jpg?ver=171737"
                          alt=""
                          class="w_320"
                        />
                      </div>
                      <div class="layer_element layer_element_2 page_2">
                        <div class="layer_element_2_ratio">
                          <div class="layer_element_2_ratio_content">
                            <div class="element_row_1">
                              <div
                                class="m_pic"
                                style="
                                  background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide2/m-elem-2-1.png);
                                "
                              ></div>
                              <div
                                class="pc_pic"
                                style="
                                  background-image: url(https://www.roomescape.co.kr/_template/assets/img/slider/slide2/elem-2-1.png);
                                "
                              ></div>
                            </div>
                            <div class="element_row_2">
                              <a
                                href="https://www.roomescape.co.kr/info/index.php"
                              >
                                <div class="pic">
                                  <img
                                    src="https://www.roomescape.co.kr/_template/assets/img/slider/slide2/elem-2-3.png"
                                    alt=""
                                  />
                                </div>
                              </a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="owl-nav">
            <div class="owl-prev">
              <img
                src="https://www.roomescape.co.kr/_template/assets/img/slider/prev.png"
                alt=""
              />
            </div>
            <div class="owl-next">
              <img
                src="https://www.roomescape.co.kr/_template/assets/img/slider/next.png"
                alt=""
              />
            </div>
          </div>
          <div class="owl-dots">
            <div class="owl-dot active">
              <span></span>
            </div>
            <div class="owl-dot">
              <span></span>
            </div>
          </div>
        </div>
      </div>
      <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css"
      />
      <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.theme.default.min.css"
      />
      <!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script> -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
      <script>
        $("#main_slider").owlCarousel({
          items: 1,
          nav: true,
          dots: true,
          dotsEach: true /* dots 항상 표시 */,
          loop: true,
          singleItem: true,
          navText: [
            '<img src="https://www.roomescape.co.kr/_template/assets/img/slider/prev.png" alt="" />',
            '<img src="https://www.roomescape.co.kr/_template/assets/img/slider/next.png" alt="" />',
          ],
          mouseDrag: false,
        });
      </script>
      <!-- section_board_new -->
      <style>
        .main .container .container_inner.section.section_board_new {
          background-image: url(https://www.roomescape.co.kr/_template/assets/img/main/section_board_new_back.jpg?ver=171737);
        }
        @media all and (max-width: 1020px) {
          .main .container .container_inner.section.section_board_new {
            background-image: url(https://www.roomescape.co.kr/_template/assets/img/main/section_board_new_back_w1020.jpg?ver=171737);
          }
        }
        @media all and (max-width: 920px) {
          .main .container .container_inner.section.section_board_new {
            background-image: url(https://www.roomescape.co.kr/_template/assets/img/main/section_board_new_back_w920.jpg?ver=171737);
          }
        }
        @media all and (max-width: 820px) {
          .main .container .container_inner.section.section_board_new {
            background-image: url(https://www.roomescape.co.kr/_template/assets/img/main/section_board_new_back_w820.jpg?ver=171737);
          }
        }
        @media all and (max-width: 720px) {
          .main .container .container_inner.section.section_board_new {
            background-image: url(https://www.roomescape.co.kr/_template/assets/img/main/section_board_new_back_w720.jpg?ver=171737);
          }
        }
        @media all and (max-width: 620px) {
          .main .container .container_inner.section.section_board_new {
            background-image: url(https://www.roomescape.co.kr/_template/assets/img/main/section_board_new_back_w620.jpg?ver=171737);
          }
        }
        @media all and (max-width: 520px) {
          .main .container .container_inner.section.section_board_new {
            background-image: url(https://www.roomescape.co.kr/_template/assets/img/main/section_board_new_back_w520.jpg?ver=171737);
          }
        }
        @media all and (max-width: 420px) {
          .main .container .container_inner.section.section_board_new {
            background-image: url(https://www.roomescape.co.kr/_template/assets/img/main/section_board_new_back_w420.jpg?ver=171737);
          }
        }
        @media all and (max-width: 320px) {
          .main .container .container_inner.section.section_board_new {
            background-image: url(https://www.roomescape.co.kr/_template/assets/img/main/section_board_new_back_w320.jpg?ver=171737);
          }
        }
      </style>

      <!-- section_board_new end -->
      <!-- section_board_theme -->
      <script>
        var $div = $(".room_name.gradient_rgba");
        var $divOfmoreInfoStore = $(".more_info_2");
        $(document).ready(function () {
          var height = $div.height();
          var $heiDivOfMoreInfoStroe = $divOfmoreInfoStore.height();
          $div.css({
            "font-size": height / 2 + "px",
            "line-height": height + "px",
          });
          $divOfmoreInfoStore.css({
            "font-size": $heiDivOfMoreInfoStroe / 2 + "px",
            "line-height": $heiDivOfMoreInfoStroe + "px",
          });
        });
        $(window).resize(function () {
          var height = $div.height();
          var $heiDivOfMoreInfoStroe = $divOfmoreInfoStore.height();
          $div.css({
            "font-size": height / 2 + "px",
            "line-height": height + "px",
          });
          $divOfmoreInfoStore.css({
            "font-size": $heiDivOfMoreInfoStroe / 2 + "px",
            "line-height": $heiDivOfMoreInfoStroe + "px",
          });
        });
      </script>
      <script>
        $("#owl_carousel_1").owlCarousel({
          items: 5,
          nav: true,
          dots: true,
          dotsEach: true /* dots 항상 표시 */,
          margin: 10 /* 슬라이드 각 요소의 margin값 넣기 */,
          loop: true,
          items: 10,
          itemsDesktop: [1199, 10],
          itemsDesktopSmall: [980, 9],
          itemsTablet: [768, 5],
          itemsTabletSmall: false,
          itemsMobile: [479, 4],
          autoplay: true,
          mouseDrag: true,
          responsiveClass: true,
          responsive: {
            0: {
              items: 1,
              loop: true,
            },
            480: {
              items: 3,
              loop: true,
            },
            769: {
              items: 5,
              loop: true,
            },
          },
        });
      </script>
      <!-- section_board_theme end -->
      <!-- section_board_theme -->

      <div class="container_inner section section_board_newstore">
        <img
          class="section_board_newstore_back_index_1"
          src="https://www.roomescape.co.kr/_template/assets/img/main/newStore_back_z_index_1.png"
          alt=""
        />
        <img
          class="section_board_newstore_back_index_2"
          src="https://www.roomescape.co.kr/_template/assets/img/main/newStore_back_z_index_2.png"
          alt=""
        />
        <div class="section_title">
          <a href="https://www.roomescape.co.kr/store/main.php"
            ><img
              src="https://www.roomescape.co.kr/_template/assets/img/main/newStore.png"
              alt=""
          /></a>
        </div>
        <div
          id="owl_carousel_2"
          class="owl-carousel owl-theme section_slider owl-loaded owl-drag"
        >
          <div class="owl-stage-outer">
            <div
              class="owl-stage"
              style="
                transition: all 0s ease 0s;
                width: 4413px;
                transform: translate3d(-735px, 0px, 0px);
              "
            >
              <div
                class="owl-item cloned"
                style="width: 347.667px; margin-right: 20px"
              >
                <div class="img-wrap slide slide1">
                  <div class="slide_inner slide1_inner">
                    <div class="banner top">
                      <a
                        href="https://www.roomescape.co.kr/store/detail.php?cafe=672"
                      >
                        <div
                          class="pic_info"
                          style="
                            background-image: url('http://www.yologuys.com/Escape_img/company/672.jpg');
                          "
                        >
                          <div class="name">
                            <p>
                              <span>비밀의화원 리버타운점</span>
                            </p>
                          </div>
                        </div>
                        <div class="more_info">
                          <div class="loc_info">
                            <p>
                              <span>비밀의화원 리버타운점</span>
                            </p>
                          </div>
                          <div class="star_info">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/main/4.5star.png"
                              alt=""
                            />
                            <span>4.5</span>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="owl-item cloned"
                style="width: 347.667px; margin-right: 20px"
              >
                <div class="img-wrap slide slide1">
                  <div class="slide_inner slide1_inner">
                    <div class="banner top">
                      <a
                        href="https://www.roomescape.co.kr/store/detail.php?cafe=671"
                      >
                        <div
                          class="pic_info"
                          style="
                            background-image: url('http://www.yologuys.com/Escape_img/company/671.jpg');
                          "
                        >
                          <div class="name">
                            <p>
                              <span>제로월드 강남점</span>
                            </p>
                          </div>
                        </div>
                        <div class="more_info">
                          <div class="loc_info">
                            <p>
                              <span>제로월드 강남점</span>
                            </p>
                          </div>
                          <div class="star_info">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/main/4.5star.png"
                              alt=""
                            />
                            <span>4.5</span>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="owl-item cloned active"
                style="width: 347.667px; margin-right: 20px"
              >
                <div class="img-wrap slide slide1">
                  <div class="slide_inner slide1_inner">
                    <div class="banner top">
                      <a
                        href="https://www.roomescape.co.kr/store/detail.php?cafe=670"
                      >
                        <div
                          class="pic_info"
                          style="
                            background-image: url('http://www.yologuys.com/Escape_img/company/670.jpg');
                          "
                        >
                          <div class="name">
                            <p>
                              <span>엑티브 엠</span>
                            </p>
                          </div>
                        </div>
                        <div class="more_info">
                          <div class="loc_info">
                            <p>
                              <span>엑티브 엠</span>
                            </p>
                          </div>
                          <div class="star_info">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/main/5star.png"
                              alt=""
                            />
                            <span>5.0</span>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="owl-item active center"
                style="width: 347.667px; margin-right: 20px"
              >
                <div class="img-wrap slide slide1">
                  <div class="slide_inner slide1_inner">
                    <div class="banner top">
                      <a
                        href="https://www.roomescape.co.kr/store/detail.php?cafe=677"
                      >
                        <div
                          class="pic_info"
                          style="
                            background-image: url('http://www.yologuys.com/Escape_img/company/677.jpg');
                          "
                        >
                          <div class="name">
                            <p>
                              <span>셜록홈즈 뉴안양점</span>
                            </p>
                          </div>
                        </div>
                        <div class="more_info">
                          <div class="loc_info">
                            <p>
                              <span>셜록홈즈 뉴안양점</span>
                            </p>
                          </div>
                          <div class="star_info">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/main/0star.png"
                              alt=""
                            />
                            <span>0.0</span>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="owl-item middle medium active"
                style="width: 347.667px; margin-right: 20px"
              >
                <div class="img-wrap slide slide1">
                  <div class="slide_inner slide1_inner">
                    <div class="banner top">
                      <a
                        href="https://www.roomescape.co.kr/store/detail.php?cafe=676"
                      >
                        <div
                          class="pic_info"
                          style="
                            background-image: url('http://www.yologuys.com/Escape_img/company/676.jpg');
                          "
                        >
                          <div class="name">
                            <p>
                              <span>머더파커 건대2호점</span>
                            </p>
                          </div>
                        </div>
                        <div class="more_info">
                          <div class="loc_info">
                            <p>
                              <span>머더파커 건대2호점</span>
                            </p>
                          </div>
                          <div class="star_info">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/main/4star.png"
                              alt=""
                            />
                            <span>4.0</span>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="owl-item"
                style="width: 347.667px; margin-right: 20px"
              >
                <div class="img-wrap slide slide1">
                  <div class="slide_inner slide1_inner">
                    <div class="banner top">
                      <a
                        href="https://www.roomescape.co.kr/store/detail.php?cafe=675"
                      >
                        <div
                          class="pic_info"
                          style="
                            background-image: url('http://www.yologuys.com/Escape_img/company/675.jpg');
                          "
                        >
                          <div class="name">
                            <p>
                              <span>도어 이스케이프 레드 신논현점</span>
                            </p>
                          </div>
                        </div>
                        <div class="more_info">
                          <div class="loc_info">
                            <p>
                              <span>도어 이스케이프 레드 신논현점</span>
                            </p>
                          </div>
                          <div class="star_info">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/main/5star.png"
                              alt=""
                            />
                            <span>5.0</span>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="owl-item"
                style="width: 347.667px; margin-right: 20px"
              >
                <div class="img-wrap slide slide1">
                  <div class="slide_inner slide1_inner">
                    <div class="banner top">
                      <a
                        href="https://www.roomescape.co.kr/store/detail.php?cafe=672"
                      >
                        <div
                          class="pic_info"
                          style="
                            background-image: url('http://www.yologuys.com/Escape_img/company/672.jpg');
                          "
                        >
                          <div class="name">
                            <p>
                              <span>비밀의화원 리버타운점</span>
                            </p>
                          </div>
                        </div>
                        <div class="more_info">
                          <div class="loc_info">
                            <p>
                              <span>비밀의화원 리버타운점</span>
                            </p>
                          </div>
                          <div class="star_info">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/main/4.5star.png"
                              alt=""
                            />
                            <span>4.5</span>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="owl-item"
                style="width: 347.667px; margin-right: 20px"
              >
                <div class="img-wrap slide slide1">
                  <div class="slide_inner slide1_inner">
                    <div class="banner top">
                      <a
                        href="https://www.roomescape.co.kr/store/detail.php?cafe=671"
                      >
                        <div
                          class="pic_info"
                          style="
                            background-image: url('http://www.yologuys.com/Escape_img/company/671.jpg');
                          "
                        >
                          <div class="name">
                            <p>
                              <span>제로월드 강남점</span>
                            </p>
                          </div>
                        </div>
                        <div class="more_info">
                          <div class="loc_info">
                            <p>
                              <span>제로월드 강남점</span>
                            </p>
                          </div>
                          <div class="star_info">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/main/4.5star.png"
                              alt=""
                            />
                            <span>4.5</span>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="owl-item"
                style="width: 347.667px; margin-right: 20px"
              >
                <div class="img-wrap slide slide1">
                  <div class="slide_inner slide1_inner">
                    <div class="banner top">
                      <a
                        href="https://www.roomescape.co.kr/store/detail.php?cafe=670"
                      >
                        <div
                          class="pic_info"
                          style="
                            background-image: url('http://www.yologuys.com/Escape_img/company/670.jpg');
                          "
                        >
                          <div class="name">
                            <p>
                              <span>엑티브 엠</span>
                            </p>
                          </div>
                        </div>
                        <div class="more_info">
                          <div class="loc_info">
                            <p>
                              <span>엑티브 엠</span>
                            </p>
                          </div>
                          <div class="star_info">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/main/5star.png"
                              alt=""
                            />
                            <span>5.0</span>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="owl-item cloned"
                style="width: 347.667px; margin-right: 20px"
              >
                <div class="img-wrap slide slide1">
                  <div class="slide_inner slide1_inner">
                    <div class="banner top">
                      <a
                        href="https://www.roomescape.co.kr/store/detail.php?cafe=677"
                      >
                        <div
                          class="pic_info"
                          style="
                            background-image: url('http://www.yologuys.com/Escape_img/company/677.jpg');
                          "
                        >
                          <div class="name">
                            <p>
                              <span>셜록홈즈 뉴안양점</span>
                            </p>
                          </div>
                        </div>
                        <div class="more_info">
                          <div class="loc_info">
                            <p>
                              <span>셜록홈즈 뉴안양점</span>
                            </p>
                          </div>
                          <div class="star_info">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/main/0star.png"
                              alt=""
                            />
                            <span>0.0</span>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="owl-item middle medium cloned"
                style="width: 347.667px; margin-right: 20px"
              >
                <div class="img-wrap slide slide1">
                  <div class="slide_inner slide1_inner">
                    <div class="banner top">
                      <a
                        href="https://www.roomescape.co.kr/store/detail.php?cafe=676"
                      >
                        <div
                          class="pic_info"
                          style="
                            background-image: url('http://www.yologuys.com/Escape_img/company/676.jpg');
                          "
                        >
                          <div class="name">
                            <p>
                              <span>머더파커 건대2호점</span>
                            </p>
                          </div>
                        </div>
                        <div class="more_info">
                          <div class="loc_info">
                            <p>
                              <span>머더파커 건대2호점</span>
                            </p>
                          </div>
                          <div class="star_info">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/main/4star.png"
                              alt=""
                            />
                            <span>4.0</span>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              <div
                class="owl-item cloned"
                style="width: 347.667px; margin-right: 20px"
              >
                <div class="img-wrap slide slide1">
                  <div class="slide_inner slide1_inner">
                    <div class="banner top">
                      <a
                        href="https://www.roomescape.co.kr/store/detail.php?cafe=675"
                      >
                        <div
                          class="pic_info"
                          style="
                            background-image: url('http://www.yologuys.com/Escape_img/company/675.jpg');
                          "
                        >
                          <div class="name">
                            <p>
                              <span>도어 이스케이프 레드 신논현점</span>
                            </p>
                          </div>
                        </div>
                        <div class="more_info">
                          <div class="loc_info">
                            <p>
                              <span>도어 이스케이프 레드 신논현점</span>
                            </p>
                          </div>
                          <div class="star_info">
                            <img
                              src="https://www.roomescape.co.kr/_template/assets/img/main/5star.png"
                              alt=""
                            />
                            <span>5.0</span>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="owl-nav">
            <div class="owl-prev">
              <img
                class="section_slider_nav_btn"
                src="https://www.roomescape.co.kr/_template/assets/img/main/prev.png"
                alt=""
              />
            </div>
            <div class="owl-next">
              <img
                class="section_slider_nav_btn"
                src="https://www.roomescape.co.kr/_template/assets/img/main/next.png"
                alt=""
              />
            </div>
          </div>
          <div class="owl-dots">
            <div class="owl-dot active">
              <span></span>
            </div>
            <div class="owl-dot">
              <span></span>
            </div>
            <div class="owl-dot">
              <span></span>
            </div>
            <div class="owl-dot">
              <span></span>
            </div>
            <div class="owl-dot">
              <span></span>
            </div>
            <div class="owl-dot">
              <span></span>
            </div>
          </div>
        </div>
      </div>
      <script>
        $("#owl_carousel_2").owlCarousel({
          items: 5,
          nav: true,
          dots: true,
          dotsEach: true /* dots 항상 표시 */,
          margin: 20 /* 슬라이드 각 요소의 margin값 넣기 */,
          center: true /* 첫번째 요소가 가운데로 배치 */,
          loop: true,
          items: 10,
          itemsDesktop: [1199, 10],
          itemsDesktopSmall: [980, 9],
          itemsTablet: [768, 5],
          itemsTabletSmall: false,
          itemsMobile: [479, 4],
          navText: [
            '<img class="section_slider_nav_btn" src="https://www.roomescape.co.kr/_template/assets/img/main/prev.png" alt="" />',
            '<img class="section_slider_nav_btn" src="https://www.roomescape.co.kr/_template/assets/img/main/next.png" alt="" />',
          ],
          rewindSpeed: 0,
          //autoplay:true,
          mouseDrag: true,
          responsiveClass: true,
          responsive: {
            0: {
              items: 1,
              loop: true,
            },
            480: {
              items: 1,
              loop: true,
            },
            769: {
              items: 3,
              loop: true,
            },
          },
          onInitialized: function (e) {
            idx = e.item.index;
            console.log($("#owl_carousel_2 .owl-item.active").length);
            var $item_length = $("#owl_carousel_2 .owl-item.active").length;
            if ($item_length == 5) {
              $("#owl_carousel_2 .owl-item.middle").removeClass("middle");
              $("#owl_carousel_2 .owl-item.medium").removeClass("medium");
              $("#owl_carousel_2 .owl-item")
                .eq(idx + 2)
                .addClass("middle");
              $("#owl_carousel_2 .owl-item")
                .eq(idx - 1)
                .addClass("medium");
              $("#owl_carousel_2 .owl-item")
                .eq(idx + 1)
                .addClass("medium");
            } else if ($item_length == 3) {
              $("#owl_carousel_2 .owl-item.middle").removeClass("middle");
              $("#owl_carousel_2 .owl-item.medium").removeClass("medium");
              $("#owl_carousel_2 .owl-item")
                .eq(idx + 1)
                .addClass("middle");
              $("#owl_carousel_2 .owl-item")
                .eq(idx - 1)
                .addClass("medium");
              $("#owl_carousel_2 .owl-item")
                .eq(idx + 1)
                .addClass("medium");
            } else if ($item_length == 1) {
              $("#owl_carousel_2 .owl-item.middle").removeClass("middle");
              $("#owl_carousel_2 .owl-item.medium").removeClass("medium");
              $("#owl_carousel_2 .owl-item").eq(idx).addClass("middle");
              $("#owl_carousel_2 .owl-item")
                .eq(idx - 1)
                .addClass("medium");
              $("#owl_carousel_2 .owl-item")
                .eq(idx + 1)
                .addClass("medium");
            }
          },
        });
        $("#owl_carousel_2").on(
          "initialized.owl.carousel translate.owl.carousel",
          function (e) {
            idx = e.item.index;
            console.log($("#owl_carousel_2 .owl-item.active").length);
            var $item_length = $("#owl_carousel_2 .owl-item.active").length;
            if ($item_length == 5) {
              $("#owl_carousel_2 .owl-item.middle").removeClass("middle");
              $("#owl_carousel_2 .owl-item.medium").removeClass("medium");
              $("#owl_carousel_2 .owl-item")
                .eq(idx + 2)
                .addClass("middle");
              $("#owl_carousel_2 .owl-item")
                .eq(idx - 1)
                .addClass("medium");
              $("#owl_carousel_2 .owl-item")
                .eq(idx + 1)
                .addClass("medium");
            } else if ($item_length == 3) {
              $("#owl_carousel_2 .owl-item.middle").removeClass("middle");
              $("#owl_carousel_2 .owl-item.medium").removeClass("medium");
              $("#owl_carousel_2 .owl-item")
                .eq(idx + 1)
                .addClass("middle");
              $("#owl_carousel_2 .owl-item")
                .eq(idx - 1)
                .addClass("medium");
              $("#owl_carousel_2 .owl-item")
                .eq(idx + 1)
                .addClass("medium");
            } else if ($item_length == 1) {
              $("#owl_carousel_2 .owl-item.middle").removeClass("middle");
              $("#owl_carousel_2 .owl-item.medium").removeClass("medium");
              $("#owl_carousel_2 .owl-item").eq(idx).addClass("middle");
              $("#owl_carousel_2 .owl-item")
                .eq(idx - 1)
                .addClass("medium");
              $("#owl_carousel_2 .owl-item")
                .eq(idx + 1)
                .addClass("medium");
            }
          }
        );
      </script>
      <style>
        #owl_carousel_2 .owl-item {
          display: inline-block;
          opacity: 0;
          transform: scale(0.8);
          -ms-transform: scale(0.8);
          transition: all 0.2s;
          -webkit-transform: all 0.2s;
          z-index: 1;
        }
        #owl_carousel_2 .active {
          opacity: 0.5;
        }
        #owl_carousel_2 .active.middle_beside {
          transform: scale(0.9);
          -ms-transform: scale(0.9);
          opacity: 0.8;
          margin: 0 -1%;
          z-index: 2;
          margin-left: 10px;
          margin-right: 30px;
        }
        #owl_carousel_2 .active.center {
          transform: scale(1.1);
          -ms-transform: scale(1.1);
          opacity: 1;
          z-index: 3;
        }
        @media all and (max-width: 768px) {
          #owl_carousel_2 .active.center {
            transform: scale(0.8);
            -ms-transform: scale(0.8);
          }
        }
      </style>
      <link
        rel="stylesheet"
        href="https://www.roomescape.co.kr/_template/assets/lib/owl-carousel/css/owl.carousel.css"
      />
      <link
        rel="stylesheet"
        href="https://www.roomescape.co.kr/_template/assets/lib/owl-carousel/css/owl.theme.default.css"
      />
      <script src="https://www.roomescape.co.kr/_template/assets/lib/owl-carousel/js/owl.carousel.js"></script>
      <div class="container_inner section section_partner">
        <div class="fixing_wid">
          <div class="section_title">
            <a href="https://www.roomescape.co.kr/theme/main.php"
              ><img
                src="https://www.roomescape.co.kr/_template/assets/img/main/partner.jpg?ver=171737"
                alt=""
            /></a>
          </div>
          <div class="partner-row row-span-2">
            <div class="partner-col">
              <div class="partner-col-1">
                <a
                  href="http://www.secretgardenescape.com/index.html"
                  target="_blank"
                >
                  <img
                    src="https://www.roomescape.co.kr/_template/assets/img/main/partner/1.png"
                    alt=""
                  />
                </a>
              </div>
            </div>
            <div class="partner-col">
              <div class="partner-col-1">
                <a href="https://hideescape.com/" target="_blank">
                  <img
                    src="https://www.roomescape.co.kr/_template/assets/img/main/partner/2.png"
                    alt=""
                  />
                </a>
              </div>
              <div class="partner-col-2">
                <a href="http://dumbndumber.kr/" target="_blank">
                  <img
                    src="https://www.roomescape.co.kr/_template/assets/img/main/partner/3.png"
                    alt=""
                  />
                </a>
              </div>
            </div>
            <div class="partner-col">
              <div class="partner-col-1">
                <a href="http://solver-gd.com/" target="_blank">
                  <img
                    src="https://www.roomescape.co.kr/_template/assets/img/main/partner/5.png"
                    alt=""
                  />
                </a>
              </div>
              <div class="partner-col-2">
                <a
                  href="http://www.codenameblack-bs.co.kr/index.html"
                  target="_blank"
                >
                  <img
                    src="https://www.roomescape.co.kr/_template/assets/img/main/partner/9.png"
                    alt=""
                  />
                </a>
              </div>
            </div>
            <div class="partner-col">
              <div class="partner-col-1">
                <a href="http://www.the-qescapedj.co.kr/" target="_blank">
                  <img
                    src="https://www.roomescape.co.kr/_template/assets/img/main/partner/10.png"
                    alt=""
                  />
                </a>
              </div>
              <div class="partner-col-2">
                <a href="https://www.signalhunter.co.kr/" target="_blank">
                  <img
                    src="https://www.roomescape.co.kr/_template/assets/img/main/partner/22.png"
                    alt=""
                  />
                </a>
              </div>
            </div>
            <div class="partner-col">
              <a href="https://www.greatescape.co.kr/" target="_blank">
                <img
                  src="https://www.roomescape.co.kr/_template/assets/img/main/partner/21.png"
                  alt=""
                />
              </a>
            </div>
            <div class="partner-col">
              <a href="https://breakoutescapehongik.modoo.at/" target="_blank">
                <img
                  src="https://www.roomescape.co.kr/_template/assets/img/main/partner/20.png"
                  alt=""
                />
              </a>
            </div>
            <div class="partner-col">
              <a href="http://illusionescape.kr/" target="_blank">
                <img
                  src="https://www.roomescape.co.kr/_template/assets/img/main/partner/23.png"
                  alt=""
                />
              </a>
            </div>
          </div>
        </div>
      </div>
      <script type="text/javascript">
        $(function () {
          $("#dialog-confirm").dialog({
            autoOpen: false,
            resizable: false,
            draggable: false,
            height: "auto",
            width: 400,
            /* title: "알림니다.", */
            modal: true,
            open: function () {
              $(this).html("완료되었습니다.");
              $(".custom-dialog-titlebar-content").remove();
              $(".custom-dialog-titlebar-close-btn").remove();
              $(".ui-dialog-titlebar").append(
                "<div class='custom-dialog-titlebar-content'><img src='https://www.roomescape.co.kr/_template/assets/img/alert/alert_icon_1.png' alt='' /></div>"
              );
              $(".ui-dialog-titlebar .ui-dialog-titlebar-close").append(
                "<img class='custom-dialog-titlebar-close-btn' src='https://www.roomescape.co.kr/_template/assets/img/alert/alert_close_1.png' alt='' />"
              );
            },
            buttons: {
              확인: function () {
                $(this).dialog("close");
              },
            },
          });
          $("#btn").on("click", function () {
            $("#dialog-confirm").dialog("open"); //다이얼로그창 오픈
          });
        });
      </script>
      <!-- <input type="button" id="btn" value="창 열기"/> -->
      <!-- <div id="dialog-confirm" title="Empty the recycle bin?">
  <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span></p>
</div> -->
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
    </div>
    <div
      tabindex="-1"
      role="dialog"
      class="ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-dialog-buttons"
      aria-describedby="dialog-confirm"
      aria-labelledby="ui-id-1"
      style="display: none"
    >
      <div
        class="ui-dialog-titlebar ui-corner-all ui-widget-header ui-helper-clearfix"
      >
        <span id="ui-id-1" class="ui-dialog-title">&nbsp;</span
        ><button type="button" class="ui-dialog-titlebar-close"></button>
      </div>
      <div id="dialog-confirm" class="ui-dialog-content ui-widget-content">
        <p>
          <span
            class="ui-icon ui-icon-alert"
            style="float: left; margin: 12px 12px 20px 0"
          ></span>
        </p>
      </div>
      <div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
        <div class="ui-dialog-buttonset">
          <button type="button">확인</button>
        </div>
      </div>
    </div>
  </body>
</html>
