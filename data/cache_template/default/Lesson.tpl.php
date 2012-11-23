<?php defined('ZZQSS') or exit('Access Denied'); ?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>代购演示 </title>
<link type="text/css" rel="Stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css" />
<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/Gobal.js"></script>
<script src="<?php echo TPL;?>js/standard.js" type="text/javascript"></script>
</head>



<body>
<?php include template('header'); ?>
<center>

<div id="CaptivateContent">&nbsp;
</div>
<script type="text/javascript">
   var so = new SWFObject("Lesson.swf", "Captivate", "1084", "865", "8", "#CCCCCC");
so.addParam("quality", "high");
so.addParam("name", "Captivate");
so.addParam("id", "Captivate");
so.addParam("wmode", "window");
so.addParam("bgcolor","#F5F4F1");
so.addParam("menu", "false");
so.addVariable("variable1", "value1");
so.setAttribute("redirectUrl", "http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash");
so.write("CaptivateContent");
</script>
      

<script type="text/javascript">
document.getElementById('Captivate').focus();
document.Captivate.focus();
</script>
</center>
<?php include template('footer'); ?>
</body>
</html>
