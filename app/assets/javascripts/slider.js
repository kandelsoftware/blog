(function($) {

    $(document).ready(function () {


        $(".drop > ul").hide();
        $(".drop").hover(function() {
            $(this).children("ul").stop(true, true).slideDown(600);
        }, function() {
            $(this).children("ul").slideUp(400);
        });
        $('#slider').rhinoslider({
            effect: 'fade',
            showTime: 6500,
            controlsKeyboard: false,
            controlsPrevNext: false,
            controlsPlayPause: false,
            controlsMousewheel: false,
            autoPlay: true,
            pauseOnHover: false,
            showBullets: 'always',
            showControls: 'always'
        });
        smoothscroll();
    });




    // smoothscroll and gototop-button
    //  Last changed: Sebastian Pontow - s.pontow@euroweb.de
    function smoothscroll() {
        $("a[href*=#]").click(function() {
            if (location.pathname.replace(/^\//, "") == this.pathname.replace(/^\//, "") && location.hostname == this.hostname) {
                var a = $(this.hash);
                a = a.length && a || $("[name=" + this.hash.slice(1) + "]");
                if (a.length) {
                    var b = a.offset().top;
                    $("html,body").animate({
                        scrollTop: b
                    }, 1e3);
                    return false
                }
            }
        })
    }
    $.fn.topLink = function(a) {
        a = $.extend({
            fadeSpeed: 200
        }, a);
        var b;
        var c = false;
        var d = $(this);
        var e = $(window);
        var f = $(document.body).children(0).position().top;
        e.scroll(function() {
            window.clearTimeout(b);
            b = window.setTimeout(function() {
                if (e.scrollTop() <= f) {
                    c = false;
                    d.fadeOut(a.fadeSpeed)
                } else if (c == false) {
                    c = true;
                    d.stop(true, true).fadeIn(a.fadeSpeed).click(function() {
                        d.fadeOut(a.fadeSpeed)
                    })
                }
            }, 100)
        })
    };
    // jQuery Accordion v 1.5 by Sebastian Pontow
    // uses jQuery v 1.6
    // free to use by anyone
    function acc(a) {
        var b = jQuery;
        a = b.extend({
            active: "accActive",
            toggle: "accToggle",
            content: "accContent",
            accAnchor: "accAnchor",
            multi: "multi",
            openFirst: true
        }, a);
        var c = a.active, d = a.toggle, e = a.content, f = a.accAnchor, g = a.multi, h = a.openFirst;
        b("." + e).hide();
        b("." + d + "." + g).each(function() {
            if (b.trim(b(this).text()) == "") {
                b(this).remove()
            }
        });
        var i = b(location.hash);
        $active = i.length > 0 && i.hasClass(d) ? i : h ? b("." + d + ":first") : false;
        if ($active !== false) {
            $active.addClass(c).next("." + e).show(10, function() {
                if (i.hasClass(d)) {
                    var a = $active.offset().top;
                    b("html, body").scrollTop(a)
                }
            })
        }
        b("." + d + ", ." + f).click(function() {
            $this = b(this);
            $toggler = $this.hasClass(d) ? $this : b(b(this).attr("href"));
            var a = $toggler.next("." + e).is(":hidden") ? true: false;
            b("." + e).slideUp(300);
            b("." + c).removeClass(c);
            if (a) {
                var f = $toggler.hasClass(g) ? $toggler.addClass(c).nextUntil("." + d): $toggler.addClass(c).next("." + e);
                f.slideDown(300)
            }
        })
    }
}(jQuery));
