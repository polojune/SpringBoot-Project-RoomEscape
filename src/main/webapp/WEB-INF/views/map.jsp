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













    <link href="/css/info.css?ver=171736" rel="stylesheet" />




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
        .placeinfo_wrap {
            position: absolute;
            bottom: 45px;
            left: -148px;
            width: 300px;
        }

        .placeinfo {
            position: relative;
            width: 100%;
            border-radius: 15px;
            border: 1px solid #ccc;
            border-bottom: 2px solid #ddd;
            padding-bottom: 10px;
            background: #fff;
        }

        .placeinfo:nth-of-type(n) {
            border: 0;
            box-shadow: 0px 1px 2px #888;
        }

        .placeinfo_wrap .after {
            content: '';
            position: relative;
            margin-left: -12px;
            left: 50%;
            width: 22px;
            height: 12px;
            background: url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
        }

        .placeinfo a,
        .placeinfo a:hover,
        .placeinfo a:active {
            color: #fff;
            text-decoration: none;
        }

        .placeinfo a,
        .placeinfo span {
            display: block;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
        }

        .placeinfo span {
            margin: 10px 10px 0 10px;
            cursor: default;
            font-size: 14px;
        }

        .placeinfo .title {
            font-weight: bold;
            font-size: 19px;
            border-radius: 15px 15px 0 0;
            margin: -1px -1px 0 -1px;
            padding: 10px;
            color: #000;
            background: #ffc700;
            background: #ffc700 url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;
        }

        .placeinfo .tel {
            color: #0f7833;
        }

        .placeinfo .jibun {
            color: #999;
            font-size: 11px;
            margin-top: 0;
        }

        .placeImage {
            width: 100%;
        }

        .placeImage img {
            width: 280px;
        }

        .placeDesc {
            border-bottom: 1px solid #ccc;
            padding: 10px 0;
        }

        .placeStarRank span {
            display: inline-block;
            vertical-align: middle;
            margin: 0;
        }

        .placeStarRank span.tag {
            margin-right: 10px;
        }

        .placeStarRank span.value img {
            width: 90px;
            vertical-align: middle;
        }

        .placeCall>img {
            display: inline-block;
            width: 20px;
            vertical-align: middle;
            margin-right: 10px;
        }

        .placeCall>span {
            display: inline-block;
            vertical-align: middle;
            margin: 0;
        }

        .placeLoc>img {
            display: inline-block;
            width: 20px;
            vertical-align: middle;
            margin-right: 10px;
        }

        .placeLoc>span {
            display: inline-block;
            vertical-align: middle;
            margin: 0;
        }

        .placeinfoClose {
            position: absolute;
            bottom: 10px;
            right: 10px;
            color: #000 !important;
        }

        @media all and (max-width:420px) {
            .placeinfo_wrap {
                position: absolute;
                bottom: 45px;
                left: -120px;
                width: 240px;
            }

            .placeImage img {
                width: 220px;
            }
        }
    </style>
</head>

<body class="info index">



