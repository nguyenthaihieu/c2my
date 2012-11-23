<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>找回密码 - <?php echo $cfg_site_name;?></title>
    <link href="<?php echo TPL;?>css/forgotPassword.css" rel="stylesheet"   type="text/css" />
    <link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css"  />
    <script src="<?php echo TPL;?>js/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="<?php echo TPL;?>js/Gobal.js" type="text/javascript"></script>
    <script type="text/javascript" src="<?php echo TPL;?>js/forgot_one.js"></script>

</head>
<body>
    <form name="resetp" method="post" action="<?php echo url("user.php?action=resetp"); ?>" id="resetp">
<input type="hidden" name="commit" value="1"/>

<?php include template('header'); ?>
    <div class="center">
        <div class="bz">
            <img src="<?php echo TPL;?>images/bb1.gif" alt="填写用户名邮箱" />
        </div>
        <div class="xiugai">
            <table>
                <tr>
                    <td class="z">

                        请输入您的用户名：
                    </td>
                    <td>
                        <input name="username" id="username" value="" type="text" onfocus="this.className='on';$('#nameTip').hide();"
                            onblur="this.className='';" />
                        <p id="nameTip" class="red" style="display: none;">
                            用户名不能为空！</p>
                    </td>
                </tr>
                <tr>

                    <td class="z">
                        请输入您的E-mail地址：
                    </td>
                    <td>
                        <input id="email" name="email" value="" onblur="this.className='';" onfocus="this.className='on';$('#emailTip').hide();"
                            type="text" />
                        <p id="emailTip" class="red" style="display: none;">
                      </p>
                    </td>
                </tr>

                
                <tr>
                    <td class="z">
                        验证码：
                    </td>
                    <td>
                        <input onkeyup="return enter(event)" onfocus="this.className='verification';$('#checkcodetip').attr('class', '').text('点击图片刷新验证码');"
                             class="verification" name="forgotCode" id="forgotCode" type="text" /><img id="CAPTCHA1" src="includes/code/securimage_show.php?sid=<? echo md5(time()); ?>&amp;w=135&amp;h=28&amp;t='+Math.random();" title="点击图片刷新" alt="验证码" style="vertical-align:middle;cursor:pointer;" onclick="var now=new Date();this.src='includes/code/securimage_show.php?sid=<? echo md5(time()); ?>&amp;w=135&amp;h=28&amp;t='+Math.random();" border="0" />
                        <p id="checkcodetip" >
                            点击图片刷新验证码</p>
                    </td>

                </tr>
                
            </table>
            <div class="tijiao">
                <input class="button" name="" type="button" onclick="resetp.submit()" value="确认发送邮件" onmouseover="this.className='button_'"
                    onmouseout="this.className='button'" />
            </div>
        </div>
        <div class="wenxin">
            <span>温馨提示：</span>您的E-mail地址已经改变了吗？如果您忘记密码且不再使用注册时的E-mail，建议您 <a href="<?php echo url("user.php?action=register"); ?>">创建一个新的帐户</a>
        </div>

        <div class="yj">
        </div>
    </div>
    
<?php include template('footer'); ?>
    </form>
</body>
</html>
