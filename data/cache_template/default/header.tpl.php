<?php defined('ZZQSS') or exit('Access Denied'); ?><script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>
<script src="templates/default/js/jquery.cookies.2.1.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
//网站换肤
$(function () {
    var $li = $("#skinList li");  //查找到元� 
    $li.click(function () {   //给元� 添� 事件
        switchSkin(this.id);//调用函数
    });
    //保存Cookie完毕以后就可以通过Cookie来获取当前的皮肤了
    var cookie_skin = $.cookies.get("MyCssSkin");     //获取Cookie的值
    if (cookie_skin) {                          //如果确实存在Cookie
        switchSkin(cookie_skin);     //执行
    }
});
function switchSkin(skinName) {  
    $("#" + skinName).addClass("selected")                //当前<li>元� 选中
                       .siblings().removeClass("selected");  //去掉其他同辈<li>元� 的选中
    $("#cssfile").attr("href", "<?php echo TPL;?>css/" + skinName + ".css"); //设置不同皮肤
    $.cookies.set("MyCssSkin", skinName, { path: '/', expires: 10 });  //保存Cookie
}
</script>
<link id="cssfile" href="<?php echo TPL;?>css/layout.css" rel="stylesheet" type="text/css" />

<link href="add/AddItemPanel.css" rel="stylesheet" type="text/css" />
<div class="addpanel_dialog" style="display: none;">
  <div class="addpanel_windowname">
    <h2>一键填单</h2>
    <a id="closeBtn" title="关闭"></a> </div>
  <div class="addpanel_inlay">
    <div id="p0"> <img src="/add/newimages/loading.gif" alt="加载中。。。" />
      <p> 加载中…… </p>
    </div>
    <div id="p1"> </div>
    <div id="p2" style="display: none;"> </div>
    <div id="p3" style="display: none;"> </div>
  </div>
</div>
<div class="addpanel_overlay"> </div>
 <script src="<?php echo TPL;?>js/Gobal.js" type="text/javascript"></script>


<div class="topPan">
<div class="w960">
<div class="w_50">
<?php if(empty($_USERS)) { ?>
                <div id="Gobal_LoginInfo">你好！游客 请 <a href="<?php echo url("user.php?action=login"); ?>">[登录]</a> 或 <a href="<?php echo url("user.php?action=register"); ?>">[用户注册]</a></div>
<?php } else { ?>
<div id="Gobal_LoginInfo">你好！<?php echo $_USERS['uname'];?> [<a href="<?php echo url("user.php?action=quit"); ?>">退出</a>]&nbsp;&nbsp;<a href="<?php echo url("m.php?name=pm"); ?>" target="_blank"><img src="<?php echo TPL;?>images/an2.gif" class="sms" alt="" />新短信<span class="orange">(<?php echo $_USERS['pm'];?>)</span></a></div>
<?php } ?>
</div>
<div class="w_50">
<ul class="userProfile">
<li><a target="_blank" id="Gobal_Shoppingcart" href="<?php echo url("shoppingcart.php"); ?>">购物车<span class="orange">(<?php echo $_CARTCOUNT;?>)</span></a>&nbsp;&nbsp;|</li>
<li><a href="<?php echo url("m.php"); ?>">会员中心</a>&nbsp;&nbsp;|</li>
<li><a href="<?php echo url("m.php?name=orderlist"); ?>">我的订单</a>&nbsp;&nbsp;|</li>
<li><a href="<?php echo url("help.php"); ?>">帮助中心</a>&nbsp;&nbsp;|</li>
<li id="Tools" class="top_tools"><a onclick="return false;" href="#">常用工具</a>
<ul class="tools" id="ToolsList" style="display:none">
<li><a target="_blank" href="<?php echo url("page.php?action=estimates"); ?>">费用估算</a></li>
<li><a target="_blank" href="<?php echo url("page.php?action=measureconversion"); ?>">尺码换算</a></li>
<li><a target="_blank" href="<?php echo url("page.php?action=postage"); ?>">运费价格</a></li>
<li><a target="_blank" href="http://www.123cha.com/hl/">汇率换算</a></li>
<li><a target="_blank" href="<?php echo url("page.php?action=track"); ?>">包裹跟踪查询</a></li>
</ul>
</li>
            </ul>