<%@ include file="include/nav.jsp"%>




        <div class="container_inner section info_section">
            <div class="section_inner info_section_inner">
                <div class="contents">
                    <div class="back_img"
                        style="background-image:url(https://www.roomescape.co.kr/_template/assets/img/info/back.jpg);">
                        <div class="element element_1">
                            <div class="element_inner element_1_inner">
                                <div class="pic_box_1">
                                    <div class="pic_box_1_inner">
                                        <div class="pic"
                                            style="background-image:url(https://www.roomescape.co.kr/_template/assets/img/info/pic3.png);">
                                        </div>
                                    </div>
                                </div>

                                <div class="pic_box_2">
                                    <div class="pic_box_2_inner">
                                        <div class="pic">
                                            <img src="https://www.roomescape.co.kr/_template/assets/img/info/pic2.png"
                                                alt="" />
                                        </div>
                                    </div>
                                </div>

                                <div class="pic_box_3">
                                    <div class="pic_box_3_inner">
                                        <div class="pic"
                                            style="background-image:url(https://www.roomescape.co.kr/_template/assets/img/info/pic1.png);">
                                        </div>
                                    </div>
                                </div>

                                <div class="pic_box_4">
                                    <div class="pic_box_4_inner">
                                        <div class="pic">
                                            <a href="https://www.roomescape.co.kr/book/index.php?type=select">
                                                <img src="https://www.roomescape.co.kr/_template/assets/img/info/btn.png"
                                                    alt="" />
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                        <style>
        .map_wrap,
        .map_wrap * {
            margin: 0;
            padding: 0;
            font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
            font-size: 12px;
        }

        .map_wrap a,
        .map_wrap a:hover,
        .map_wrap a:active {
            color: #000;
            text-decoration: none;
        }

        .map_wrap {
            position: relative;
            width: 100%;
            height: 500px;
        }

        #menu_wrap {
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            width: 250px;
            margin: 10px 0 30px 10px;
            padding: 5px;
            overflow-y: auto;
            background: rgba(255, 255, 255, 0.7);
            z-index: 1;
            font-size: 12px;
            border-radius: 10px;
        }

        .bg_white {
            background: #fff;
        }

        #menu_wrap hr {
            display: block;
            height: 1px;
            border: 0;
            border-top: 2px solid #5f5f5f;
            margin: 3px 0;
        }

        #menu_wrap .option {
            text-align: center;
        }

        #menu_wrap .option p {
            margin: 10px 0;
        }

        #menu_wrap .option button {
            margin-left: 5px;
        }

        #placesList li {
            list-style: none;
        }

        #placesList .item {
            position: relative;
            border-bottom: 1px solid #888;
            overflow: hidden;
            cursor: pointer;
            min-height: 65px;
        }

        #placesList .item span {
            display: block;
            margin-top: 4px;
        }

        #placesList .item h5,
        #placesList .item .info {
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
        }

        #placesList .item .info {
            padding: 10px 0 10px 55px;
        }

        #placesList .info .gray {
            color: #8a8a8a;
        }

        #placesList .info .jibun {
            padding-left: 26px;
            background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;
        }

        #placesList .info .tel {
            color: #009900;
        }

        #placesList .item .markerbg {
            float: left;
            position: absolute;
            width: 36px;
            height: 37px;
            margin: 10px 0 0 10px;
            background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;
        }

        #placesList .item .marker_1 {
            background-position: 0 -10px;
        }

        #placesList .item .marker_2 {
            background-position: 0 -56px;
        }

        #placesList .item .marker_3 {
            background-position: 0 -102px;
        }

        #placesList .item .marker_4 {
            background-position: 0 -148px;
        }

        #placesList .item .marker_5 {
            background-position: 0 -194px;
        }

        #placesList .item .marker_6 {
            background-position: 0 -240px;
        }

        #placesList .item .marker_7 {
            background-position: 0 -286px;
        }

        #placesList .item .marker_8 {
            background-position: 0 -332px;
        }

        #placesList .item .marker_9 {
            background-position: 0 -378px;
        }

        #placesList .item .marker_10 {
            background-position: 0 -423px;
        }

        #placesList .item .marker_11 {
            background-position: 0 -470px;
        }

        #placesList .item .marker_12 {
            background-position: 0 -516px;
        }

        #placesList .item .marker_13 {
            background-position: 0 -562px;
        }

        #placesList .item .marker_14 {
            background-position: 0 -608px;
        }

        #placesList .item .marker_15 {
            background-position: 0 -654px;
        }

        #pagination {
            margin: 10px auto;
            text-align: center;
        }

        #pagination a {
            display: inline-block;
            margin-right: 10px;
        }

        #pagination .on {
            font-weight: bold;
            cursor: default;
            color: #777;
        }
    </style>
</head>

