@charset "UTF-8";/*! Theme Name:PSB Playbook Author:1POINT21 */
/*! CSS Main Stylesheet - Please do not edit this file! 1. Use Dashboard --> Appearance --> Customize to add additional css 2. Or pull the site and database down to your local environment and use the scss folder to preprocess the css */ .slick-slider{position:relative;display:block;box-sizing:border-box;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none;-webkit-touch-callout:none;-khtml-user-select:none;touch-action:pan-y;-webkit-tap-highlight-color:transparent}.slick-list{position:relative;display:block;overflow:hidden;margin:0;padding:0}.slick-list:focus{outline:none}.slick-list.dragging{cursor:pointer;cursor:hand}.slick-slider .slick-track,
.slick-slider .slick-list{-webkit-transform:translate3d(0, 0, 0);transform:translate3d(0, 0, 0)}.slick-track{position:relative;top:0;left:0;display:block;margin-left:auto;margin-right:auto}.slick-track:before,
.slick-track:after{display:table;content:""}.slick-track:after{clear:both}.slick-loading .slick-track{visibility:hidden}.slick-slide{display:none;float:left;height:100%;min-height:1px}[dir=rtl] .slick-slide{float:right}.slick-slide img{display:block}.slick-slide.slick-loading img{display:none}.slick-slide.dragging img{pointer-events:none}.slick-initialized .slick-slide{display:block}.slick-loading .slick-slide{visibility:hidden}.slick-vertical .slick-slide{display:block;height:auto;border:1px solid transparent}.slick-arrow.slick-hidden{display:none}.slick-prev,
.slick-next{font-size:0;line-height:0;position:absolute;top:50%;display:block;width:20px;height:20px;padding:0;-webkit-transform:translate(0, -50%);transform:translate(0, -50%);cursor:pointer;color:transparent;border:none;outline:none;background:transparent}.slick-prev:hover,
.slick-prev:focus,
.slick-next:hover,
.slick-next:focus{color:transparent;outline:none;background:transparent}.slick-prev:hover:before,
.slick-prev:focus:before,
.slick-next:hover:before,
.slick-next:focus:before{opacity:1}.slick-prev.slick-disabled:before,
.slick-next.slick-disabled:before{opacity:0.25}.slick-prev:before,
.slick-next:before{font-family:arial;font-size:20px;line-height:1;opacity:0.75;color:white;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.slick-prev{left:-25px}[dir=rtl] .slick-prev{right:-25px;left:auto}.slick-prev:before{content:"←"}[dir=rtl] .slick-prev:before{content:"→"}.slick-next{right:-25px}[dir=rtl] .slick-next{right:auto;left:-25px}.slick-next:before{content:"→"}[dir=rtl] .slick-next:before{content:"←"}.slick-dotted.slick-slider{margin-bottom:0px}.slick-dots{position:absolute;bottom:-25px;display:block;width:100%;padding:0;margin:0;list-style:none;text-align:center}.slick-dots li{position:relative;display:inline-block;width:20px;height:20px;margin:0 5px;padding:0;cursor:pointer}.slick-dots li button{font-size:0;line-height:0;display:block;width:20px;height:20px;padding:5px;cursor:pointer;color:transparent;border:0;outline:none;background:transparent}.slick-dots li button:hover,
.slick-dots li button:focus{outline:none}.slick-dots li button:hover:before,
.slick-dots li button:focus:before{opacity:1}.slick-dots li button:before{font-family:arial;font-size:6px;line-height:20px;position:absolute;top:0;left:0;width:20px;height:20px;content:"•";text-align:center;opacity:0.25;color:black;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.slick-dots li.slick-active button:before{opacity:0.75;color:black}/*! Lity - v3.0.0-dev - 2018-07-09
* http://sorgalla.com/lity/
* Copyright (c) 2015-2018 Jan Sorgalla;Licensed MIT */
.lity-active,
.lity-active body{overflow:hidden}.lity{z-index:9990;position:fixed;top:0;right:0;bottom:0;left:0;white-space:nowrap;background:#0b0b0b;background:rgba(0, 0, 0, 0.9);outline:none !important;opacity:0;transition:opacity 0.3s ease}.lity.lity-opened{opacity:1}.lity.lity-closed{opacity:0}.lity *{box-sizing:border-box}.lity-wrap{z-index:9990;position:fixed;top:0;right:0;bottom:0;left:0;text-align:center;outline:none !important}.lity-wrap:before{content:"";display:inline-block;height:100%;vertical-align:middle;margin-right:-0.25em}.lity-loader{z-index:9991;color:#fff;position:absolute;top:50%;margin-top:-0.8em;width:100%;text-align:center;font-size:14px;font-family:Arial, Helvetica, sans-serif;opacity:0;transition:opacity 0.3s ease}.lity-loading .lity-loader{opacity:1}.lity-container{z-index:9992;position:relative;text-align:left;vertical-align:middle;display:inline-block;white-space:normal;max-width:100%;max-height:100%;outline:none !important}.lity-content{z-index:9993;width:100%;-webkit-transform:scale(1);transform:scale(1);transition:-webkit-transform 0.3s ease;transition:transform 0.3s ease;transition:transform 0.3s ease, -webkit-transform 0.3s ease}.lity-loading .lity-content,
.lity-closed .lity-content{-webkit-transform:scale(0.8);transform:scale(0.8)}.lity-content:after{content:"";position:absolute;left:0;top:0;bottom:0;display:block;right:0;width:auto;height:auto;z-index:-1;box-shadow:0 0 8px rgba(0, 0, 0, 0.6)}.lity-close,
.lity-close:hover,
.lity-close:focus,
.lity-close:active,
.lity-close:visited{z-index:9994;width:35px;height:35px;position:fixed;right:0;top:0;-webkit-appearance:none;cursor:pointer;text-decoration:none;text-align:center;padding:0;color:#fff;font-style:normal;font-size:35px;font-family:Arial, Baskerville, monospace;line-height:35px;text-shadow:0 1px 2px rgba(0, 0, 0, 0.6);border:0;background:none;box-shadow:none}.lity-close::-moz-focus-inner{border:0;padding:0}.lity-close:active{top:1px}.lity-image img{max-width:100%;display:block;line-height:0;border:0}.lity-iframe .lity-container{width:100%;max-width:964px}.lity-iframe-container{width:100%;height:0;padding-top:56.25%;overflow:auto;pointer-events:auto;-webkit-transform:translateZ(0);transform:translateZ(0);-webkit-overflow-scrolling:touch}.lity-iframe-container iframe{position:absolute;display:block;top:0;left:0;width:100%;height:100%;box-shadow:0 0 8px rgba(0, 0, 0, 0.6);background:#000}.lity-hide{display:none}*{margin:0;padding:0;outline:none}a{outline:none}a img{border:none}textarea{resize:none}*,
*:before,
*:after{box-sizing:border-box}html,
body{overflow-x:hidden}html{-webkit-text-size-adjust:100%}body{-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale;text-shadow:1px 1px 1px rgba(0, 0, 0, 0.05);line-height:1}/*
html.fixed, body.fixed{overflow:hidden;height:100%}*/
body .gform_wrapper .gform_validation_container{display:none}.gform_submission_error{display:none}.validation_error{display:none}body img.gform_ajax_spinner{display:none !important}li.gform_hidden{display:none !important}header,
section,
nav,
footer{display:block}input,
textarea{-webkit-appearance:none}.wistia_click_to_play > div > div{display:none !important}h1,
h2,
h3,
h4{font-style:normal;font-weight:400}@media screen and (min-width:1100px){.wp-block-image.alignleft img{float:left;margin-right:39px}}.wp-block-image.aligncenter img{margin-left:auto;margin-right:auto}@media screen and (min-width:1100px){.wp-block-image.alignright img{float:right;margin-left:39px}}.wp-block-image img{margin-top:40px;margin-bottom:30px;max-width:100%;height:auto;display:block;margin-left:auto;margin-right:auto}@media screen and (min-width:768px){.wp-block-image img{margin-top:40px;margin-bottom:60px}}@media screen and (min-width:1170px){.wp-block-image img{margin-top:50px}}@media screen and (min-width:1380px){.wp-block-image img{margin-top:70px;margin-bottom:80px}}.gform_body .gform_fields .gfield::-webkit-input-placeholder{color:#000}.gform_body .gform_fields .gfield::-moz-placeholder{color:#000}.gform_body .gform_fields .gfield:-moz-placeholder{color:#000}.gform_body .gform_fields .gfield:-ms-input-placeholder{color:#000}.gform_body .gform_fields .gfield::-moz-placeholder{opacity:1}