</div>
<div class="clear"></div>
</div>
</div>
<div class="w960 h100">
<div class="logo left">
<img src="<?php echo TPL;?>images/logo.gif" alt="" />
</div>
<div class="oneKey right">
<div class="urlName left gray">购买商品的网址：</div>
<div class="url left"><input type="text" name="" id="CrawlUrl" class="left orange" value="http://" /></div>
<div class="btn left white"><a class="noUnderLine" id="CrawlBtn" href="javascript:;">快速代购</a></div>				
</div>
<div class="tip left" id="CrawlPromt">输入所有中国购物网站的商品链接地址就可以代购！</div>
<div class="clear"></div>
</div>
<div class="nav">
<div class="w960">
<ul>
<li><a id="Default" href="/"><span class="nav_item"><strong>首页</strong></span></a></li>
<li><a id="see" href="<?php echo url("see.php"); ?>"><span class="nav_item"><strong>随便看看</strong></span></a></li>
<li><a id="demo" href="<?php echo url("demo.php"); ?>"><span class="nav_item"><strong>代购演示 </strong></span></a></li>
<li><a id="shop" href="<?php echo url("shop.php"); ?>"><span class="nav_item"><strong>免邮商品</strong></span></a></li>
<li><a id="recommend" href="<?php echo url("recommend.php"); ?>"><span class="nav_item"><strong>代购推荐</strong></span></a></li>
<li><a id="guestbook" href="<?php echo url("guestbook.php"); ?>"><span class="nav_item"><strong>用户评论</strong></span></a></li>
<li><a id="special" href="<?php echo url("special.php"); ?>"><span class="nav_item"><strong>专题活动</strong></span></a></li>
<li><a id="discount" href="<?php echo url("discount.php"); ?>"><span class="nav_item"><strong>折扣信息</strong></span></a></li>
<li><a id="free_postage" href="<?php echo url("free_postage.php"); ?>"><span class="nav_item"><strong>免邮商家</strong></span></a></li>
</ul>
</div>
</div>
<div class="w960 header">
<div class="contact left gray">
<span class="c1"><a href="tencent://message/?uin=<?php echo $cfg_index_qqlink;?>&Site=yi&Menu=yes">QQ客服</a></span>
<span class="c2"><a href="msnim:chat?contact=<?php echo $cfg_index_msnlink;?>">在线客服</a></span>
<span class="c3"><span>关注我：</span><a href="<?php echo $cfg_weibolink;?>" class="sina" target="_blank"></a><a href="<?php echo $cfg_facebooklink;?>" class="facebook" target="_blank"></a><a href="<?php echo $cfg_twitterlink;?>" class="twitter" target="_blank"></a></span>
<span class="c4">服务时间：周一至周五8：30 - 20：00</span>
</div>
<div class="selectSkin left gray">请选择您喜欢的颜色:</div>
<div class="skinList right" id="skinList">		
<ul>
<li id="def">
<div><img alt="默认" src="<?php echo TPL;?>images/skinbt_h.gif"></div>
</li>
<li id="s1">
<div><img alt="淡蓝" src="<?php echo TPL;?>images/skinbt_h.gif"></div>
</li>
<li id="s2">
<div><img alt="宁夏" src="<?php echo TPL;?>images/skinbt_h.gif"></div>
</li>
<li id="s3">
<div><img alt="新绿" src="<?php echo TPL;?>images/skinbt_h.gif"></div>
</li>
<li id="s4">
<div><img alt="世博" src="<?php echo TPL;?>images/skinbt_h.gif"></div>
</li>
<li id="s5">
<div><img alt="水墨" src="<?php echo TPL;?>images/skinbt_h.gif"></div>
</li>
<li id="s6">
<div><img alt="星空" src="<?php echo TPL;?>images/skinbt_h.gif"></div>
</li>
<li id="s7">
<div><img alt="春节" src="<?php echo TPL;?>images/skinbt_h.gif"></div>
</li>
<li id="s8">
<div><img alt="咖啡" src="<?php echo TPL;?>images/skinbt_h.gif"></div>
</li>
<li id="s9">
<div><img alt="紫色" src="<?php echo TPL;?>images/skinbt_h.gif"></div>
</li>
</ul>
</div>
</div>

<div class="clear top5"></div>