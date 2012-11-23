<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="refresh" content="5;url=index.php" />

<title>用户注册-激活失败</title>
<link href="<?php echo TPL;?>css/Register.css" rel="stylesheet" type="text/css" />
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css"  />
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/Gobal.js"> </script>
</head>

<body>
<?php include template('header'); ?>
<div class="box">
        
        <div class="move">
            <img src="<?php echo TPL;?>images/move3.gif" width="910" height="33"></div>
  <div class="fulfil">
            <div class="wc">
                <h2>
                    <span>
                  </span>恭喜您注册成功！欢迎加入代购大家庭！</h2>
                <p>
                    <span>5</span>秒内没任何操作将自动跳转离开本页</p>
            </div>
            <div class="link">
                <p>
                   猜猜您接下来想做什么？</p>
                <ul>
                    <li class="l1"><a href="<?php echo url("m.php?name=fillorders"); ?>">我要代购</a></li>
                    <li class="l2"><a href="<?php echo url("see.php"); ?>">随便逛逛</a></li>
                    <li class="l3"><a href="<?php echo url("recommend.php"); ?>">!{lang Guess_what_going_do!}</a></li>
                </ul>
            </div>
      </div>
        
    </div>
    <div class="bottom_1">
    </div>
<?php include template('footer'); ?>
</body>
</html>
