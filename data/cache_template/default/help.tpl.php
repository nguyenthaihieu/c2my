<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head><meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/help.css">
<link href="<?php echo TPL;?>css/NewTopFoot.css" rel="Stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/AddItemPanel.css">
<script type="text/javascript" src="<?php echo TPL;?>js/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Extend.js"></script>
<script src="<?php echo TPL;?>js/jQuery.Drag.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/jquery.cookies.2.1.0.min.js"></script>
<script src="<?php echo TPL;?>js/Gobal.js" type="text/javascript"></script>
<title>[<?php echo $cfg_site_name;?>] - 帮助中心</title>
</head>
 <body>


<form id="aspnetForm" action="<?php echo url("help.php?action=list"); ?>" method="post" name="aspnetForm">
    <?php include template('header'); ?>	
    <div class="center">
        <div class="search">
            <div class="cz">
               查找帮助：</div>
            <div class="gjc">
                <input type="text" onblur="if($.trim(this.value).length&lt;=0){this.className='s1';this.value='输入您想搜索的帮助关键词，如：代购是什么？'}" onfocus="if(this.className=='s1'){this.value='';this.className='s1_';}" value="输入您想搜索的帮助关键词，如：代购是什么" id="hkey" name="keyword" class="s1"><input type="submit" value="搜索" onmouseout="this.className='s2'" onmouseover="this.className='s2_'" id="hbtn" name="" class="s2" onclick="">
            </div>
        </div>
        <div class="left_h">
            <h2 class="n1">
                <a title="帮助分类" href="<?php echo url("help.php"); ?>"></a>
            </h2>
            <ul>
                <?php if(is_array($atypearray)) foreach($atypearray AS $aval) { ?>
<?php if($aval['node']==0) { ?>
                        <li><a href="<?php echo url("help.php?action=list&id="); ?><?php echo $aval['typeid'];?>">
                            <?php echo $aval['typename'];?></a></li>
<?php } ?>
<?php } ?>
                
            </ul>
            <h2 class="n2">
                <a title="常见问题" href="<?php echo url("help.php?id=9"); ?>"></a>
            </h2>
            <ul>
                 <?php if(is_array($atypearray)) foreach($atypearray AS $aval) { ?>
<?php if($aval['node']==9) { ?>               
                        <li><a href="<?php echo url("help.php?action=list&id="); ?><?php echo $aval['typeid'];?>">
                            <?php echo $aval['typename'];?></a></li>
<?php } ?>
<?php } ?>
                    
            </ul>
            <h2 class="n6">
                <a title="常用工具" href="<?php echo url("tools.php"); ?>"></a>
            </h2>
            
            <h2 class="n4">
                <a title="用户须知" href="<?php echo url("help.php?action=view&id=82"); ?>"></a>
            </h2>
            
        </div>
        
    <div class="right_h">
        <div class="weizhi">
            <p>
                <b>当前位置：</b><a href="<?php echo url("help.php"); ?>">查找帮助</a><span>&gt;</span>帮助中心</p>
            <div>
                <a target="_blank" href="<?php echo url("demo.php"); ?>">代购演示 </a></div>
        </div>
        <div class="fenlei_h">
        <?php if(is_array($rightatypearray)) foreach($rightatypearray AS $aval) { ?>

            <h2><?php echo $aval['typename'];?></h2>
            <ul>
                <?php if(is_array($rightarticlearray)) foreach($rightarticlearray AS $val) { ?>
<?php if($val['typeid']==$aval[typeid]) { ?>
                <li><a href="<?php echo url("help.php?action=view&id=$val[aid]"); ?>"><?php echo $val['title'];?></a></li>
<?php } ?>
<?php } ?>
            </ul>

        <?php } ?>



    
        </div>
    </div>
    <div style="clear: both;" class="yj">
    </div>

    </div>
    <input type="text" style="display: none;">
    <div class="foot_h">
        <p>
            <a href="<?php echo url("about.php?action=aboutus"); ?>">关于代购</a>&nbsp;|&nbsp;<a href="<?php echo url("about.php?action=contactus"); ?>">联系我们</a>&nbsp;|&nbsp;<a href="<?php echo url("about.php?action=joinus"); ?>">加入我们</a>&nbsp;|&nbsp;<a href="<?php echo url("about.php?action=links"); ?>">友情链接</a>
        </p>
        Copyright&nbsp;&copy;&nbsp;2010 代购! Inc. All rights reserved
    </div>
    </form>

</body>