<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<?php echo $value['title'];?>,<?php echo $cfg_site_name;?>" />
<link type="text/css" rel="Stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css" />
<link href="<?php echo TPL;?>css/AddItemPanel.css" rel="stylesheet" type="text/css" />
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="<?php echo TPL;?>js/jQuery.Extend.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Drag.min.js"></script>
<script src="<?php echo TPL;?>js/jquery.cookies.2.1.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/Gobal.js"></script>
<link href="<?php echo TPL;?>css/discount.css" rel="stylesheet" type="text/css" />
<title><?php echo $value['title'];?> - <?php echo $cfg_site_name;?></title>
</head>
<body>

<form name="aspnetForm" method="post" action="Detail.aspx?nid=434" id="aspnetForm">

 <?php include template('header'); ?>
 
  <div class="weizhi">
    <p> <b>当前位置:</b><a href="/" target="_parent">首页</a>&nbsp;&gt;&nbsp;<a href="<?php echo url("discount.php"); ?>"
                target="_parent">折扣信息</a>&nbsp;&gt;&nbsp;<?php echo $value['title'];?></p>
  </div>
  <div class="center">
    <div class="zuo">
      <div class="details">
        <h1> <?php echo $value['title'];?></h1>
        <p class="zhaiyao"> <span>来源：<?php echo $cfg_site_name;?></span><span> 编辑 : 管理员</span><span>时间：<?php echo ddate('Y-m-d',$value['addtime']);?></span> </p>
        <div class="zw">

<?php echo $value['body'];?>
  
        </div>
        <div class="shangjia">
          <ul>
            <li>来源网站：<?php echo $value['fromshop'];?></li>
            <li>折扣时间：<?php echo $value['discounttime'];?></li>
            <li> 活动url地址：<a href="<?php echo $value['discounturl'];?>" title='<?php echo $value['discounturl'];?>' target="_blank"><?php echo $value['discounturl'];?></a></li>
          </ul>
        </div>
      </div>
      <div class="remen">
        <div class="lm"> <img src="<?php echo TPL;?>images/zk_remen.gif" /></div>
        <ul>
<?php if(is_array($topcarray)) foreach($topcarray AS $r) { ?>
           <li><a href="<?php echo url("discount.php?action=view&did=$r[did]"); ?>" target="_blank"><?php echo $r['title'];?></a></li>
<?php } ?>

        </ul>
      </div>
    </div>
    <div class="you">
      <div class="pltj">
        <div class="lm"> <img src="<?php echo TPL;?>images/zk_pltj.gif" alt="网站推荐 " /></div>
        <ul>

<?php if(is_array($rightarray)) foreach($rightarray AS $r) { ?>

          <li>
            <dl>
              <dt><a target="_blank" href="<?php echo url("recommend.php?action=view&gid=$r[gid]"); ?>"> <img alt="<?php echo $r['goodsname'];?>" src="<?php echo $r['goodsimg'];?>"></a></dt>
              <dd>
                <h1> <a target="_blank" href="<?php echo url("recommend.php?action=view&gid=$r[gid]"); ?>"> <?php echo substrs($r['goodsname'],45);?></a></h1>
                <p>价格 ：<span> ￥<?php echo $r['goodsprice'];?></span></p>
                <div>  来源：<a target="_blank" href="<?php echo $r['sellerurl'];?>"><?php echo $r['goodsseller'];?></a></div>
                <b><a href="###">[<?php echo $r['shopname'];?>]</a></b> </dd>
            </dl>
          </li>

<?php } ?>
  
  
  
        </ul>
      </div>
      <div class="shequ" style="display:none">
        <div class="lm"> <img src="<?php echo TPL;?>images/zk_shequ.gif" /></div>
        <ul>
          <li><a href="#" target="_blank">【帮你淘】日系杂志款单品揭载，复古超人气</a></li>
          <li><a href="#" target="_blank">【超萌】某只欠塞的喵....</a></li>
          <li><a href="#" target="_blank">3ny回来、小show一下下、嘿嘿^3^.&lt;&lt;</a></li>
          <li><a href="#" target="_blank">小K的新单子~~ 来更新咯</a></li>
          <li><a href="#" target="_blank">巧选七夕礼物避开情侣送礼“雷区”</a></li>
          <li><a href="#" target="_blank">据说是艳照门实情。。。</a></li>
        </ul>
      </div>
    </div>
  </div>
<?php include template('footer'); ?>
</form>

</body>
</html>
