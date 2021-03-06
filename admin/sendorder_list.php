<?php
include("../common.inc.php");
include("function_common.php");
InitGP(array("page","action","state","value","payid","ids","did","delids")); //初始化变量全局返回
$Table=new TableClass("sendorder","sid");
AjaxHead();//禁止页面缓存

if(empty($action)){
	InitGP(array("state","orderby","orderway","keywords")); //初始化变量全局返回
	if(!empty($state))$wherestr[]="state='{$state}'";
	if(!empty($keywords))$wherestr[]=" CONCAT(sid,' ',uname,' ',sn,' ',consignee,' ',tel,' ',email) like '%$keywords%' ";
	if(!empty($wherestr)) $wheresql = implode(' AND ', $wherestr);	//条件汇总
	
	$orderway=$orderway=="desc"?"desc":"asc";
	if(!empty($orderby))$orderstr="{$orderby} {$orderway}";

	//获取当前页码
	$total=$Table->getcount($wheresql); 							  //总信息数
	$pagesize=15;												  //一页显示信息数
	$page = isset($page) ? max(1, intval($page)) : 1;             //处理页码变量
	$offset=($page-1)*$pagesize;   								  //偏移量
	$dataarray=$Table->getdata("$offset,$pagesize",$wheresql,$orderstr); //获取团购数据
	//print_r($dataarray);
	
	//包含后台模板文件
	include("tpl/sendorder_list.htm");
}elseif($action=="edit") {
	InitGP(array("mid","mname","type","node","murl","listorder","mcode","Submit")); //初始化变量全局返回
	if(!empty($Submit)){
		$mid=GetNum($mid);
		if($type=="zone")$node=0;
		if($mid==0)showmsg("缺少ID参数!",-1);//成功
		$arrayedit=array(
			"mname"=> Char_cv($mname),
			"type"=> Char_cv($type),
			"node"=> GetNum($node),
			"murl"=> Char_cv($murl),
			"listorder"=>GetNum($listorder) ,
			"mcode"=> Char_cv($mcode)
		);
		$info=$Table->edit($mid,$arrayedit);
		if($info=="OK"){
			showmsg("编辑成功!",PHP_SELF);//成功
		}else showmsg($info,"-1");//出错！	
	
	}else{
	$evalue=$Table->getone($mid);
	}
}elseif ($action=="updatestate" && !empty($ids) && !empty($state)){
	//更改状态
	
	$state=GetNum($state);
	$ids=getdotstring(explode('|',$ids));
	$wheresqlarr="sid in({$ids})";
	editstate($Table->table,"state",$wheresqlarr,$state);//更改状态操作
	editstate($Table->table,"uptime",$wheresqlarr,$timestamp);//更改更新时间操作
	exit("1");
}elseif ($action=="updateexpressno" && !empty($ids) && !empty($value)){
	//更改状态
	$ids=GetNum($ids);
	$wheresqlarr="sid ={$ids}";
	$value=Char_cv($value);
	editstate($Table->table,"sn",$wheresqlarr,$value);//更改状态操作	
	editstate($Table->table,"uptime",$wheresqlarr,$timestamp);//更改更新时间操作
	exit("1");
}else{
	showmsg("未知请求","-1");//出错！
}


?>