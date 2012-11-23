<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/AddItemPanel.css">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css"  />
<link type="text/css" id="styleName" rel="stylesheet" href="<?php echo TPL;?>css/orange/color.css"/ >    
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/preferential.css"/>
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="<?php echo TPL;?>js/Gobal.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/wdggcGobal.js"></script>

<title>我的优惠券 - <?php echo $cfg_site_name;?></title>
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
                      <b>当前位置：</b><a href="<?php echo url("m.php"); ?>">会员中心</a><span>&gt;</span>我的优惠券
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
        <div class="p_top">
            <div class="p_pic">
                <img alt="优惠券" src="<?php echo TPL;?>images/preferential.gif">
            </div>
            <div class="p_right">
                <div class="p_info">
                    <h2>
                      亲爱的<span style="color:orange;"><?php echo $UTYPENAME[$_USERS['utype']];?></span>【<?php echo $_USERS['showname'];?>】，您好！</h2>
                    <ul><li>您目前没有可以使用的电子优惠券，别灰心。</li><li><a target="_blank" href="<?php echo url("help.php?action=view&id=87"); ?>">如何获得电子优惠券&gt;&gt;</a></li></ul>
                    <p>
                       您当前拥有积分：<span><?php echo $_USERS['scores'];?></span><a href="<?php echo url("m.php?name=coupon&action=getcoupon"); ?>"> 积分兑换电子优惠券&gt;&gt;</a></p>
                </div>
                <div class="ask">
                    <h2></h2><ul>
<?php $helparray=helplist(5,'')?>
<?php if(is_array($helparray)) foreach($helparray AS $r) { ?>
                    <li><a target="_blank" href="<?php echo url("help.php?action=view&id=$r[aid]"); ?>"><?php echo $r['title'];?></a></li>
<?php } ?>




</ul>
                </div>
                <div class="tieshi">
                   网站小贴士：电子优惠券有什么作用呢？在提交运单时，您可以使用电子优惠券来抵扣服务费噢。
                </div>
            </div>
        </div>
        <div class="chaozuo">
            <ul>
                <li>
                    <div class="tu">
                        <img alt="电子优惠券激活区" src="<?php echo TPL;?>images/t1.gif">                    </div>
                    <div class="gy">
                        <h2>
                            <a href="<?php echo url("m.php?name=coupon&action=active"); ?>">电子优惠券激活区</a></h2>
                        <p>
                            活动发放的电子优惠券，点击进入就可以激活咯！</p>
                    </div>
                </li>
                <li>
                    <div class="tu">
                        <img alt="电子优惠券赠送区" src="<?php echo TPL;?>images/t2.gif">
                    </div>
                    <div class="gy">
                        <h2>
                            <a href="<?php echo url("m.php?name=coupon&action=present"); ?>">电子优惠券赠送区</a></h2>
                        <p>
                           可以将电子优惠券赠送给您的好友使用噢！</p>
                    </div>
                </li>
                <li>
                    <div class="tu">
                        <img alt="电子优惠券出售区" src="<?php echo TPL;?>images/t3.gif">
                    </div>
                    <div class="gy">
                        <h2>
                            <a href="<?php echo url("m.php?name=coupon&action=sell"); ?>">电子优惠券出售区</a></h2>
                        <p>
                           电子优惠券不想要了，不如在此出售吧！</p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="jf_xz">
            <ul>
                <li class="o">我的优惠券</li>
            </ul>
            <p>
                <a target="_blank" href="<?php echo url("coupon.php"); ?>">去电子优惠券商城逛逛&gt;&gt;</a></p>
        </div>
        <div class="jilu">

<?php if(!empty($dataarray)) { ?>            
<DIV id=userCouponListPanel class="biao my"><TABLE>
<TBODY>
<TR>
<TH class=w1>有效期 </TH>
<TH class=w2>号码 </TH>
<TH class=w3>面值<SPAN>(￥)</SPAN> </TH>
<TH class=w4>获得途径 </TH>
<TH class=w5>状态 </TH></TR>
</TBODY></TABLE>
<TABLE id=userCouponList>
<TBODY>
<?php if(is_array($dataarray)) foreach($dataarray AS $key => $r) { ?>
<tr <?php if($key%2==1) { ?>class="hui"<?php } ?>>
<td class="w1"><? if($r['endtime']!=0)echo date('Y-m-d',$r['endtime']);else echo '未激活' ?></td>
<td class="w2"><?php echo $r['sn'];?></td>
<td class="w3"><?php echo $r['money'];?></td>
<td class="w4"><?php echo $r['getwayname'];?></td>
<td class="w5"> <span><?php echo $r['statename'];?></span></td>
</tr>
<?php } ?>

</TBODY>
</TABLE>
<DIV id=ajaxPager class=page-bottom></DIV>
<DIV style="CLEAR: both">&nbsp;</DIV></DIV>			

<?php } else { ?>			
<div class="biao mei">您目前没有可以使用的电子优惠券，别灰心。<br><a target="_blank" href="<?php echo url("help.php"); ?>">如何获得电子优惠券&gt;&gt;</a></div>			

<?php } ?>		



        </div>
    </div>

        <div class="yj">
        </div>
    </div>

    

<?php include template('footer'); ?>
</body>
</html>
