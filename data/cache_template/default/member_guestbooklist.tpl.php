<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/AddItemPanel.css">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css"  />
<link type="text/css" id="styleName" rel="stylesheet" href="<?php echo TPL;?>css/orange/color.css"/ >    
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/orderList.css"/>
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/wdggcGobal.js"></script>
 <script src="<?php echo TPL;?>js/Gobal.js" type="text/javascript"></script>

<title>我的提问</title>
<style type="text/css">
.pages {float:right;height:25px;display:inline;}
.pages li{list-style-type: none;}
.pages  a{text-decoration:none;}
.pages li{
border:1px solid #AAAAAA;color:#666666;display:inline;float:left;height:20px;line-height:20px;margin-left:2px;padding:0 5px;text-decoration:none;}
.pages li {border:1px solid #DDDDDD;color:#CCC;font-family:"simsun";}
.pages li:hover {background:#FFEDE1;border:1px solid #FF9900;}
.pages .current {background:#FFEDE1;border:1px solid #FF6600;color:#FF0000;}
.pages .next {height:auto;width:auto}
.pages em {color:#999999;display:inline;float:left;height:22px;line-height:22px;margin-left:5px;}

.jianyi{color:#8694A1;line-height:22px;margin:12px 0 0 5px;}
.jianyi dl{margin-top:8px;}
.jianyi textarea{height:70px;width:193px;border:#c8c8c8 solid 1px;padding:3px;}
.jianyi dd input,.jianyi dd .jg{background:url(<?php echo TPL;?>/images/tijiao.gif) no-repeat;width:68px;border:none;color:#f6f6f6;height:23px;cursor:pointer;}
.jianyi dt input{border:#c8c8c8 solid 1px;padding:3px;width:90px;float:left;}
.jianyi dt img{float:right;}
.jianyi dt p{height:30px;margin-top:5px;width:200px;}
.jianyi dd .jg{background-position:0 -25px;color:#FFF;}
.jianyi dd{margin-top:8px;height:35px}
</style>
</head>

<body>


<?php include template('header'); ?>

<div class="admin">
        <div class="ding">
            <div class="shouye">
                <a title="我的会员中心" href="<?php echo url("m.php"); ?>"></a>
            </div>
            <div class="lb">
               <div class="weizhi">
                      <b>当前位置：</b><a href="<?php echo url("m.php"); ?>">会员中心</a><span>&gt;</span>选择运送方式
                  </div>
                
                <div class="shezhi">
                    <p>
                        <a href="<?php echo url("m.php"); ?>">我的会员中心</a><span>|</span>风格设置：</p>
                    <ul>
                        <li onclick="changeStyle('orange')" class="mypanliS1"></li>
                        <li onclick="changeStyle('grey')" class="mypanliS2"></li>
                        <li onclick="changeStyle('blue')" class="mypanliS3"></li>
                    </ul>
                </div>
            </div>
        </div>

<?php include template('member_left'); ?>
        
    <div class="fill">
      <div class="daelog">
        <ul>
<?php if(is_array($dataarray)) foreach($dataarray AS $r) { ?>
              <a name="<?php echo $r['gid'];?>" id="<?php echo $r['gid'];?>"></a>
              <li>
                <div class="l"><img src="<?php echo $r['face'];?>" onerror="this.src='<?php echo TPL;?>images/untitled.jpg'"/></div>
                <div class="r"> <span class="zi_hui"><?php echo $r['uname'];?> <?php echo ddate("Y-m-d",$r['addtime']);?></span><br />
                  <?php echo $r['msg'];?> <br />
  <?php if(!empty($r['reply'])) { ?>
                  <div class="huifu">回复：<?php echo $r['reply'];?></div>
  <?php } ?>
                </div>
              </li>
<?php } ?>

  
  <li></li>
        </ul>
      </div>
  <? echo pagelist($total,$pagesize,$page,"");; ?>  
        <h2>问题咨询</h2>
            <div class="jianyi">
                <p>
                    你对网站有什么疑问吗？ 欢迎您提出意见和咨询！</p>
                <dl>
<form name="guestbook" method="post" action="<?php echo url("m.php?name=index&action=guestbook"); ?>">
                    <dt>
                        <textarea rows="" cols="" id="msg" name="msg"></textarea>
                        <p>
                            <input type="text" id="code" name="code" maxlength="4" onkeydown="return enter(event);"><input type="text" style="display: none;">
                            <img src="includes/code/securimage_show.php?sid=<? echo md5(time()); ?>&amp;w=92&amp;h=22&amp;t='+Math.random();" alt="验证码" name="checkCode" border="0" id="checkCode" style="vertical-align: middle; cursor: pointer;" title="点击图片刷新" onclick="this.src='includes/code/securimage_show.php?sid=<? echo md5(time()); ?>&amp;w=92&amp;h=22&amp;t='+Math.random();"></p>
                    </dt>
                    <dd>
                        <input type="submit" onmouseout="this.className=''" onmouseover="this.className='jg'" value="提交" onclick="" id="suggestBtn"></dd>
</form>
                </dl>
            </div>
    </div>

<div class="yj">
        </div>
    </div>

    
<?php include template('footer'); ?>
</body>
</html>
