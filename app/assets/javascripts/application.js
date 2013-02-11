// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


jQuery('.sub-menu').hide();
jQuery('.sub-menu-admin').hide();

jQuery(document).ready(function(){
    jQuery('.user-menu').mouseover(function(){
        jQuery('.sub-menu').show();
        jQuery('.sub-menu-admin').show();
        jQuery('.user-menu-username').css({color: '#382C23', background: "url('/images/user-menu-point-white.jpg') right top no-repeat" });
jQuery('.user-info').css({background: '#F5F3F1', borderLeft: '1px solid #CCC0B3', borderTop: '1px solid #CCC0B3', borderRight: '1px solid #CCC0B3'});
});
jQuery('.user-menu').mouseout(function(){
    jQuery('.sub-menu').hide();
    jQuery('.sub-menu-admin').hide();
    jQuery('.user-menu-username').css({color: '#fff', background: "url('/images/user-menu-point.jpg') right top no-repeat" });
jQuery('.user-info').css({background: 'none', borderLeft: '1px solid #382C23', borderTop: '1px solid #382C23', borderRight: '1px solid #382C23'});
});

jQuery('.user-general-page .flash-notice').fadeOut(3000);
});
