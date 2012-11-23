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

    <script type="text/javascript" src="<?php echo TPL;?>js/jquery.datepick.min.js"></script>

    <script type="text/javascript" src="<?php echo TPL;?>js/jquery.datepick-zh-CN.js"></script>


<title>我的退款记录 - <?php echo $cfg_site_name;?></title></head><body>


 <?php include template('header'); ?>
 
  <div class="admin">
        <div class="ding">
            <div class="shouye">
                <a href="<?php echo url("m.php"); ?>" title="我的会员中心"></a>
            </div>
            <div class="lb">
              <div class="weizhi">
                      <b>当前位置：</b><a href="<?php echo url("m.php"); ?>">会员中心</a><span>&gt;</span>我的退款记录
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

    <div class="records marr_top">

<?php if(empty($action)) { ?>
<div class="biao">
          <table>
                <tbody><tr>
                    <th width="84" class="w1">
                  申退金额                     </th>
                    <th width="84" class="w2">
               帐号              </th>
                    <th  width="105" class="w3">
                  充值时间                     </th>
                    <th width="133" class="w4">
                       申退时间</th>
              <th width="85" class="w5">
                        国家                  </th>
                <th width="218" class="w5">备注</th>
                </tr>
            </tbody></table>
             
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<?php if(is_array($dataarray)) foreach($dataarray AS $r) { ?>
         <tr>
                 <td width="84">￥<?php echo $r['money'];?></td>
                 <td width="84"><?php echo $r['uname'];?></td>
                 <td width="105"><?php echo date('Y-m-d',$r['addtime']);?></td>
                 <td width="133"><?php echo date('Y-m-d',$r['addtime']);?></td>
                 <td width="85"><?php if($r['state']==1) { ?>待审核<?php } else { ?>已完成 <?php } ?></td>
                 <td width="218"><?php echo $r['remark'];?></td>
         </tr>
<?php } ?>
</table>
      </div>
  
<?php } else { ?>
<div class="biao">
<div style=" text-align:center; padding:10px"><h2>申请退款</h2></div>
    <form id="aspnetForm" action="m.php?name=refundrecord&action=refund&rid=<?php echo $rid;?>" method="post" name="Form">
          <table>
            <tr>
              <td > 本充值金额  </td>
              <td widtd="225" align="left" style="text-align:left">&nbsp;<font color="red"><?php echo $row['money'];?>￥</font></td>
            </tr>
            <tr>
              <td > 充值时间  </td>
              <td align="left" style="text-align:left" >&nbsp;<?php echo date('Y-m-d',$row['addtime']);?></td>
            </tr>
            <tr>
              <td > 申退金额  </td>
              <td align="left" style="text-align:left"><input name="money" type="text" id="money" />
                (￥)</td>
            </tr>
               <tr>
                   <td>备注</td>
                  <td align="left" style="text-align:left" ><textarea name="remark" cols="50" rows="5" id="remark"></textarea></td>
            </tr>
           </table>
   <div style=" text-align:center"><input type="submit" value="提交申请" />
   </div>
   </form>
</div>
<?php } ?>

  
  
  
    </div>

        <div class="yj">
        </div>
    </div>

    
<?php include template('footer'); ?>

    </form>
</body>
</html>