<body>
    <div class="map_wrap">
        <div id="map" style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

        <div id="menu_wrap" class="bg_white">
            <div class="option">
                <div>
                    <form onsubmit="searchPlaces(); return false;">
                        키워드 :
                        <input type="text" value="부산 방탈출" id="keyword" size="15" />
                        <button type="submit">검색하기</button>
                    </form>
                </div>
            </div>
            <hr />
            <ul id="placesList"></ul>
            <div id="pagination"></div>
        </div>
    </div>

    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7180a742e16db4aeb690e2cb6d1254f6&libraries=services"></script>
    <script>
        // 마커를 담을 배열입니다
        var markers = [];

        var mapContainer = document.getElementById('map'), // 지도를 표시할 div
            mapOption = {
                center: new kakao.maps.LatLng(35.156603, 129.058748), // 지도의 중심좌표
                level: 3, // 지도의 확대 레벨
            };

        // 지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 장소 검색 객체를 생성합니다
        var ps = new kakao.maps.services.Places();

        // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
        var infowindow = new kakao.maps.InfoWindow({
            zIndex: 1
        });

        // 키워드로 장소를 검색합니다
        searchPlaces();

        // 키워드 검색을 요청하는 함수입니다
        function searchPlaces() {
            var keyword = document.getElementById('keyword').value;

            if (!keyword.replace(/^\s+|\s+$/g, '')) {
                alert('키워드를 입력해주세요!');
                return false;
            }

            // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
            ps.keywordSearch(keyword, placesSearchCB);
        }

        // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
        function placesSearchCB(data, status, pagination) {
            if (status === kakao.maps.services.Status.OK) {
                // 정상적으로 검색이 완료됐으면
                // 검색 목록과 마커를 표출합니다
                displayPlaces(data);

                // 페이지 번호를 표출합니다
                displayPagination(pagination);
            } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
                alert('검색 결과가 존재하지 않습니다.');
                return;
            } else if (status === kakao.maps.services.Status.ERROR) {
                alert('검색 결과 중 오류가 발생했습니다.');
                return;
            }
        }

        // 검색 결과 목록과 마커를 표출하는 함수입니다
        function displayPlaces(places) {
            var listEl = document.getElementById('placesList'),
                menuEl = document.getElementById('menu_wrap'),
                fragment = document.createDocumentFragment(),
                bounds = new kakao.maps.LatLngBounds(),
                listStr = '';

            // 검색 결과 목록에 추가된 항목들을 제거합니다
            removeAllChildNods(listEl);

            // 지도에 표시되고 있는 마커를 제거합니다
            removeMarker();

            for (var i = 0; i < places.length; i++) {
                // 마커를 생성하고 지도에 표시합니다
                var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
                    marker = addMarker(placePosition, i),
                    itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

                // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
                // LatLngBounds 객체에 좌표를 추가합니다
                bounds.extend(placePosition);

                // 마커와 검색결과 항목에 mouseover 했을때
                // 해당 장소에 인포윈도우에 장소명을 표시합니다
                // mouseout 했을 때는 인포윈도우를 닫습니다
                (function(marker, title) {
                    kakao.maps.event.addListener(marker, 'mouseover', function() {
                        displayInfowindow(marker, title);
                    });

                    kakao.maps.event.addListener(marker, 'mouseout', function() {
                        infowindow.close();
                    });

                    itemEl.onmouseover = function() {
                        displayInfowindow(marker, title);
                    };

                    itemEl.onmouseout = function() {
                        infowindow.close();
                    };
                })(marker, places[i].place_name);

                fragment.appendChild(itemEl);
            }

            // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
            listEl.appendChild(fragment);
            menuEl.scrollTop = 0;

            // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
            map.setBounds(bounds);
        }

        // 검색결과 항목을 Element로 반환하는 함수입니다
        function getListItem(index, places) {
            var el = document.createElement('li'),
                itemStr =
                '<span class="markerbg marker_' +
                (index + 1) +
                '"></span>' +
                '<div class="info">' +
                '   <h5>' +
                places.place_name +
                '</h5>';

            if (places.road_address_name) {
                itemStr +=
                    '    <span>' +
                    places.road_address_name +
                    '</span>' +
                    '   <span class="jibun gray">' +
                    places.address_name +
                    '</span>';
            } else {
                itemStr += '    <span>' + places.address_name + '</span>';
            }

            itemStr += '  <span class="tel">' + places.phone + '</span>' + '</div>';

            el.innerHTML = itemStr;
            el.className = 'item';

            return el;
        }

        // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
        function addMarker(position, idx, title) {
            var imageSrc =
                'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
                imgOptions = {
                    spriteSize: new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
                    spriteOrigin: new kakao.maps.Point(0, idx * 46 + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                    offset: new kakao.maps.Point(13, 37), // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                },
                markerImage = new kakao.maps.MarkerImage(
                    imageSrc,
                    imageSize,
                    imgOptions
                ),
                marker = new kakao.maps.Marker({
                    position: position, // 마커의 위치
                    image: markerImage,
                });

            marker.setMap(map); // 지도 위에 마커를 표출합니다
            markers.push(marker); // 배열에 생성된 마커를 추가합니다

            return marker;
        }

        // 지도 위에 표시되고 있는 마커를 모두 제거합니다
        function removeMarker() {
            for (var i = 0; i < markers.length; i++) {
                markers[i].setMap(null);
            }
            markers = [];
        }

        // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
        function displayPagination(pagination) {
            var paginationEl = document.getElementById('pagination'),
                fragment = document.createDocumentFragment(),
                i;

            // 기존에 추가된 페이지번호를 삭제합니다
            while (paginationEl.hasChildNodes()) {
                paginationEl.removeChild(paginationEl.lastChild);
            }

            for (i = 1; i <= pagination.last; i++) {
                var el = document.createElement('a');
                el.href = '#';
                el.innerHTML = i;

                if (i === pagination.current) {
                    el.className = 'on';
                } else {
                    el.onclick = (function(i) {
                        return function() {
                            pagination.gotoPage(i);
                        };
                    })(i);
                }

                fragment.appendChild(el);
            }
            paginationEl.appendChild(fragment);
        }

        // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
        // 인포윈도우에 장소명을 표시합니다
        function displayInfowindow(marker, title) {
            var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

            infowindow.setContent(content);
            infowindow.open(map, marker);
        }

        // 검색결과 목록의 자식 Element를 제거하는 함수입니다
        function removeAllChildNods(el) {
            while (el.hasChildNodes()) {
                el.removeChild(el.lastChild);
            }
        }
    </script>

                </div>
            </div>
        </div>

        <div class="container_inner section loc_map_section">
            <div class="section_inner info_section_inner">
                <div class="contents">
                    <div id="map_box" class="map_box">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function malformedJSON2Array(tar) {
            var arr = [];
            tar = tar.replace(/^\{|\}$/g, '').split(',');
            for (var i = 0, cur, pair; cur = tar[i]; i++) {
                arr[i] = {};
                pair = cur.split(':');
                arr[i][pair[0]] = /^\d*$/.test(pair[1]) ? +pair[1] : pair[1];
            }
            return arr;
        }
    </script>
    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ce18cab36a449220fafb15c9ed629ece"></script>
    <script>
        var _0xb1ff = ["", "\x6D\x61\x70\x73", "\x64\x69\x76", "\x63\x72\x65\x61\x74\x65\x45\x6C\x65\x6D\x65\x6E\x74", "\x73\x65\x74\x43\x6F\x6E\x74\x65\x6E\x74", "\x61\x6A\x61\x78\x53\x65\x74\x75\x70", "\x2E\x2E\x2F\x62\x62\x73\x2F\x61\x6A\x61\x78\x2E\x73\x74\x6F\x72\x65\x2E\x6D\x61\x70\x2E\x6D\x61\x72\x6B\x65\x72\x2E\x70\x68\x70", "\x70\x61\x72\x73\x65", "\x6C\x65\x6E\x67\x74\x68", "\x73\x74\x6F\x72\x65\x5F\x70\x6F\x73\x69\x74\x69\x6F\x6E", "\x70\x6F\x73\x74", "\x74\x6F\x4C\x6F\x77\x65\x72\x43\x61\x73\x65", "\x75\x73\x65\x72\x41\x67\x65\x6E\x74", "\x61\x70\x70\x4E\x61\x6D\x65", "\x4E\x65\x74\x73\x63\x61\x70\x65", "\x74\x72\x69\x64\x65\x6E\x74", "\x69\x6E\x64\x65\x78\x4F\x66", "\x6D\x73\x69\x65", "\x67\x65\x6F\x6C\x6F\x63\x61\x74\x69\x6F\x6E", "\x6D\x61\x70\x5F\x62\x6F\x78", "\x67\x65\x74\x45\x6C\x65\x6D\x65\x6E\x74\x42\x79\x49\x64", "\x6C\x61\x74\x69\x74\x75\x64\x65", "\x63\x6F\x6F\x72\x64\x73", "\x6C\x6F\x6E\x67\x69\x74\x75\x64\x65", "\x63\x6C\x61\x73\x73\x4E\x61\x6D\x65", "\x70\x6C\x61\x63\x65\x69\x6E\x66\x6F\x5F\x77\x72\x61\x70", "\x6D\x6F\x75\x73\x65\x64\x6F\x77\x6E", "\x70\x72\x65\x76\x65\x6E\x74\x4D\x61\x70", "\x65\x76\x65\x6E\x74", "\x74\x6F\x75\x63\x68\x73\x74\x61\x72\x74", "\x73\x74\x6F\x72\x65\x5F\x78\x5F\x70\x6F\x73\x69\x74\x69\x6F\x6E", "\x73\x74\x6F\x72\x65\x5F\x79\x5F\x70\x6F\x73\x69\x74\x69\x6F\x6E", "\x73\x74\x6F\x72\x65\x5F\x6E\x61\x6D\x65", "\x63\x6C\x69\x63\x6B", "\x61\x64\x64\x4C\x69\x73\x74\x65\x6E\x65\x72", "\x33\x37\x2E\x34\x39\x35\x38\x33\x37", "\x31\x32\x37\x2E\x30\x32\x38\x32\x31\x34", "\x67\x65\x74\x43\x75\x72\x72\x65\x6E\x74\x50\x6F\x73\x69\x74\x69\x6F\x6E", "\x61\x64\x64\x45\x76\x65\x6E\x74\x4C\x69\x73\x74\x65\x6E\x65\x72", "\x6F\x6E", "\x61\x74\x74\x61\x63\x68\x45\x76\x65\x6E\x74", "\x2F\x2F\x74\x31\x2E\x64\x61\x75\x6D\x63\x64\x6E\x2E\x6E\x65\x74\x2F\x6C\x6F\x63\x61\x6C\x69\x6D\x67\x2F\x6C\x6F\x63\x61\x6C\x69\x6D\x61\x67\x65\x73\x2F\x30\x37\x2F\x6D\x61\x70\x61\x70\x69\x64\x6F\x63\x2F\x6D\x61\x72\x6B\x65\x72\x53\x74\x61\x72\x2E\x70\x6E\x67", "\x73\x65\x74\x4D\x61\x70", "\x70\x75\x73\x68", "\x3C\x64\x69\x76\x20\x63\x6C\x61\x73\x73\x3D\x22\x70\x6C\x61\x63\x65\x69\x6E\x66\x6F\x22\x3E\x3C\x61\x20\x68\x72\x65\x66\x3D\x22\x6A\x61\x76\x61\x73\x63\x72\x69\x70\x74\x3A\x63\x6C\x6F\x73\x65\x5F\x77\x69\x6E\x64\x6F\x77\x28\x29\x3B\x22\x20\x63\x6C\x61\x73\x73\x3D\x22\x70\x6C\x61\x63\x65\x69\x6E\x66\x6F\x43\x6C\x6F\x73\x65\x22\x20\x3E\uB2EB\uAE30\x3C\x2F\x61\x3E", "\x3C\x61\x20\x63\x6C\x61\x73\x73\x3D\x22\x74\x69\x74\x6C\x65\x22\x20\x68\x72\x65\x66\x3D\x22", "\x2F\x73\x74\x6F\x72\x65\x2F\x64\x65\x74\x61\x69\x6C\x2E\x70\x68\x70\x3F\x63\x61\x66\x65\x3D", "\x73\x74\x6F\x72\x65\x5F\x69\x64", "\x22\x20\x74\x61\x72\x67\x65\x74\x3D\x22\x5F\x62\x6C\x61\x6E\x6B\x22\x20\x74\x69\x74\x6C\x65\x3D\x22", "\x22\x3E", "\x3C\x2F\x61\x3E", "\x3C\x73\x70\x61\x6E\x20\x63\x6C\x61\x73\x73\x3D\x22\x70\x6C\x61\x63\x65\x49\x6D\x61\x67\x65\x22\x3E\x3C\x69\x6D\x67\x20\x73\x72\x63\x3D\x22", "\x73\x74\x6F\x72\x65\x5F\x69\x6D\x61\x67\x65", "\x22\x20\x61\x6C\x74\x3D\x22\x22\x20\x2F\x3E\x3C\x2F\x73\x70\x61\x6E\x3E", "\x3C\x73\x70\x61\x6E\x20\x63\x6C\x61\x73\x73\x3D\x22\x70\x6C\x61\x63\x65\x44\x65\x73\x63\x22\x20\x74\x69\x74\x6C\x65\x3D\x22", "\x73\x74\x6F\x72\x65\x5F\x64\x65\x73\x63", "\x3C\x2F\x73\x70\x61\x6E\x3E", "\x3C\x73\x70\x61\x6E\x20\x63\x6C\x61\x73\x73\x3D\x22\x70\x6C\x61\x63\x65\x53\x74\x61\x72\x52\x61\x6E\x6B\x22\x3E", "\x3C\x73\x70\x61\x6E\x20\x63\x6C\x61\x73\x73\x3D\x22\x74\x61\x67\x22\x3E\uD3C9\uC810\x3C\x2F\x73\x70\x61\x6E\x3E", "\x3C\x73\x70\x61\x6E\x20\x63\x6C\x61\x73\x73\x3D\x22\x76\x61\x6C\x75\x65\x22\x3E", "\x73\x74\x6F\x72\x65\x5F\x73\x74\x61\x72\x5F\x72\x61\x6E\x6B", "\x3C\x69\x6D\x67\x20\x73\x72\x63\x3D\x22", "\x2F\x69\x6D\x67\x2F\x74\x68\x65\x6D\x65\x2F\x72\x65\x73\x75\x6C\x74\x2F\x35\x73\x74\x61\x72\x2E\x70\x6E\x67\x22\x20\x61\x6C\x74\x3D\x22\x22\x20\x2F\x3E", "\x2F\x69\x6D\x67\x2F\x74\x68\x65\x6D\x65\x2F\x72\x65\x73\x75\x6C\x74\x2F\x34\x2E\x35\x73\x74\x61\x72\x2E\x70\x6E\x67\x22\x20\x61\x6C\x74\x3D\x22\x22\x20\x2F\x3E", "\x2F\x69\x6D\x67\x2F\x74\x68\x65\x6D\x65\x2F\x72\x65\x73\x75\x6C\x74\x2F\x34\x73\x74\x61\x72\x2E\x70\x6E\x67\x22\x20\x61\x6C\x74\x3D\x22\x22\x20\x2F\x3E", "\x2F\x69\x6D\x67\x2F\x74\x68\x65\x6D\x65\x2F\x72\x65\x73\x75\x6C\x74\x2F\x33\x2E\x35\x73\x74\x61\x72\x2E\x70\x6E\x67\x22\x20\x61\x6C\x74\x3D\x22\x22\x20\x2F\x3E", "\x2F\x69\x6D\x67\x2F\x74\x68\x65\x6D\x65\x2F\x72\x65\x73\x75\x6C\x74\x2F\x33\x73\x74\x61\x72\x2E\x70\x6E\x67\x22\x20\x61\x6C\x74\x3D\x22\x22\x20\x2F\x3E", "\x2F\x69\x6D\x67\x2F\x74\x68\x65\x6D\x65\x2F\x72\x65\x73\x75\x6C\x74\x2F\x32\x2E\x35\x73\x74\x61\x72\x2E\x70\x6E\x67\x22\x20\x61\x6C\x74\x3D\x22\x22\x20\x2F\x3E", "\x2F\x69\x6D\x67\x2F\x74\x68\x65\x6D\x65\x2F\x72\x65\x73\x75\x6C\x74\x2F\x32\x73\x74\x61\x72\x2E\x70\x6E\x67\x22\x20\x61\x6C\x74\x3D\x22\x22\x20\x2F\x3E", "\x2F\x69\x6D\x67\x2F\x74\x68\x65\x6D\x65\x2F\x72\x65\x73\x75\x6C\x74\x2F\x31\x2E\x35\x73\x74\x61\x72\x2E\x70\x6E\x67\x22\x20\x61\x6C\x74\x3D\x22\x22\x20\x2F\x3E", "\x2F\x69\x6D\x67\x2F\x74\x68\x65\x6D\x65\x2F\x72\x65\x73\x75\x6C\x74\x2F\x31\x73\x74\x61\x72\x2E\x70\x6E\x67\x22\x20\x61\x6C\x74\x3D\x22\x22\x20\x2F\x3E", "\x2F\x69\x6D\x67\x2F\x74\x68\x65\x6D\x65\x2F\x72\x65\x73\x75\x6C\x74\x2F\x30\x2E\x35\x73\x74\x61\x72\x2E\x70\x6E\x67\x22\x20\x61\x6C\x74\x3D\x22\x22\x20\x2F\x3E", "\x2F\x69\x6D\x67\x2F\x74\x68\x65\x6D\x65\x2F\x72\x65\x73\x75\x6C\x74\x2F\x30\x73\x74\x61\x72\x2E\x70\x6E\x67\x22\x20\x61\x6C\x74\x3D\x22\x22\x20\x2F\x3E", "\x3C\x73\x70\x61\x6E\x20\x63\x6C\x61\x73\x73\x3D\x22\x70\x6C\x61\x63\x65\x43\x61\x6C\x6C\x22\x3E", "\x2F\x69\x6D\x67\x2F\x69\x6E\x66\x6F\x2F\x63\x61\x6C\x6C\x2E\x70\x6E\x67\x22\x20\x61\x6C\x74\x3D\x22\x22\x20\x2F\x3E", "\x3C\x73\x70\x61\x6E\x3E", "\x73\x74\x6F\x72\x65\x5F\x63\x61\x6C\x6C", "\x3C\x2F\x64\x69\x76\x3E\x3C\x64\x69\x76\x20\x63\x6C\x61\x73\x73\x3D\x22\x61\x66\x74\x65\x72\x22\x3E\x3C\x2F\x64\x69\x76\x3E", "\x69\x6E\x6E\x65\x72\x48\x54\x4D\x4C", "\x73\x65\x74\x50\x6F\x73\x69\x74\x69\x6F\x6E", "\x72\x65\x6D\x6F\x76\x65", "\x2E\x70\x6C\x61\x63\x65\x69\x6E\x66\x6F"]; $map = _0xb1ff[0]; var $post_get_cafe_list = _0xb1ff[0]; var positionsCnt = _0xb1ff[0]; var lat = _0xb1ff[0], lon = _0xb1ff[0]; var $ieBrowser = false; var markers = []; var placeOverlay = new kakao[_0xb1ff[1]].CustomOverlay({ zIndex: 1 }); var contentNode = document[_0xb1ff[3]](_0xb1ff[2]); placeOverlay[_0xb1ff[4]](contentNode); $[_0xb1ff[5]]({ async: false }); $[_0xb1ff[10]](_0xb1ff[6], function (_0xe0a9x9) { $post_get_cafe_list = JSON[_0xb1ff[7]](_0xe0a9x9); positionsCnt = $post_get_cafe_list[_0xb1ff[9]][_0xb1ff[8]] }); var agent = navigator[_0xb1ff[12]][_0xb1ff[11]](); if ((navigator[_0xb1ff[13]] == _0xb1ff[14] && agent[_0xb1ff[16]](_0xb1ff[15]) != -1) || (agent[_0xb1ff[16]](_0xb1ff[17]) != -1)) { $ieBrowser = true } else { $ieBrowser = false }; if (!$ieBrowser) { if (navigator[_0xb1ff[18]]) { navigator[_0xb1ff[18]][_0xb1ff[37]](function (_0xe0a9xb) { var container = document[_0xb1ff[20]](_0xb1ff[19]); var options = { center: new kakao[_0xb1ff[1]].LatLng(_0xe0a9xb[_0xb1ff[22]][_0xb1ff[21]], _0xe0a9xb[_0xb1ff[22]][_0xb1ff[23]]), level: 4 }; $map = new kakao[_0xb1ff[1]].Map(container, options); contentNode[_0xb1ff[24]] = _0xb1ff[25]; addEventHandle(contentNode, _0xb1ff[26], kakao[_0xb1ff[1]][_0xb1ff[28]][_0xb1ff[27]]); addEventHandle(contentNode, _0xb1ff[29], kakao[_0xb1ff[1]][_0xb1ff[28]][_0xb1ff[27]]); placeOverlay[_0xb1ff[4]](contentNode); positionsCnt = $post_get_cafe_list[_0xb1ff[9]][_0xb1ff[8]]; if (positionsCnt > 0) { var bounds = new daum[_0xb1ff[1]].LatLngBounds(); for (var $i = 0; $i < positionsCnt; $i++) { latlng = new kakao[_0xb1ff[1]].LatLng($post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[30]], $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[31]]); title = $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[32]]; message = $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[32]]; var marker = addMarker($map, $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[30]], $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[31]]); (function (marker, _0xe0a9x11) { kakao[_0xb1ff[1]][_0xb1ff[28]][_0xb1ff[34]](marker, _0xb1ff[33], function () { displayPlaceInfo(_0xe0a9x11, $map) }) })(marker, $post_get_cafe_list[_0xb1ff[9]][$i]) } } }, function (_0xe0a9x12) { lat = _0xb1ff[35]; lon = _0xb1ff[36]; var container = document[_0xb1ff[20]](_0xb1ff[19]); var options = { center: new kakao[_0xb1ff[1]].LatLng(lat, lon), level: 4 }; $map = new kakao[_0xb1ff[1]].Map(container, options); contentNode[_0xb1ff[24]] = _0xb1ff[25]; addEventHandle(contentNode, _0xb1ff[26], kakao[_0xb1ff[1]][_0xb1ff[28]][_0xb1ff[27]]); addEventHandle(contentNode, _0xb1ff[29], kakao[_0xb1ff[1]][_0xb1ff[28]][_0xb1ff[27]]); placeOverlay[_0xb1ff[4]](contentNode); positionsCnt = $post_get_cafe_list[_0xb1ff[9]][_0xb1ff[8]]; if (positionsCnt > 0) { var bounds = new daum[_0xb1ff[1]].LatLngBounds(); for (var $i = 0; $i < positionsCnt; $i++) { latlng = new kakao[_0xb1ff[1]].LatLng($post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[30]], $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[31]]); title = $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[32]]; message = $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[32]]; var marker = addMarker($map, $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[30]], $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[31]]); (function (marker, _0xe0a9x11) { kakao[_0xb1ff[1]][_0xb1ff[28]][_0xb1ff[34]](marker, _0xb1ff[33], function () { displayPlaceInfo(_0xe0a9x11, $map) }) })(marker, $post_get_cafe_list[_0xb1ff[9]][$i]) } } }) } else { lat = _0xb1ff[35]; lon = _0xb1ff[36]; var container = document[_0xb1ff[20]](_0xb1ff[19]); var options = { center: new kakao[_0xb1ff[1]].LatLng(lat, lon), level: 4 }; $map = new kakao[_0xb1ff[1]].Map(container, options); contentNode[_0xb1ff[24]] = _0xb1ff[25]; addEventHandle(contentNode, _0xb1ff[26], kakao[_0xb1ff[1]][_0xb1ff[28]][_0xb1ff[27]]); addEventHandle(contentNode, _0xb1ff[29], kakao[_0xb1ff[1]][_0xb1ff[28]][_0xb1ff[27]]); placeOverlay[_0xb1ff[4]](contentNode); positionsCnt = $post_get_cafe_list[_0xb1ff[9]][_0xb1ff[8]]; if (positionsCnt > 0) { var bounds = new daum[_0xb1ff[1]].LatLngBounds(); for (var $i = 0; $i < positionsCnt; $i++) { latlng = new kakao[_0xb1ff[1]].LatLng($post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[30]], $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[31]]); title = $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[32]]; message = $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[32]]; var marker = addMarker($map, $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[30]], $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[31]]); (function (marker, _0xe0a9x11) { kakao[_0xb1ff[1]][_0xb1ff[28]][_0xb1ff[34]](marker, _0xb1ff[33], function () { displayPlaceInfo(_0xe0a9x11, $map) }) })(marker, $post_get_cafe_list[_0xb1ff[9]][$i]) } } } } else { lat = _0xb1ff[35]; lon = _0xb1ff[36]; var container = document[_0xb1ff[20]](_0xb1ff[19]); var options = { center: new kakao[_0xb1ff[1]].LatLng(lat, lon), level: 4 }; $map = new kakao[_0xb1ff[1]].Map(container, options); contentNode[_0xb1ff[24]] = _0xb1ff[25]; addEventHandle(contentNode, _0xb1ff[26], kakao[_0xb1ff[1]][_0xb1ff[28]][_0xb1ff[27]]); addEventHandle(contentNode, _0xb1ff[29], kakao[_0xb1ff[1]][_0xb1ff[28]][_0xb1ff[27]]); placeOverlay[_0xb1ff[4]](contentNode); positionsCnt = $post_get_cafe_list[_0xb1ff[9]][_0xb1ff[8]]; if (positionsCnt > 0) { var bounds = new daum[_0xb1ff[1]].LatLngBounds(); for (var $i = 0; $i < positionsCnt; $i++) { latlng = new kakao[_0xb1ff[1]].LatLng($post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[30]], $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[31]]); title = $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[32]]; message = $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[32]]; var marker = addMarker($map, $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[30]], $post_get_cafe_list[_0xb1ff[9]][$i][_0xb1ff[31]]); (function (marker, _0xe0a9x11) { kakao[_0xb1ff[1]][_0xb1ff[28]][_0xb1ff[34]](marker, _0xb1ff[33], function () { displayPlaceInfo(_0xe0a9x11, $map) }) })(marker, $post_get_cafe_list[_0xb1ff[9]][$i]) } } }; function addEventHandle(_0xe0a9x14, _0xe0a9x15, _0xe0a9x16) { if (_0xe0a9x14[_0xb1ff[38]]) { _0xe0a9x14[_0xb1ff[38]](_0xe0a9x15, _0xe0a9x16) } else { _0xe0a9x14[_0xb1ff[40]](_0xb1ff[39] + _0xe0a9x15, _0xe0a9x16) } } function addMarker(_0xe0a9x18, _0xe0a9x19, _0xe0a9x1a) { var _0xe0a9x1b = _0xb1ff[41], _0xe0a9x1c = new kakao[_0xb1ff[1]].Size(30, 44), _0xe0a9x1d = new kakao[_0xb1ff[1]].MarkerImage(_0xe0a9x1b, _0xe0a9x1c), marker = new kakao[_0xb1ff[1]].Marker({ position: new kakao[_0xb1ff[1]].LatLng(_0xe0a9x19, _0xe0a9x1a), image: _0xe0a9x1d }); marker[_0xb1ff[42]](_0xe0a9x18); markers[_0xb1ff[43]](marker); return marker } function displayPlaceInfo(_0xe0a9x11, _0xe0a9x18) { var _0xe0a9x1f = _0xb1ff[44] + _0xb1ff[45] + $home_url + _0xb1ff[46] + _0xe0a9x11[_0xb1ff[47]] + _0xb1ff[48] + _0xe0a9x11[_0xb1ff[32]] + _0xb1ff[49] + _0xe0a9x11[_0xb1ff[32]] + _0xb1ff[50]; _0xe0a9x1f += _0xb1ff[51] + _0xe0a9x11[_0xb1ff[52]] + _0xb1ff[53]; _0xe0a9x1f += _0xb1ff[54] + _0xe0a9x11[_0xb1ff[55]] + _0xb1ff[49] + _0xe0a9x11[_0xb1ff[55]] + _0xb1ff[56]; _0xe0a9x1f += _0xb1ff[57]; _0xe0a9x1f += _0xb1ff[58]; _0xe0a9x1f += _0xb1ff[59]; if (_0xe0a9x11[_0xb1ff[60]] == 5) { _0xe0a9x1f += _0xb1ff[61] + $assets_url + _0xb1ff[62] } else { if (_0xe0a9x11[_0xb1ff[60]] >= 4.5 && _0xe0a9x11[_0xb1ff[60]] < 5.0) { _0xe0a9x1f += _0xb1ff[61] + $assets_url + _0xb1ff[63] } else { if (_0xe0a9x11[_0xb1ff[60]] >= 4.0 && _0xe0a9x11[_0xb1ff[60]] < 4.5) { _0xe0a9x1f += _0xb1ff[61] + $assets_url + _0xb1ff[64] } else { if (_0xe0a9x11[_0xb1ff[60]] >= 3.5 && _0xe0a9x11[_0xb1ff[60]] < 4.0) { _0xe0a9x1f += _0xb1ff[61] + $assets_url + _0xb1ff[65] } else { if (_0xe0a9x11[_0xb1ff[60]] >= 3.0 && _0xe0a9x11[_0xb1ff[60]] < 3.5) { _0xe0a9x1f += _0xb1ff[61] + $assets_url + _0xb1ff[66] } else { if (_0xe0a9x11[_0xb1ff[60]] >= 2.5 && _0xe0a9x11[_0xb1ff[60]] < 3.0) { _0xe0a9x1f += _0xb1ff[61] + $assets_url + _0xb1ff[67] } else { if (_0xe0a9x11[_0xb1ff[60]] >= 2.0 && _0xe0a9x11[_0xb1ff[60]] < 2.5) { _0xe0a9x1f += _0xb1ff[61] + $assets_url + _0xb1ff[68] } else { if (_0xe0a9x11[_0xb1ff[60]] >= 1.5 && _0xe0a9x11[_0xb1ff[60]] < 2.0) { _0xe0a9x1f += _0xb1ff[61] + $assets_url + _0xb1ff[69] } else { if (_0xe0a9x11[_0xb1ff[60]] >= 1.0 && _0xe0a9x11[_0xb1ff[60]] < 1.5) { _0xe0a9x1f += _0xb1ff[61] + $assets_url + _0xb1ff[70] } else { if (_0xe0a9x11[_0xb1ff[60]] >= 0.5 && _0xe0a9x11[_0xb1ff[60]] < 1.0) { _0xe0a9x1f += _0xb1ff[61] + $assets_url + _0xb1ff[71] } else { if (_0xe0a9x11[_0xb1ff[60]] > 0.0 && _0xe0a9x11[_0xb1ff[60]] < 0.5) { _0xe0a9x1f += _0xb1ff[61] + $assets_url + _0xb1ff[71] } else { if (_0xe0a9x11[_0xb1ff[60]] == 0.0) { _0xe0a9x1f += _0xb1ff[61] + $assets_url + _0xb1ff[72] } } } } } } } } } } } }; _0xe0a9x1f += _0xb1ff[56]; _0xe0a9x1f += _0xb1ff[56]; _0xe0a9x1f += _0xb1ff[73]; _0xe0a9x1f += _0xb1ff[61] + $assets_url + _0xb1ff[74]; _0xe0a9x1f += _0xb1ff[75] + _0xe0a9x11[_0xb1ff[76]] + _0xb1ff[56]; _0xe0a9x1f += _0xb1ff[56]; _0xe0a9x1f += _0xb1ff[77]; contentNode[_0xb1ff[78]] = _0xe0a9x1f; placeOverlay[_0xb1ff[79]](new kakao[_0xb1ff[1]].LatLng(_0xe0a9x11[_0xb1ff[30]], _0xe0a9x11[_0xb1ff[31]])); placeOverlay[_0xb1ff[42]](_0xe0a9x18) } function close_window() { $(_0xb1ff[81])[_0xb1ff[80]]() }
    </script>
 
 
 
 
 
<%@ include file="include/footer.jsp"%>
 
 
 
 
 
</body>

</html>