// 监听wow动画
$(function(){
  var wow = new WOW({
    boxClass: 'wow',
    animateClass: 'animated',
    offset: 0,
    mobile: true,
    live: true
  });
  wow.init();
})

// 视频点击事件
function ashow() {
  $('#o_mask_video').show();
}
function ahide() {
  $('#o_mask_video').hide();
}

// 微信点击事件
function bshow() {
  $('#online_lx').show();
}
function bhide() {
  $('#online_lx').hide();
}

// 手机点击事件
function cshow() {
  $('#fixed_weixin').show();
}
function chide() {
  $('#fixed_weixin').hide();
}
