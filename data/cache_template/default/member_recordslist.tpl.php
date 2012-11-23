<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<link href="<?php echo TPL;?>css/NewTopFoot.css" rel="Stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/AddItemPanel.css">
<link type="text/css" id="styleName" rel="stylesheet" href="<?php echo TPL;?>css/orange/color.css"/ >
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/ShoppingRecords.css">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/jquery.datepick.css"> 
<script type="text/javascript" src="<?php echo TPL;?>js/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Extend.js"></script>
<script src="<?php echo TPL;?>js/jQuery.Drag.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jquery.cookies.2.1.0.min.js"></script>
<script src="<?php echo TPL;?>js/Gobal.js" type="text/javascript"> </script>
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

</title></head><body>



    <form id="aspnetForm" action="ShoppingRecords.aspx?t=1" method="post" name="aspnetForm">
<div>
<input type="hidden" value="/wEPDwUKMjA0NzMxMzk0M2Rk" id="__VIEWSTATE" name="__VIEWSTATE">
</div>

    
<?php include template('header'); ?>
    
    <div class="admin">
        <div class="ding">
            <div class="shouye">
                <a href="<?php echo url("m.php"); ?>" title="我的会员中心"></a>
            </div>
            <div class="lb">
               <div class="weizhi">
                      <b>当前位置：</b><a href="<?php echo url("m.php"); ?>">会员中心</a><span>&gt;</span>我的消费记录
                  </div>
                
                <div class="shezhi">
                    <p>
                        <a href="<?php echo url("m.php"); ?>">我的会员中心</a><span>|</span>风格设置：</p>
                    <ul>
                        <li onClick="changeStyle('orange')" class="mypanliS1"></li>
                        <li onClick="changeStyle('grey')" class="mypanliS2"></li>
                        <li onClick="changeStyle('blue')" class="mypanliS3"></li>
                    </ul>
                </div>
            </div>
        </div>

 <?php include template('member_left'); ?>
        
    <div class="records">
        <div class="jilu">
            <ul>
                <li index="0" <?php if(empty($type)) { ?>class="on"<?php } ?>><a title="全部消费记录" href="<?php echo url("m.php?name=recordslist"); ?>" class="j1"></a></li>
                <li index="1" <?php if($type==1) { ?>class="on"<?php } ?>><a title="支出记录" href="<?php echo url("m.php?name=recordslist&type=1"); ?>" class="j2"></a></li>
                <li index="2" <?php if($type==2) { ?>class="on"<?php } ?>><a title="收入记录" href="<?php echo url("m.php?name=recordslist&type=2"); ?>" class="j3"></a></li>
            </ul>
        </div>
        <div class="riqi">
            <ul>
                <li>
                    <label>
                       起始日期：</label><div class="rili">
                            <input type="text" value="" id="startDate" readonly="readonly" class="hasDatepick"><img class="datepick-trigger" src="<?php echo TPL;?>images/guojia.gif" alt="..." title="..." id="startDatebtn">
                        </div>
                </li>
                <li>
                    <label>
                        截止日期：</label><div class="rili">
                            <input type="text" value="" id="endDate" readonly="readonly" class="hasDatepick"><img class="datepick-trigger" src="<?php echo TPL;?>images/guojia.gif" alt="..." title="..." id="endDatebtn">
                        </div>
                </li>
                <li>
                    <input type="button" value="查看" onClick="search()" class="chakan"></li>
            </ul>
        </div>
      <div class="biao tui">
          <table>
                <tbody><tr>
                    <th class="w1">
                        日期                    </th>
                    <th class="w2">
                        行为                   </th>
                    <th class="w3">
                      消费摘要                     </th>
                    <th class="w4">
                       金额 <span>(￥)</span>                    </th>
                    <th class="w5">
                       帐户余额 <span>(￥)</span>                    </th>
                </tr>
            </tbody></table>
             
             <table width="100%" border="0" cellspacing="1" cellpadding="0">
 
 <?php if(is_array($dataarray)) foreach($dataarray AS $r) { ?>
 
               <tr <?php if($r['type']==1) { ?>style="color:#f60"<?php } else { ?>style="color:green"<?php } ?>>
                 <td width="16%"><?php echo date('Y-m-d',$r['addtime']);?></td>
                 <td width="13%"><?php echo $RECORDACTION[$r['action']];?></td>
                 <td width="46%"><?php echo $r['remark'];?></td>
                 <td width="10%"><?php echo $r['money'];?></td>
                 <td width="15%"><?php echo $r['accountmoney'];?></td>
               </tr>
   
 <?php } ?>
 
             </table>
      <div class="">
  <? echo pagelist($total,$pagesize,$page,"");; ?>      </div>
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
            var url = "m.php?name=recordslist&type=" + $(".jilu .on").attr("index");
            if ($("#startDate").val().length > 0)
                url += ("&s=" + encodeURI($("#startDate").val()));
            if ($("#endDate").val().length > 0)
                url += ("&e=" + encodeURI($("#endDate").val()));
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