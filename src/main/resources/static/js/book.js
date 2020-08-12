/**
 * 
 */
//	<script>
		window.addEventListener('load', function () {
			vanillaCalendar.init({
				disablePastDays: true
			});
		})
//	</script>
//	<script src="/js/vanillaCalendar.js" type="text/javascript"></script>

//	<script>
		var $date = "";
		var $datetime_string = "";
		var $loc = "";
		var $store_id = "";
		var $theme_id = "";
		var $time = "";

		function isEmpty(value) {
			if (value == "" || value == null || value == undefined || (value != null && typeof value == "object" && !Object.keys(value).length)) {
				return true
			} else {
				return false
			}
		}

		function onlyNumber(obj) {
			$(obj).keyup(function () {
				$(this).val($(this).val().replace(/[^0-9]/g, ""));
			});
		}

		function noneSpace(obj) {
			$(obj).keyup(function () {
				$(this).val($(this).val().replace(/\s/g, ""));
			});
		}

		function getParameterByName(name, url) {
			if (!url) url = window.location.href;
			name = name.replace(/[\[\]]/g, "\\$&");
			var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|&)"),
				results = regex.exec(url);
			return results[2];
		}
//	</script>

//	<script>
		$(window).on("load", function () {
			//시간 기본 선택
			if (getParameterByName('type') == "select") {
				setTimeout(function () {
					// children() 결과가 여러 개인데 html()이 붙으면 맨 앞 것 즉 오늘자 날짜의 숫자만 반환되는 듯!
					$date = $(".vcal-date[data-calendar-status='active']").children().html();
					// console.log("$(window).on('load'): date: ", $date);
					// console.log("$(window).on('load'): active: ", $(".vcal-date[data-calendar-status='active']").children().html());
					// .data() 앞까지 코드가 여러개 객체 반환하지만 그 첫번째에만 .data(...)가 적용된다고. js코드의 createDay에서
					// 각 div마다 data-calendar-date에 this.date값을 저장해 놓음
					$datetime_string = $(".vcal-date[data-calendar-status='active']").data("calendar-date");
					// console.log("$(window).on('load'): datetime_string: ", $datetime_string);
					
					$("span[data-calendar-label='picked']").text($datetime_string);
				}, 500);
				
				// setTimeout() 때문에 아래 두줄 코드가 위 setTimeout() 안의 코드보다 먼저 실행된다

				//지역 기본 선택. $('.loc[data-loc="전국"]').children()까지 하면 span 태그 하나가 유일한 걸로 좁혀짐
				$('.loc[data-loc="전국"]').children().addClass('active');
				$loc = "all";
			} else if (getParameterByName('type') == "store_direct") {
				setTimeout(function () {
					$date = $(".vcal-date[data-calendar-status='active']").children().html();	// 맨 앞의 오늘자 날짜 숫자 반환
					$datetime_string = $(".vcal-date[data-calendar-status='active']").data("calendar-date");
					$loc = "";
					$store_id = "";	// store_id를 안 가져오는 이유는?
				}, 500);
			} else if (getParameterByName('type') == "theme_direct") {
				setTimeout(function () {
					$date = $(".vcal-date[data-calendar-status='active']").children().html();
					$datetime_string = $(".vcal-date[data-calendar-status='active']").data("calendar-date");
					$loc = "";
					$store_id = "";
					$theme_id = "";

					search_allow_time($theme_id, $datetime_string);
				}, 500);
			}
		});
//	</script>

