var vanillaCalendar = {
	// 아래 4줄 data-calendar-xxx 부분은 HTML5의 Data Attributes를 사용한 것
	// https://developer.mozilla.org/en-US/docs/Learn/HTML/Howto/Use_data_attributes
	// https://developer.mozilla.org/en-US/docs/Web/API/HTMLOrForeignElement/dataset
	// https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/data-*
	// jQuery 사용하면 $('[data-calendar-area="month"]')[0] 로 처리 가능. jQuery의 Attribute Equals Selector
    month: document.querySelectorAll('[data-calendar-area="month"]')[0],
    next: document.querySelectorAll('[data-calendar-toggle="next"]')[0],
    previous: document.querySelectorAll('[data-calendar-toggle="previous"]')[0],
    label: document.querySelectorAll('[data-calendar-label="month"]')[0],
    activeDates: null,
    date: new Date(),
    todaysDate: new Date(),
    init: function (t) {
    	console.log("init:this:", this);	// vanillaCalendar
        (this.options = t), this.date.setDate(1), this.createMonth(), this.createListeners();
    },
    createListeners: function () {
        var t = this;
        this.next.addEventListener("click", function () {
            t.clearCalendar();
            var e = t.date.getMonth() + 1;
            t.date.setMonth(e), t.createMonth();
        }),
            this.previous.addEventListener("click", function () {
                t.clearCalendar();
                var e = t.date.getMonth() - 1;
                t.date.setMonth(e), t.createMonth();
            });
    },
    createDay: function (t, e, a) {
    	// console.log(`t:${t}, e:${e}, a:${a}`);
        var n = document.createElement("div"),
            s = document.createElement("span");
        (s.innerHTML = t),
            (n.className = "vcal-date"),
            n.setAttribute("data-calendar-date", this.date),
            1 === t && (n.style.marginLeft = 0 === e ? 6 * 14.28 + "%" : 14.28 * (e - 1) + "%"),
            this.options.disablePastDays && this.date.getTime() <= this.todaysDate.getTime() - 1 ? n.classList.add("vcal-date--disabled") : (n.classList.add("vcal-date--active"), n.setAttribute("data-calendar-status", "active")),
            this.date.toString() === this.todaysDate.toString() && n.classList.add("vcal-date--today"),
            n.appendChild(s),
            this.month.appendChild(n);
    },
    dateClicked: function () {
        var t = this;
        this.activeDates = document.querySelectorAll('[data-calendar-status="active"]');
        // console.log("dateClicked:this.activeDates: ", this.activeDates);
        for (var e = 0; e < this.activeDates.length; e++)
            this.activeDates[e].addEventListener("click", function (e) {
                (document.querySelectorAll('[data-calendar-label="picked"]')[0].innerHTML = this.dataset.calendarDate), t.removeActiveClass(), this.classList.add("vcal-date--selected");
                // console.log('dateClicked: [data-calendar-label="picked"]: ', this.dataset.calendarDate);
            });
    },
    createMonth: function () {
    	console.log("createMonth:this.date.getMonth: ", this.date.getMonth())
        for (var t = this.date.getMonth(); this.date.getMonth() === t; )
        	this.createDay(this.date.getDate(), this.date.getDay(), this.date.getFullYear()), this.date.setDate(this.date.getDate() + 1);
        this.date.setDate(1), this.date.setMonth(this.date.getMonth() - 1), (this.label.innerHTML = this.monthsAsString(this.date.getMonth()) + " " + this.date.getFullYear()), this.dateClicked();
    },
    monthsAsString: function (t) {
        return ["January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"][t];
    },
    clearCalendar: function () {
        vanillaCalendar.month.innerHTML = "";
    },
    removeActiveClass: function () {
        for (var t = 0; t < this.activeDates.length; t++) this.activeDates[t].classList.remove("vcal-date--selected");
    },
};
