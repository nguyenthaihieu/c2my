<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>------</title>
<link href="_css/style.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 7]><script type="text/javascript" src="_script/unitpngfix.js"></script><![endif]-->
<script type="text/jscript" src="_script/jquery.js"></script>
<!-- Arquivos utilizados pelo jQuery jgrowl plugin -->
<script type="text/javascript" src="_script/jquery.jgrowl.js"></script>
<link rel="stylesheet" type="text/css" href="_script/jquery.jgrowl.css" media="screen" />
<!--[if lt IE 7]><LINK href="_script/jquery.jgrowl.ie6.css" type=text/css rel=stylesheet><![endif]-->
<!-- / fim dos arquivos utilizados pelo jQuery jgrowl plugin -->
<SCRIPT type=text/javascript>
function tools(){
var box_h="1";	
var top=$(document).scrollTop();
$("#topv")[0].value=top;
if(($.browser.msie==true)&&($.browser.version==6.0)){
if(top>box_h)$("#box_tools").css({position:"absolute",top:top-box_h});
}else{
if(top>box_h)$("#box_tools").css({position:"fixed",top:"-"&top+"px"});
}
if(top<=box_h)$("#box_tools").css({position:"static",top:0});
}

$(function(){
window.onscroll=tools;
window.onresize=tools;
});

</SCRIPT>
</head>
<body>
<div id="box_tools" class="floor_t">
  <div class="toolbgline">
  <table width="100%" border="0" cellspacing="2" cellpadding="0">
      <tr>
        <td width="28"><a href="javascript:location.reload();"><img src="images/admin.gif" alt="刷新" width="28" height="20" /></a></td>
        
        <td><span style="margin-top:10px">
          <input name="save2" type="submit" class="btn" value="删除选择" />
          <input name="reback2" type="reset" class="btn" value="添加新的" />
        </span></td>
        
        <td width="20"><input class="input w200"  style="width:20px;margin-right:2px" name="topv" type="text" id="topv" value="" /></td>
        <td width="1"></td>
      </tr>
    </table>
  </div>
</div>
<div class="floor_c">  
  <div class="xn"></div>
  <div class="boxf">
    <div class="boxn">
<script>    
function checkform()
{
/*	var title = document.getElementById("title");
	if(title.value=="")
	{
		alert("作品标题不能为空，请输入！");
		title.focus();
		return false;
	}*/

	
	document.form.reback.disabled=true;
	document.form.save.disabled=true;
	//document.form.save.value='提交中';
	return true;
}
function nform()
{
	document.form.reback.disabled=false;
	document.form.save.disabled=false;
	return true;
}


</script>
      <form name="form" target="ActFrm" enctype="multipart/form-data" method="post" onSubmit="return checkform()">
        <table border="0" cellpadding="1" cellspacing="1" id="table">
          <tr class="th" >
            <td>标题1</td>
            <td>标题2</td>
            <td>标题3</td>
            <td>标题4</td>
            <td>标题4</td>
            <td>标题5</td>
          </tr>
          <tr>
            <td width="194">数据001</td>
            <td width="145" height="22">数据002</td>
            <td width="397">数据002</td>
            <td width="162">数据002</td>
            <td width="287">数据002</td>
            <td width="174">数据002</td>
          </tr>
          <tr>
            <td  class="lh">数据002</td>
            <td width="145" height="22" bgcolor="#FFFFFF">数据002</td>
            <td  class="lh">数据002</td>
            <td width="162" height="22" bgcolor="#FFFFFF">数据002</td>
            <td  class="lh">数据002</td>
            <td height="22" bgcolor="#FFFFFF">数据002</td>
          </tr>
        </table>
        <div class="pagex"> <span class="y">上一页</span> <span class="x"> 下一页</span></div>
      </form>
    </div>
  </div>
  <div class="xn"></div>
  <div class="x1"></div>
</div>
<iframe src="about:blank" name="ActFrm" id="ActFrm" style="display:none"></iframe>


</body>
</html>