<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册成功-等待激活</title>
<link href="<?php echo TPL;?>css/Register.css" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css"  />
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/Gobal.js"> </script>
</head>

<body>
<?php include template('header'); ?>
<div class="box">
        <script type="text/javascript">
 
            function emailInputShow(e) {
                if (e && e.stopPropagation) {
                    e.stopPropagation();
                }
                else {
                    window.event.cancelBubble = true;
                }
                $('#bgdiv').show();
                $("#changeEmail").show(0, function() { $("#codeImage").click(); });
                $("#changeEmailCode").val("");
                $("#cEmail").removeAttr("class").text("此邮箱将作为您登录帐号绑定邮箱！");
                $("#cemailinput").val("");
            }
 
            function changeEmail(e) {
                if (e && e.stopPropagation != undefined) { e.stopPropagation(); }
                else { window.event.cancelBubble = true; }
 
                var checkCode = $.trim($("#changeEmailCode").val());
                if (checkCode.length <= 0) {
                    $("#cEmail").attr("class", "red").text("请输入验证码！"); return;
                }
 
                $.ajax({
                    type: "POST",
                    url: "/ajax/user_ajax.php?action=checkcode&code=" + checkCode,
                    dataType: "text",
                    timeout: 5000,
                    error: function(a, b, c) { checkcodechecked = true; $("#cEmail").removeAttr("class").text("此邮箱将作为您登录帐号绑定邮箱！"); changeEmailSuc(); },
                    success: function(msg) {
                        if (msg == '0') {
                            $("#cEmail").attr("class", "red").text("验证码错误！"); return;
                        }
                        else {
                            $("#cEmail").removeAttr("class").text("此邮箱将作为您登录帐号绑定邮箱！");
                            changeEmailSuc();
                        }
                    }
                });
            }
 
 
            function changeEmailSuc() {
                var email = $("#cemailinput").val();
                if (email.length <= 0) { $("#cEmail").attr("class", "red").text("请输入您的Email地址！"); return; }
                var reg = new RegExp("\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");
                if (reg.test($("#cemailinput").val())) {
                    $.ajax({
                        type: "POST",
                        url: "/ajax/user_ajax.php?action=changeemail",
                        dataType: "json",
                        contentType: "application/json;utf-8",
                        data: "{'email':'" + email + "'}",
                        timeout: 10000,
                        beforeSend: function() { $("#cEmail").attr("class", "lv").text("正在修改您的Email，请稍候！"); $("#changeEmailBtn").attr("disabled", "disabled"); },
                        error: function() { $("#cEmail").attr("class", "red").text("网络连接失败！"); $("#changeEmailBtn").removeAttr("disabled"); },
                        success: function(res) {
                            var rstr = res;
                            if (rstr == "OK" || rstr == "fail") { $("#cEmail").text("已成功修改您的Email并发送新的激活邮件，请注意查收！"); $("#changeEmail").hide(); $("#registerEmail").html(email); $("#successChange").show(); }
else{
{ $("#cEmail").attr("class", "red").text(rstr); }
}
                            $("#changeEmailBtn").removeAttr("disabled");
                        }
                    });
                }
                else {
                    $("#cEmail").attr("class", "red").text("您输入的Email地址不正确！");
                }
            }
 
            function reSendEmail() {
                $.ajax({
                    type: "POST",
                    url: "/ajax/user_ajax.php?action=resendemail",
                    dataType: "json",
                    contentType: "application/json;utf-8",
                    data: "{'uname':'<?php echo $regNickName;?>'}",
                    timeout: 50000,
                    error: function() { alert("网络连接失败，请稍后再试！"); },
                    success: function(res) { var resStr = res; if (resStr == "OK") { alert("新的激活邮件已经发送到您的邮箱，请注意查收！"); } else { if (resStr == "again") alert("您发送邮件过于频繁，请过10分钟后再试"); else { if (resStr == "approved") { alert("您的帐号已经激活！请前往登陆"); window.location = "/user.php?action=login" } else alert("激活邮件发送失败！"); } } }
                });
            }
 
            $(document).ready(function() {
                $("#changeEmail").click(function(e) { if (e && e.stopPropagation) { e.stopPropagation(); } else { window.event.cancelBubble = true; } });
                $("#successChange").click(function(e) { if (e && e.stopPropagation) { e.stopPropagation(); } else { window.event.cancelBubble = true; } });
                $(document).click(function(e) {
                    if ($("#changeEmail:hidden").length > 0) {
                        //if ($.trim($("#cemailinput").val()).length == 0) $("#cemailinput").attr("class", "c1").val("请输入Email地址");
                        $("#cEmail").removeAttr("class").text("此邮箱将作为您登录Panli的帐号！");
                    } $("#changeEmail").hide(); $('#bgdiv').hide(); $("#successChange").hide();
                });
            });
        </script>





              <div class="move">
            <img alt="激活帐户" src="<?php echo TPL;?>images/move2.gif"></div>
        <div class="activation">
            <div class="mail">
                <h2>
                    系统已向您的邮箱<span id="registerEmail"><?php echo $regEmail;?></span>发送验证邮件</h2>
                <dl>
                    <dt>点击邮件中的链接地址，即可完成激活账户！</dt>
                    
                    <dd>
                        <a target="_blank" href="<?php echo $emailhttp;?>">前往您的邮箱收取邮件</a></dd>
                </dl>
            </div>
            <div class="operate">
                <h2>
                    如果长时间未收到系统发送的邮件，您可以尝试：</h2>
                <ul>
                    <li>查看邮箱的垃圾箱或广告箱，邮件可能被误放入其中；</li>
                    <li>如果一直无法找到验证邮件，可点击<a onclick="reSendEmail()" href="javascript:void(0);">重新发送</a>；</li>
                    <li>您也可以<a href="javascript:void(0);" onclick="emailInputShow(event)">更换其他邮箱 </a> ，再收验证邮件。</li>
                </ul>
                <div style="display: none;" id="bgdiv" class="floor">
                </div>
                <div style="display: none;" class="change" id="changeEmail">
                    <a title="关闭" class="close" onclick="$('#changeEmail').hide();$('#bgdiv').hide();" href="javascript:;"></a>
                    <p id="cEmail">
                       此邮箱将作为您登录的帐号绑定的邮箱！</p>
                    <table>
                        <tbody><tr>
                            <td class="zuo">
                               邮箱：
                            </td>
                            <td>
                                <input type="text" class="c1" id="cemailinput">
                            </td>
                        </tr>
                        <tr>
                            <td class="zuo">
                                验证码：
                            </td>
                            <td>
                                <input type="text" id="changeEmailCode" class="c3"><img border="0" onclick="var now=new Date();this.src='includes/code/securimage_show.php?sid=<? echo md5(time()); ?>&amp;w=92&amp;h=30&amp;t='+Math.random();" style="vertical-align: middle; cursor: pointer;" alt="验证码" title="点击图片刷新" src="includes/code/securimage_show.php?sid=<? echo md5(time()); ?>&amp;w=92&amp;h=30&amp;t='+Math.random();" id="codeImage">
                            </td>
                        </tr>
                    </tbody></table>
                    <input type="button" onmouseout="this.className='c2'" onmouseover="this.className='c2_'" value="确定发送" name="" onclick="changeEmail(event);" class="c2" id="changeEmailBtn">
                </div>
                <div style="display: none;" class="change" id="successChange">
                    <a title="关闭" class="close" onclick="$('#successChange').hide();$('#bgdiv').hide();" href="javascript:;"></a>
                    <div class="ch_top">
                        已向您的新邮箱发送验证邮件！<br>
                        点击邮件中的链接地址，即可完成验证！
                    </div>
                    <p class="tishi">
                        此邮箱将作为您登录的帐号绑定的邮箱！</p>
                </div>
            </div>
        </div>
        
    </div>
  <div class="bottom_1">
    </div>

<?php include template('footer'); ?>
</body>
</html>