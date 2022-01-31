!(function (e) {
    "use strict";
    var t = {},
        a = e(window),
        o = e(document),
        i = (e("body"), e(".countdown")),
        n = e(".round-chart"),
        r = e(".counter");
    e('[data-toggle="tooltip"]').tooltip(),
        (e.fn.exists = function () {
            return this.length > 0;
        }),
        (t.dropdownmenu = function () {
            e(".navbar").exists() &&
                e(".dropdown-menu a.dropdown-toggle").on("click", function (t) {
                    return (
                        e(this).next().hasClass("show") ||
                            e(this)
                                .parents(".dropdown-menu")
                                .first()
                                .find(".show")
                                .removeClass("show"),
                        e(this).next(".dropdown-menu").toggleClass("show"),
                        e(this)
                            .parents("li.nav-item.dropdown.show")
                            .on("hidden.bs.dropdown", function (t) {
                                e(".dropdown-submenu .show").removeClass(
                                    "show"
                                );
                            }),
                        !1
                    );
                });
        }),
        (t.counters = function () {
            jQuery(".counter").length > 0 &&
                r.each(function () {
                    var t = e(this);
                    t.appear(function () {
                        t.find(".timer").countTo();
                    });
                });
        }),
        (t.carousel = function () {
            var t = jQuery("div.owl-carousel");
            t.length > 0 &&
                t.each(function () {
                    var t = e(this),
                        a = t.data("items") ? t.data("items") : 4,
                        o = !t.attr("data-loop") || t.data("loop"),
                        i = !t.data("nav-dots") || t.data("nav-dots"),
                        n = !!t.data("nav-arrow") && t.data("nav-arrow"),
                        r = !t.attr("data-autoplay") || t.data("autoplay"),
                        s = t.attr("data-autospeed")
                            ? t.data("autospeed")
                            : 5e3,
                        l = t.attr("data-smartspeed")
                            ? t.data("smartspeed")
                            : 1e3,
                        c = !!t.data("autoheight") && t.data("autoheight"),
                        p = t.attr("data-space") ? t.data("space") : 30;
                    !!t.attr("data-animateOut") && t.data("animateOut");
                    e(this).owlCarousel({
                        loop: o,
                        items: a,
                        responsive: {
                            0: {
                                items: t.data("xx-items")
                                    ? t.data("xx-items")
                                    : 1,
                            },
                            480: {
                                items: t.data("xs-items")
                                    ? t.data("xs-items")
                                    : 1,
                            },
                            768: {
                                items: t.data("sm-items")
                                    ? t.data("sm-items")
                                    : 2,
                            },
                            980: {
                                items: t.data("md-items")
                                    ? t.data("md-items")
                                    : 3,
                            },
                            1200: { items: a },
                        },
                        dots: i,
                        autoplayTimeout: s,
                        smartSpeed: l,
                        autoHeight: c,
                        margin: p,
                        nav: n,
                        navText: [
                            "<i class='fas fa-long-arrow-alt-right'></i>",
                            "<i class='fas fa-long-arrow-alt-left'></i>",
                        ],
                        autoplay: r,
                        autoplayHoverPause: !0,
                    });
                });
        }),
        (t.swiperAnimation = function () {
            if (jQuery(".swiper-container").length > 0) {
                var e = new SwiperAnimation();
                new Swiper(".swiper-container", {
                    init: !0,
                    direction: "horizontal",
                    effect: "fade",
                    loop: !0,
                    speed: 1e3,
                    autoplay: { delay: 1e4 },
                    keyboard: { enabled: !0, onlyInViewport: !0 },
                    dots: !0,
                    pagination: { el: ".swiper-pagination", clickable: !0 },
                    pagination: { el: ".swiper-pagination", clickable: !0 },
                    on: {
                        init: function () {
                            e.init(this).animate();
                        },
                        slideChange: function () {
                            e.init(this).animate();
                        },
                    },
                });
            }
        }),
        (t.slickslider = function () {
            e(".slider-for").exists() &&
                (e(".slider-for").slick({
                    slidesToShow: 2,
                    slidesToScroll: 2,
                    arrows: !0,
                    asNavFor: ".slider-nav",
                }),
                e(".slider-nav").slick({
                    slidesToShow: 3,
                    slidesToScroll: 1,
                    asNavFor: ".slider-for",
                    dots: !1,
                    centerMode: !0,
                    focusOnSelect: !0,
                }));
        }),
        (t.mediaPopups = function () {
            if (
                e(".popup-single").exists() ||
                e(".popup-gallery").exists() ||
                e(".modal-onload").exists() ||
                e(".popup-youtube, .popup-vimeo, .popup-gmaps").exists()
            ) {
                e(".popup-single").exists() &&
                    e(".popup-single").magnificPopup({ type: "image" }),
                    e(".popup-gallery").exists() &&
                        e(".popup-gallery").magnificPopup({
                            delegate: "a.portfolio-img",
                            type: "image",
                            tLoading: "Loading image #%curr%...",
                            mainClass: "mfp-img-mobile",
                            gallery: {
                                enabled: !0,
                                navigateByImgClick: !0,
                                preload: [0, 1],
                            },
                        }),
                    e(".popup-youtube, .popup-vimeo, .popup-gmaps").exists() &&
                        e(
                            ".popup-youtube, .popup-vimeo, .popup-gmaps"
                        ).magnificPopup({
                            disableOn: 700,
                            type: "iframe",
                            mainClass: "mfp-fade",
                            removalDelay: 160,
                            preloader: !1,
                            fixedContentPos: !1,
                        });
                var t = e(".modal-onload");
                if (t.length > 0) {
                    e(".popup-modal").magnificPopup({ type: "inline" }),
                        e(document).on(
                            "click",
                            ".popup-modal-dismiss",
                            function (t) {
                                t.preventDefault(), e.magnificPopup.close();
                            }
                        );
                    var a = t.attr("data-target");
                    setTimeout(function () {
                        e.magnificPopup.open(
                            {
                                items: { src: a },
                                type: "inline",
                                mainClass: "mfp-no-margins mfp-fade",
                                closeBtnInside: !0,
                                fixedContentPos: !0,
                                removalDelay: 500,
                            },
                            0
                        );
                    }, 1500);
                }
            }
        }),
        (t.shuffle = function () {
            if (e(".my-shuffle-container").exists()) {
                var t = window.Shuffle,
                    a = document.querySelector(".my-shuffle-container"),
                    o = a.querySelector(".my-sizer-element"),
                    i = new t(a, {
                        itemSelector: ".grid-item",
                        sizer: o,
                        speed: 700,
                        columnThreshold: 0,
                    });
                jQuery(document).ready(function () {
                    jQuery(document).on("click", ".btn-filter", function () {
                        var e = jQuery(this).attr("data-group");
                        "all" != e ? i.filter([e]) : i.filter();
                    });
                });
            }
        }),
        (t.datetimepickers = function () {
            e(".datetimepickers").exists() &&
                (e("#datetimepicker-01, #datetimepicker-02").datetimepicker({
                    format: "L",
                }),
                e("#datetimepicker-03, #datetimepicker-04").datetimepicker({
                    format: "LT",
                }));
        }),
        (t.select2 = function () {
            e(".basic-select").exists() &&
                jQuery(".basic-select").length > 0 &&
                e(".basic-select").select2({ dropdownCssClass: "bigdrop" });
        }),
        (t.rangesliders = function () {
            if (e(".property-price-slider").exists()) {
                jQuery(".rangeslider-wrapper");
                e("#property-price-slider").ionRangeSlider({
                    type: "double",
                    min: 0,
                    max: 1e4,
                    from: 1e3,
                    to: 8e3,
                    prefix: "$",
                    hide_min_max: !0,
                    hide_from_to: !1,
                });
            }
        }),
        (t.countdownTimer = function () {
            i.exists() &&
                i.downCount({ date: "12/25/2020 12:00:00", offset: -4 });
        }),
        (t.scrollbar = function () {
            if (jQuery(".scrollbar").length > 0) {
                var t = jQuery(".scroll_light");
                t.length > 0 &&
                    (e(t).niceScroll({
                        cursorborder: 0,
                        cursorcolor: "rgba(255,255,255,0.25)",
                    }),
                    e(t).getNiceScroll().resize());
                var a = jQuery(".scroll_dark");
                a.length > 0 &&
                    (e(a).niceScroll({
                        cursorborder: 0,
                        cursorcolor: "rgba(0,0,0,0.1)",
                    }),
                    e(a).getNiceScroll().resize());
            }
        }),
        (t.streetview = function () {
            jQuery("#street-view").length > 0 &&
                new google.maps.StreetViewPanorama(
                    document.getElementById("street-view"),
                    {
                        position: { lat: 37.86926, lng: -122.254811 },
                        pov: { heading: 165, pitch: 0 },
                        zoom: 1,
                    }
                );
        }),
        (t.streetviewtabs = function () {
            jQuery(".nav-tabs a").on("shown.bs.tab", function (a) {
                "Street view" == e(a.target).text() && t.streetview();
            });
        }),
        // (t.isSticky = function () {
        //     e(window).scroll(function () {
        //         e(this).scrollTop() > 150
        //             ? e(".header-sticky").addClass("is-sticky")
        //             : e(".header-sticky").removeClass("is-sticky");
        //     });
        // }),
        (t.goToTop = function () {
            var t = e("#back-to-top");
            t.hide(),
                a.scroll(function () {
                    a.scrollTop() > 100 ? t.fadeIn() : t.fadeOut();
                }),
                t.on("click", function () {
                    return e("body,html").animate({ scrollTop: 0 }, 1e3), !1;
                });
        }),
        (t.searchbox = function () {
            jQuery(".search").exists() &&
                (jQuery(".search-btn").on("click", function () {
                    return jQuery(".search").toggleClass("search-open"), !1;
                }),
                jQuery("html, body").on("click", function (e) {
                    jQuery(e.target).hasClass("not-click") ||
                        jQuery(".search").removeClass("search-open");
                }));
        }),
        (t.pieChart = function () {
            n.exists() &&
                n.each(function () {
                    var t = e(this),
                        a = t.attr("data-size") || "134",
                        o = t.attr("data-animate") || "2000",
                        i = t.attr("data-width") || "6",
                        n = t.attr("data-color") || "#ffffff",
                        r = t.attr("data-trackcolor") || "rgba(0,0,0,0.10)";
                    t
                        .find("span, i")
                        .css({
                            width: a + "px",
                            height: a + "px",
                            "line-height": a + "px",
                        }),
                        t.appear(function () {
                            t.easyPieChart({
                                size: Number(a),
                                animate: Number(o),
                                trackColor: r,
                                lineWidth: Number(i),
                                barColor: n,
                                scaleColor: !1,
                                lineCap: "square",
                                onStep: function (e, a, o) {
                                    t.find("span.percent").text(Math.round(o));
                                },
                            });
                        });
                });
        }),
        a.on("load", function () {
            t.pieChart();
        }),
        o.ready(function () {
            t.counters(),
                t.slickslider(),
                t.datetimepickers(),
                t.select2(),
                t.dropdownmenu(),
                t.scrollbar(),
                t.goToTop(),
                t.swiperAnimation(),
                t.countdownTimer(),
                t.mediaPopups(),
                t.isSticky(),
                t.shuffle(),
                t.rangesliders(),
                t.streetviewtabs(),
                t.searchbox(),
                t.carousel();
        });
})(jQuery),
    (document.documentElement.className = "js");
var supportsCssVars = function () {
    var e,
        t = document.createElement("style");
    return (
        (t.innerHTML = "root: { --tmp-var: bold; }"),
        document.head.appendChild(t),
        (e = !!(
            window.CSS &&
            window.CSS.supports &&
            window.CSS.supports("font-weight", "var(--tmp-var)")
        )),
        t.parentNode.removeChild(t),
        e
    );
};
