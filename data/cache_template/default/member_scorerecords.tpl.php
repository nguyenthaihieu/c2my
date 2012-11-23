<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<link href="<?php echo TPL;?>css/NewTopFoot.css" rel="Stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/AddItemPanel.css">
<link href="<?php echo TPL;?>css/jifen.css" rel="Stylesheet" type="text/css">
<link type="text/css" id="styleName" rel="stylesheet" href="<?php echo TPL;?>css/orange/color.css"/ > 
<script type="text/javascript" src="<?php echo TPL;?>js/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Extend.js"></script>
<script src="<?php echo TPL;?>js/jQuery.Drag.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jquery.cookies.2.1.0.min.js"></script>
<script src="<?php echo TPL;?>js/Gobal.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/wdggcGobal.js"></script>
<script src="images/js/calendar/js/jscal2.js"  language="javascript" charset="utf-8"></script>
<script src="images/js/calendar/js/lang/cn.js" language="javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="images/js/calendar/css/jscal2.css" />

    <style type="text/css">


.pages {float:right;height:25px;margin:15px 0 0 0;display:inline;}
.pages li{list-style-type: none;}
.pages  a{text-decoration:none;}
.pages li{
border:1px solid #AAAAAA;color:#666666;display:inline;float:left;height:20px;line-height:20px;margin-left:2px;padding:0 5px;text-decoration:none;}
.pages li {border:1px solid #DDDDDD;color:#CCC;font-family:"simsun";}
.pages li:hover {background:#FFEDE1;border:1px solid #FF9900;}
.pages .current {background:#FFEDE1;border:1px solid #FF6600;color:#FF0000;}
.pages em {color:#999999;display:inline;float:left;height:22px;line-height:22px;margin-left:5px;}
    </style><title>
我的积分 -<?php echo $cfg_site_name;?>
</title></head>

<body>




    <form id="aspnetForm" action="ShoppingRecords.aspx?t=1" method="post" name="aspnetForm">


<?php include template('header'); ?>
    
    <div class="admin">
        <div class="ding">
            <div class="shouye">
                <a href="<?php echo url("m.php"); ?>" title="我的会员中心"></a>
            </div>
            <div class="lb">
                <div class="weizhi">
                      <b>当前位置：</b><a href="<?php echo url("m.php"); ?>">会员中心</a><span>&gt;</span>我的积分
                  </div>
                
                <div class="shezhi">
                    <p>
                        <a href="<?php echo url("m.php"); ?>">我的会员中心</a><span>|</span>风格设置：</p>                    <ul>
                        <li onClick="changeStyle('orange')" class="mypanliS1"></li>
                        <li onClick="changeStyle('grey')" class="mypanliS2"></li>
                        <li onClick="changeStyle('blue')" class="mypanliS3"></li>
                    </ul>
                </div>
            </div>
        </div>


<?php include template('member_left'); ?>
        
    <div class="fill">
        <div class="jifen_top">
            <div class="photo face">
                <img onerror="this.src='<?php echo TPL;?>images/noimg120.gif'" alt="wsl881202" src="<?php echo $_USERS['face'];?>">
            </div>
            <div class="huiyuan">
               <h2>
                  你好！<?php echo $_USERS['showname'];?></h2>
                <div class="shuzhi">
                    <ul>
                        <li>会员级别：<?php echo $UTYPENAME[$_USERS['utype']];?></li>
                        <li>您当前拥有积分：<span><?php echo $_USERS['scores'];?></span></li>
                    </ul>
                    
                    	<a href="<?php echo url("m.php?name=coupon&action=getcoupon"); ?>" style="margin-top:0px;">兑换优惠券</a><br/><br>
    <a href="m.php?name=index&amp;action=upmember" style="margin-top:0px;">会员升级</a>

                </div>
                <p>
                  使用积分可以兑换两种面值的电子优惠券，可用于抵扣服务费！</p>
            </div>
            <div class="wenti">
                <div class="ji_lm">
                    <h2>
                        积分Q&amp;A</h2>
                    <a target="_blank" href="<?php echo url("help.php"); ?>">更多…</a></div>
                <ul>
                <?php $helparray=helplist(4,'')?>
<?php if(is_array($helparray)) foreach($helparray AS $r) { ?>
                    <li><a target="_blank" href="<?php echo url("help.php?action=view&id=$r[aid]"); ?>"><?php echo $r['title'];?></a></li>
<?php } ?>


                </ul>
            </div>
        </div>
        <div class="jf_xz">
            <ul>
                <li><a href="m.php?name=scorerecords&type=0" index="0" <?php if(empty($type)) { ?>class="o"<?php } ?>>
                    积分记录</a></li>
                <li><a href="m.php?name=scorerecords&type=2" index="2" <?php if($type==2) { ?>class="o"<?php } ?>>
                    我获得的积分</a></li>
                <li><a href="m.php?name=scorerecords&type=1" index="1" <?php if($type==1) { ?>class="o"<?php } ?>>
                    我消费的积分</a></li>
            </ul>
            
            
        </div>
        <div class="jifen">
            <div class="time">
                <label>
                   起始日期：</label><div class="riqi">
                        <input type="text" value="" id="startDate" readonly="readonly" autocomplete="off" class="hasDatepick"><img class="datepick-trigger" src="<?php echo TPL;?>images/guojia.gif" alt="..." title="..." id="startDatebtn">
                    </div>
                <label>
                   截止日期：</label><div class="riqi">
                        <input type="text" value="" id="endDate" readonly="readonly" autocomplete="off" class="hasDatepick"><img class="datepick-trigger" src="<?php echo TPL;?>images/guojia.gif" alt="..." title="..." id="endDatebtn">
                    </div>
                <input type="button" onClick="search()" value="查看" class="chakan">
            </div>
            
            <div class="biao">
                <table>
                    <tbody><tr>
                        <th class="w1">
                            日期
                        </th>
                        <th class="w2">
                            原因
                        </th>
                        <th class="w3">
                            积分数量
                        </th>
                    </tr>
 
 
 
 <?php if(is_array($dataarray)) foreach($dataarray AS $r) { ?>
                    <tr>
                        <td class="w1">
                            <?php echo date('Y-m-d H:i:s',$r['addtime']);?>
                        </td>
                        <td class="w2">
                            <?php echo $r['remark'];?>
                        </td>
                        <td class="w3">
                            <span><? echo $r['score']>0?'+':'';; ?><?php echo $r['score'];?></span>
                        </td>
                    </tr>
 
<?php } ?>

 
                </tbody></table>
                <div class="p">
                    <? echo pagelist($total,$pagesize,$page,"");; ?>                </div>
            </div>
            
        </div>
    </div>

    <script type="text/javascript">
      var cal = Calendar.setup({
          onSelect: function(cal) { cal.hide() },
          showTime: true
      });
      cal.manageFields("startDatebtn", "startDate", "%Y-%m-%d");
  cal.manageFields("endDatebtn", "endDate", "%Y-%m-%d");
  
        function search() {
            var url = "m.php?name=scorerecords&type=" + $(".jf_xz .o").attr("index");
            if ($("#startDate").val().length > 0)
                url += ("&amp;s=" + encodeURI($("#startDate").val()));
            if ($("#endDate").val().length > 0)
                url += ("&amp;e=" + encodeURI($("#endDate").val()));
            window.location = url;
        }
    </script>


        <div class="yj">
        </div>
    </div>

    
<?php include template('footer'); ?>

    </form>
</body>
</html>