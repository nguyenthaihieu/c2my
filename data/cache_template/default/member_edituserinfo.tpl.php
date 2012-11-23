<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<link href="<?php echo TPL;?>css/NewTopFoot.css" rel="Stylesheet" type="text/css">
<link type="text/css" rel="stylesheet" href="<?php echo TPL;?>css/AddItemPanel.css">
<link href="<?php echo TPL;?>css/public.css" rel="Stylesheet" type="text/css">
<link type="text/css" id="styleName" rel="stylesheet" href="<?php echo TPL;?>css/orange/color.css"/ > 
<script type="text/javascript" src="<?php echo TPL;?>js/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/wdggcGobal.js"></script>
<script type="text/javascript" src="<?php echo TPL;?>js/Country.js"></script>
<title>
我的积分 -<?php echo $cfg_site_name;?>
</title></head>
<body>



    <form action="m.php?name=edituserinfo&action=save" method="post" enctype="multipart/form-data" name="aspnetForm" id="aspnetForm">

<?php include template('header'); ?>

    <div class="admin">
        <div class="ding">
            <div class="shouye">
                <a href="<?php echo url("m.php"); ?>" title="我的会员中心"></a>
            </div>
            <div class="lb">
               <div class="weizhi">
                      <b>当前位置：</b><a href="<?php echo url("m.php"); ?>">会员中心</a><span>&gt;</span>编辑资料
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

    <div class="fill">
    
       <table cellpadding="0" cellspacing="5" class="rjiandan">
        <thead>
            <tr>
                <th class="p_common" colspan="4">
                   修改个人档案                </th>
          </tr>
            <tr>
                <td colspan="4">                </td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td width="149">&nbsp;                </td>
                <td width="83">
                    真实姓名：                </td>
                <td align="left" width="429">
                    <input type="text" class="inp1" id="" maxlength="250" name="tname" value="<?php echo $value['tname'];?>">
                    <span style="color: Red; visibility: hidden;" id="">请填写真实姓名</span>                </td>
                <td width="134" rowspan="5"><a href="###" style="padding:2px; border:#f60 solid 2px; width:120px; height:120px;float:left"><img onerror="this.src='<?php echo TPL;?>images/noimg120.gif'" alt="<?php echo $_USERS['showname'];?>" src="<?php echo $_USERS['face'];?>" width="120" height="120"></a></td>
            </tr>
            <tr>
                <td>&nbsp;                </td>
                <td>
                    性别：                </td>
                <td align="left">
                    <select id="" name="sex">
                      <option value="1" <?php if($value['sex']==1) { ?>selected="selected"<?php } ?>>男士</option>
                      <option value="0" <?php if($value['sex']==0) { ?>selected="selected"<?php } ?>>女士</option>
                                        </select>                </td>
            </tr>
            <tr>
                <td>&nbsp;                </td>
                <td>
                    邮政编码：                </td>
                <td align="left">
                    <input name="zip" type="text" class="inp1" id="" value="<?php echo $value['zip'];?>" maxlength="20">                </td>
            </tr>
            <tr>
                <td>&nbsp;                </td>
                <td>
                    电话：                </td>
                <td align="left">
                    <input name="tel" type="text" class="inp1" id="" value="<?php echo $value['tel'];?>" maxlength="50">                </td>
            </tr>
            <tr>
                <td>&nbsp;                </td>
                <td>
                   地址：                </td>
                <td align="left">
                    <input name="address" type="text" class="inp1" id="" style="width: 245px;" value="<?php echo $value['address'];?>" maxlength="800">                </td>
            </tr>
            <tr>
                <td>&nbsp;                </td>
                <td>
                   国家：                </td>
              <td align="left">
  <select name="country" id="">
   <script type="text/javascript">
document.write(COUNTRY.ToSelect('<?php echo $value['country'];?>'));
  </script>
  </select>
                  <span style="color: Red; visibility: hidden;" id="">请选择国家</span>
                  <span style="color: Red; visibility: hidden;" id="">请输入国家名称</span>                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td> 城市： </td>
              <td align="left"><input name="city" type="text" class="inp1" id="" value="<?php echo $value['city'];?>" maxlength="128" />
                  <span style="color: Red; visibility: hidden;" id="">请填写您所在的城市</span> </td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td> QQ： </td>
              <td align="left"><input name="qq" type="text" class="inp1" id="qq" value="<?php echo $value['qq'];?>" maxlength="128" />
                  <span style="color: Red; visibility: hidden;" id="">请填写您的QQ号码</span> </td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td> msn： </td>
              <td align="left"><input name="msn" type="text" class="inp1" id="msn" value="<?php echo $value['msn'];?>" maxlength="128" />
                  <span style="color: Red; visibility: hidden;" id="">请填写您的MSN号码</span> </td>
              <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;                </td>
                <td>
                    上传头像：                </td>
                <td align="left" colspan="2">
 	<input type="hidden"  id="" name="oldface" value="<?php echo $value['face'];?>">
                    <input type="file"  id="faceimg[]" name="faceimg[]">
                    <div id="pnPreview"></div>                </td>
            </tr>
<tr>
<td>&nbsp;</td>
<td>温馨提示：</td>
<td><span style="color:#ff8000;">上传图片格式仅限140*140或以下大小的gif,jpg,png格式的图片</span></td>
</tr>
            <tr>
                <td>&nbsp;                </td>
                <td>                </td>
                <td colspan="2">
                    <input type="submit" class="inputblue" id="" onClick="" value="提交" name="commit" />                </td>
            </tr>
        </tbody>
    </table>
    
    </div>


      <div class="yj">
      </div>
    </div>

    
<?php include template('footer'); ?>

</form>
</body>
</html>