//	<script>
		function search_allow_time($theme_id, $datetime_string) {
			// 백틱이 안되는 건지..
			console.log(`search_allow_time: theme_id: ${$theme_id} datetime_string: ${$datetime_string}`);
			console.log("search_allow_time:datetime_string:", $datetime_string);
			$.ajax({
				type: "POST",
				url: "/book/"+$theme_id+"/times",
				data: {
					//"filter_type": "time",
					"theme_id": $theme_id,
					"datetime_string": $datetime_string
				},
				contentType: "application/json; charset=utf-8",
				dataType: "json",
				cache: false,
				success: function (data) {
					$result = eval(data);

					console.log($result.result);
					console.log($result.other);

					if ($result.result == 'fail') {
						alert($result.msg);
					} else {
						$("#time_list").empty();
						$("#time_list").append($result.element);
					}
				}
			});
		}

		$(".loc").click(function () {
			$("#book_btn").hide();

			$loc = $(this).data("loc");
			console.log('$(".loc").click: this:', this);
			console.log('$(".loc").click: $(this).data("loc"): ', $(this).data("loc"));
			
			$(".loc").children().removeClass("active");
			$(this).children().addClass("active");

			/** 매장 출력 **/
			$.ajax({
				type: "POST",
				url: "../bbs/book.filter.php",
				data: {
					"filter_type": "store",
					"loc": $loc
				},
				dataType: "json",
				cache: false,
				success: function (data) {
					//$result = JSON.parse(data);
					$result = eval(data);

					console.log($result);

					if ($result.result == "fail") {
						alert($result.msg);
					} else {
						$("#store_list").empty();
						$("#theme_list").empty();
						$("#time_list").empty();

						$("#store_list").append($result.element);
					}
				}
			});
		});


		$('.store_list').on('click', '.store', function () {
			$("#book_btn").hide();

			$(".store").children().removeClass("active");
			$(this).children().addClass("active");

			$store_id = $(this).data("store");

			/** 매장 내의 테마 출력 **/
			$.ajax({
				type: "POST",
				url: "../bbs/book.filter.php",
				data: {
					"filter_type": "theme",
					"store_id": $store_id
				},
				dataType: "json",
				cache: false,
				success: function (data) {
					$result = eval(data);

					if ($result.result == 'fail') {
						alert($result.msg);
					} else {
						$("#theme_list").empty();
						$("#time_list").empty();

						$("#theme_list").append($result.element);
					}
				}
			});
		});

		$('.theme_list').on('click', '.theme', function () {
			$("#book_btn").hide();

			$(".theme").children().removeClass("active");
			$(this).children().addClass("active");

			$theme_id = $(this).data("theme");

			search_allow_time($theme_id, $datetime_string);

		});

		/* calender */
		$('.calender').on('click', '.vcal-date', function () {
			$("#book_btn").hide();

			$datetime_string = $(this).data("calendar-date");

			console.log($datetime_string);

			if (isEmpty($datetime_string) === true) {
				alert("예약 날짜를 먼저 선택해주세요.");
			}

			if (isEmpty($theme_id) === false
				|| isEmpty($store_id) == false
				|| isEmpty($loc) === false
				|| isEmpty($datetime_string) === false) {
				search_allow_time($theme_id, $datetime_string);
			}
		});

		$('.time_list').on('click', '.time', function () {

			$('.time').removeClass("active");
			$(this).addClass("active");

			$reserve_allow = $(this).data('reserve-allow');

			if ($reserve_allow === false) {
				alert("해당 시간은 예약이 만료되었습니다.");
				$('.time').removeClass("active");
				$("#book_btn").hide();
			}

			if ($reserve_allow === true) {
				$theme_id = $(this).data("reserve-theme-id");
				$date = $(this).data("reserve-date");
				$datetime = $(this).data("reserve-datetime");
				$("#book_btn").show();
			}
		});

		$('.book_btn_box').on('click', '#book_btn', function () {
			if (isEmpty($loc) === true) {
				alert("지역을 선택해주세요.");
				return false;
			}
			if (isEmpty($store_id) === true) {
				alert("매장을 선택해주세요.");
				return false;
			}
			if (isEmpty($theme_id) === true) {
				alert("테마를 선택해주세요.");
				return false;
			}
			if (isEmpty($date) === true) {
				alert("예약할 날짜를 선택해주세요.");
				return false;
			}
			if (isEmpty($datetime) === true) {
				alert("예약할 날짜를 선택해주세요.");
				return false;
			}



			var agent = navigator.userAgent.toLowerCase();
			if ((navigator.appName == 'Netscape' && agent.indexOf('trident') != -1) || (agent.indexOf("msie") != -1)) {
				//ie
				var $element = "<div id='reserve_wrap_back' class='reserve_wrap_back ie'></div>";
			} else {
				//not ie
				var $element = "<div id='reserve_wrap_back' class='reserve_wrap_back not_ie'></div>";
			}

			$element += "<div id='reserve_wrap' class='reserve_wrap'>";
			$element += "<div class='reserve_layer'>";
			$element += "<div id='reserve_close_btn' class='reserve_close_btn'>";
			$element += "<img src='https://www.roomescape.co.kr/_template/assets/img/reserve/close.png' alt='' />";
			$element += "</div>";
			$element += "<h2>예약정보 입력</h2>";
			$element += "<p>취소나 변경 희망시 매장으로 꼭! 연락 해주세요!</p>";
			$element += "<form id='reserve_frm' class='reserve_frm'>";
			$element += "<div class='reserve_input_box'>";
			$element += "<label class='reserve_label'>예약자</label>";
			$element += "<input type='text' id='reserver' class='reserve_input' name='reserver' maxlength='13' />";
			$element += "</div>";
			$element += "<div class='reserve_input_box'>";
			$element += "<label class='reserve_label'>연락처</label>"
			$element += "<input type='text' id='reserver_phone' class='reserve_input' name='reserver_phone' maxlength='11' onkeydown='onlyNumber(this)' onkeyup='noneSpace(this)' placeholder='- 없이' />";
			$element += "</div>";
			$element += "<div class='reserve_input_box'>";
			$element += "<label class='reserve_label'>메모</label>";
			$element += "<input type='text' id='reserver_memo' class='reserve_input' name='reserver_memo' maxlength='200' placeholder='200자 이하' />";
			$element += "</div>";
			$element += "<div class='reserve_btn_box'>";
			$element += "<input type='submit' id='reserve_btn' class='reserve_btn' value='예약' />";
			$element += "<button type='button' id='cancel_btn' class='cancel_btn'>취소</button>";
			$element += "</div>";
			$element += "</div>";

			$("body").prepend($element);
		});

		$("body").on("submit", "#reserve_frm", function (e) {
			e.preventDefault();

			if (isEmpty($loc) === true) {
				alert("지역을 선택해주세요.");
				return false;
			}
			if (isEmpty($store_id) === true) {
				alert("매장을 선택해주세요.");
				return false;
			}
			if (isEmpty($theme_id) === true) {
				alert("테마를 선택해주세요.");
				return false;
			}
			if (isEmpty($date) === true) {
				alert("예약할 날짜를 선택해주세요.");
				return false;
			}
			if (isEmpty($datetime) === true) {
				alert("예약할 날짜를 선택해주세요.");
				return false;
			}
			if (isEmpty($("#reserver").val()) === true) {
				alert("예약자를 입력해주세요.");
				return false;
			}
			if (isEmpty($("#reserver_phone").val()) === true) {
				alert("연락처를 입력해주세요.");
				return false;
			}
			if (isEmpty($("#reserver_memo").val()) === true) {
				alert("메모를 입력해주세요.");
				return false;
			}

			$.ajax({
				type: "POST",
				url: "../bbs/book.ok.php",
				data: {
					"loc": $loc,
					"store_id": $store_id,
					"theme_id": $theme_id,
					"date": $date,
					"datetime": $datetime,
					"reserver": $("#reserver").val(),
					"reserver_phone": $("#reserver_phone").val(),
					"reserver_memo": $("#reserver_memo").val(),
					"datetime_string": $datetime_string
				},
				dataType: "json",
				cache: false,
				success: function (data) {
					$result = eval(data);

					if ($result.result == "fail") {
						alert($result.msg);
						return false;
					} else {
						alert($result.msg);
						location.reload();
						return false;
					}
				}
			});
		});
//	</script>

//	<script>
		$('body').on('click', '#reserve_wrap_back', function () {
			$('#reserve_wrap_back').remove();
			$('#reserve_wrap').remove();
		});

		$('body').on('click', '#reserve_close_btn', function () {
			$('#reserve_wrap_back').remove();
			$('#reserve_wrap').remove();
		});

		$('body').on('click', '#cancel_btn', function () {
			$('#reserve_wrap_back').remove();
			$('#reserve_wrap').remove();
		});
//	</script>