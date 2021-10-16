// @codekit-prepend 'waypoints.js'
// @codekit-prepend 'slick.js'
// @codekit-prepend 'underscore.js'
// @codekit-prepend 'lazysizes.js'

jQuery(document).ready(function ($) {
  $("body").addClass("ready");

  /* Join Form - Step One Email
  --------------------------------------------------------------------------------------- */

  // function joinValidation(parentDiv) {
  //   if (!$("body").hasClass("logged-in")) {
  //     if (document.getElementById(parentDiv) != null) {
  //       const joinForm = document
  //         .getElementById(parentDiv)
  //         .getElementsByClassName("join-form")[0];

  //       const email = document
  //         .getElementById(parentDiv)
  //         .getElementsByClassName("join-form-email")[0];

  //       const submit = document
  //         .getElementById(parentDiv)
  //         .getElementsByClassName("join-form-submit")[0];

  //       email.addEventListener("keyup", function (event) {
  //         isValidEmail = email.checkValidity();

  //         if (isValidEmail) {
  //           submit.disabled = false;
  //           console.log("valid email");
  //         } else {
  //           submit.disabled = true;
  //           console.log("not valid email");
  //         }
  //       });
  //     }
  //   }
  // }

  // // for times when there are multiple join forms on a page

  // joinValidation("member-join-overlay");
  // joinValidation("sec-one-bottom");

  // no longer needed im sending this input to another page now

  /* Join Overlay
--------------------------------------------------------------------------------------- */

  $(".memberpress-join").each(function () {
    $(this).on("click", function (e) {
      $("#member-join-overlay").addClass("open");
      $("html, body").css("overflow-y", "hidden");
    });
  });

  $("#member-join-overlay-close").on("click", function (e) {
    $("#member-join-overlay").removeClass("open");
    $("html, body").css("overflow-y", "scroll");
  });

  /* Sign Up placeholders and added headers
--------------------------------------------------------------------------------------- */

  $(
    ".mepr-signup-form :input[type='text'], .mepr-signup-form :input[type='email'], .mepr-signup-form :input[type='tel'],.mepr-signup-form :input[type='password']"
  ).each(function (index, elem) {
    var eId = $(elem).attr("id");
    var label = null;
    if (
      eId &&
      (label = $(elem)
        .parents("form")
        .find("label[for=" + eId + "]")).length == 1
    ) {
      var newValue = $(label).text().replace(":*", "");
      $(elem).attr("placeholder", newValue);
      $(label).hide();
    }
  });

  $("<span class='signup-header'>User information</span>").insertBefore(
    ".mepr_mepr_first_name"
  );

  $(
    "<span class='signup-header signup-header-user-agreement'>User Agreement</span>"
  ).insertBefore(".mepr_mepr_name");

  $(
    "<span class='signup-header signup-header-sign-in-information'>Sign In Information</span>"
  ).insertBefore(".mepr_username");

  /* Account Page Button
--------------------------------------------------------------------------------------- */

  $("body.page-account input.mepr-submit").wrap(
    "<div class='mepr-submit-wrapper'></div>"
  );

  /* Wistia - loads wistia on click to improve initial page speed fallsback if thumbnails need to be loaded on page load
     --------------------------------------------------------------------------------------------------------------------- */

  function checkWistia() {
    const self = this;
    const wistiaID = $(this).attr("data-wistia");
    if (typeof Wistia === "undefined") {
      loadWistia(self, wistiaID);
    } else {
      //console.log("wistia is already defined");
    }
  }

  function loadWistia(self, wistiaID) {
    jQuery.getScript(
      "https://fast.wistia.com/assets/external/E-v1.js",
      function (data, textStatus, jqxhr) {
        // We got the text but, it's possible parsing could take some time on slower devices. Unfortunately, js parsing does not have
        // a hook we can listen for. So we need to set an interval to check when it's ready
        var interval = setInterval(function () {
          if ($(self).attr("id") && window._wq) {
            _wq.push({
              id: wistiaID,
              onReady: function (video) {
                video.play();
              },
            });
            clearInterval(interval);
          }
        }, 100);
      }
    );
  }

  if ($("div").hasClass("playbook-thumbnail")) {
    loadWistia(this, "_all");
  }

  $(".wistia_embed").on("click", checkWistia);

  /* Waypoints
     --------------------------------------------------------------------------------------- */

  function createWaypoint(
    triggerElementId,
    animatedElement,
    className,
    offsetVal,
    functionName,
    reverse
  ) {
    if (jQuery("#" + triggerElementId).length) {
      var waypoint = new Waypoint({
        element: document.getElementById(triggerElementId),
        handler: function (direction) {
          if (direction === "down") {
            jQuery(animatedElement).addClass(className);

            if (typeof functionName === "function") {
              functionName();
              this.destroy();
            }
          } else if (direction === "up") {
            if (reverse) {
              jQuery(animatedElement).removeClass(className);
            }
          }
        },
        offset: offsetVal,
        // Integer or percent
        // 500 means when element is 500px from the top of the page, the event triggers
        // 50% means when element is 50% from the top of the page, the event triggers
      });
    }
  }

  createWaypoint("section-one", "body", "fade-header", -185, null, true);
  createWaypoint("internal-main", "body", "fade-header", -185, null, true);

  /* Smooth Scroll down to section on click (<a href="#id_of_section_to_be_scrolled_to">)
  --------------------------------------------------------------------------------------- */

  $(function () {
    $('a[href*="#"]:not([href="#"])').click(function () {
      if (
        location.pathname.replace(/^\//, "") ==
          this.pathname.replace(/^\//, "") &&
        location.hostname == this.hostname
      ) {
        var target = $(this.hash);
        target = target.length
          ? target
          : $("[name=" + this.hash.slice(1) + "]");
        if (target.length) {
          $("html, body").animate(
            {
              scrollTop: target.offset().top,
            },
            1000
          );
          return false;
        }
      }
    });
  });

  /* Slick Carousel ( http://kenwheeler.github.io/slick/ )
--------------------------------------------------------------------------------------- */

  var $status = $("#sec-two-arrow-counter");
  var $slickElement = $("#sec-two-sp-slideshow");

  $slickElement.on(
    "init reInit afterChange",
    function (event, slick, currentSlide, nextSlide) {
      //currentSlide is undefined on init -- set it to 0 in this case (currentSlide is 0 based)
      var i = (currentSlide ? currentSlide : 0) + 1;
      $status.text("0" + i + "/" + "0" + slick.slideCount);
    }
  );

  $("#sec-two-sp-slideshow").slick({
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    mobileFirst: true,
    arrows: true,
    fade: true,
    prevArrow: "#sec-two-arrow-left",
    nextArrow: "#sec-two-arrow-right",
    adaptiveHeight: true,
    dots: false,
    responsive: [
      {
        breakpoint: 1170,
        settings: "unslick",
      },
    ],
  });

  $("#sec-five-fs-slideshow").slick({
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    mobileFirst: true,
    fade: true,
    arrows: true,
    prevArrow: "#sec-five-arrow-left",
    nextArrow: "#sec-five-arrow-right",
    adaptiveHeight: true,
    dots: false,
    responsive: [
      {
        breakpoint: 767,
        settings: {
          adaptiveHeight: false,
          fade: false,
          slidesToShow: 2,
          slidesToScroll: 2,
        },
      },
      {
        breakpoint: 1170,
        settings: {
          adaptiveHeight: false,
          fade: false,
          slidesToShow: 3,
          slidesToScroll: 3,
        },
      },
      {
        breakpoint: 1380,
        settings: {
          adaptiveHeight: false,
          fade: false,
          slidesToShow: 4,
          slidesToScroll: 4,
        },
      },
      {
        breakpoint: 1695,
        settings: {
          adaptiveHeight: false,
          fade: false,
          slidesToShow: 6,
          slidesToScroll: 6,
        },
      },
    ],
  });

  $("#single-post-featured-speakers").slick({
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    mobileFirst: true,
    fade: true,
    arrows: true,
    prevArrow: "#single-post-featured-speakers-arrow-left",
    nextArrow: "#single-post-featured-speakers-arrow-right",
    adaptiveHeight: true,
    dots: false,
    responsive: [
      {
        breakpoint: 767,
        settings: {
          adaptiveHeight: false,
          fade: false,
          slidesToShow: 2,
          slidesToScroll: 2,
        },
      },
      {
        breakpoint: 965,
        settings: {
          adaptiveHeight: false,
          fade: false,
          slidesToShow: 3,
          slidesToScroll: 3,
        },
      },
      {
        breakpoint: 1170,
        settings: {
          adaptiveHeight: false,
          fade: false,
          slidesToShow: 4,
          slidesToScroll: 4,
        },
      },
      {
        breakpoint: 1380,
        settings: {
          adaptiveHeight: false,
          fade: false,
          slidesToShow: 4,
          slidesToScroll: 4,
        },
      },
    ],
  });

  /* Remove "#" from menu anchor items to avoid jump to the top of the page
--------------------------------------------------------------------------------------- */

  $("ul > li.menu-item-has-children > a[href='#']").removeAttr("href");

  // not found go back button

  function goBack() {
    window.history.back();
  }

  $("span.go_back").on("click", function (e) {
    goBack();
  });

  /* Sidebar slideToggle
--------------------------------------------------------------------------------------- */

  $(".widget ul.menu > li.menu-item-has-children a").on("click", function (e) {
    $(this).toggleClass("active");
    $(this).next("ul").slideToggle();
  });

  $(".widget h3").on("click", function (e) {
    $(this).next("ul").slideToggle();
    $(this).toggleClass("close");
  });

  /* Sidebar Current Class for Blog Sidebars
--------------------------------------------------------------------------------------- */

  // add active to blog widgets that dont show a built in current class

  var pgurl = window.location.href;

  $(".widget ul li").each(function () {
    if ($(this).find("a").attr("href") == pgurl)
      $(this).addClass("blog-active");
  });

  /* Magic Line in Nav
--------------------------------------------------------------------------------------- */

  if ($("body.logged-in").length > 0) {
    $(".current-menu-item, .current-menu-ancestor").addClass(
      "magic-line-active"
    );

    $(function () {
      var $el,
        leftPos,
        newWidth,
        $mainNav = $("nav").find("ul.menu");

      $mainNav.append("<li id='magic-line'></li>");
      var $magicLine = $("#magic-line");

      if ($("nav ul.menu > li").hasClass("magic-line-active")) {
        $magicLine
          .css({
            left: $("nav").find("ul.menu > li.magic-line-active").position()
              .left,
            width: $("nav ul.menu > li.magic-line-active a").width(),
          })
          .data("origLeft", $magicLine.position().left);
      } else {
        $magicLine
          .css({
            left: -100,
            width: $("nav ul.menu > li:first a").width(),
          })
          .data("origLeft", $magicLine.position().left);
      }

      $("nav")
        .find("ul.menu > li:not(#magic-line)")
        .hover(
          function () {
            $el = $(this);
            leftPos = $el.position().left;
            newWidth = $el.children().width();
            $magicLine.stop().animate({
              left: leftPos,
              width: newWidth,
            });
          },
          function () {
            $magicLine.stop().animate({
              left: $magicLine.data("origLeft"),
              width: $("nav ul.menu > li.magic-line-active a").width(),
            });
          }
        );
    });
  }

  /* Resize Nav Functions
--------------------------------------------------------------------------------------- */

  // resize - tablet and desktop top navigatons behave differently. These turn off click functions at certain window widths without reloading the page

  // nav

  //$('nav ul.menu > li.current-menu-ancestor > a').addClass('active');

  $("body.logged-in #menu-wrapper").on("click", function (e) {
    $("nav, #nav-bg").addClass("open");
    $("html, body").css("overflow-y", "hidden");
  });

  $("#nav-close").on("click", function (e) {
    $("nav, #nav-bg").removeClass("open");
    $("html, body").css("overflow-y", "scroll");
  });

  function navDesktop() {
    $("header nav").addClass("nav_desktop");

    $("header nav li.menu-item-has-children > a")
      .next("ul.sub-menu")
      .removeClass("open");

    $("header nav").removeClass("nav_tablet");
  }

  function navTablet() {
    $("header nav").removeClass("nav_desktop");

    $("header nav").addClass("nav_tablet");
  }

  function tabletClick() {
    $(this).parent().toggleClass("active");

    $(this).toggleClass("active");

    $(this).next("ul.sub-menu").slideToggle();
  }

  // nav

  if ($(window).width() >= 1170) {
    navDesktop();
  }

  if ($(window).width() < 1170) {
    navTablet();

    $("header nav li.menu-item-has-children > a")
      .off()
      .on("click", tabletClick);
  }

  // resize window width and fire functions

  $(window).resize(
    _.debounce(function () {
      if ($(window).width() >= 1170) {
        navDesktop();

        // off

        $("header nav li.menu-item-has-children > a").off("click", tabletClick);
      }

      if ($(window).width() < 1170) {
        navTablet();

        // off

        $("header nav li.menu-item-has-children > a")
          .off()
          .on("click", tabletClick);
      }
    }, 100)
  );
}); // document ready
