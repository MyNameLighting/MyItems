// 姓名验证
var unames = document.getElementById("uname");
unames.onfocus = function(){
  var spans = document.getElementById("uname_msg");
  spans.innerHTML = "请输入姓名";
}
unames.onblur = function(){
  var spans = document.getElementById("uname_msg");
  var reg=/^([\u4e00-\u9fa5]{2,7}|[a-zA-Z\.\s]{1,20})$/;
  var result = reg.test(this.value);
  if(result==true){
    spans.innerHTML = "√";
  }else {
    spans.innerHTML = "姓名为空或格式错误";
  }
}
// 邮箱验证
var unames = document.getElementById("email");
unames.onfocus = function(){
  var spans = document.getElementById("email_msg");
  spans.innerHTML = "请输入邮箱";
}
unames.onblur = function(){
  var spans = document.getElementById("email_msg");
  var reg=/\w+@\w+\.\w+(\.cn)?/;
  var result = reg.test(this.value);
  if(result==true){
    spans.innerHTML = "√";
  }else {
    spans.innerHTML = "邮箱为空或格式错误";
  }
}
// 电话号验证
var unames = document.getElementById("phone");
unames.onfocus = function(){
  var spans = document.getElementById("phone_msg");
  spans.innerHTML = "请输入电话号";
}
unames.onblur = function(){
  var spans = document.getElementById("phone_msg");
  var reg=/^1[3-9]\d{9}$/;
  var result = reg.test(this.value);
  if(result==true){
    spans.innerHTML = "√";
  }else {
    spans.innerHTML = "电话号为空或格式错误";
  }
}
// 内容验证
var unames = document.getElementById("text");
unames.onfocus = function(){
  var spans = document.getElementById("text_msg");
  spans.innerHTML = "输入内容";
}
unames.onblur = function(){
  var spans = document.getElementById("text_msg");
  var reg=/^[\u4e00-\u9fffa-a-zA-Z]{5,}$/;
  var result = reg.test(this.value);
  if(result==true){
    spans.innerHTML = "√";
  }else {
    spans.innerHTML = "内容不能少于5个字";
  }
}
// 提交按钮
function login(){
  var $uname = uname_msg.innerHTML; 
  var $email = email_msg.innerHTML;
  var $phone = phone_msg.innerHTML;
  var $text = text_msg.innerHTML;
  if($uname=="√" && $email=="√" && $phone=="√" && $text=="√"){
    alert("提交成功");
  }else {
    alert("提交失败");
  }
}