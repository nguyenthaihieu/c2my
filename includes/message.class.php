<?php
if (!defined('ZZQSS')){
	die("Access Denied");
}

class MessageClass {
	var $db;
	var $table_sendorder;
	var $tablepre;
	function __construct(){
		//设置全局变量
		global $db,$tablepre;
		$this->db=$db;
		$this->tablepre=$tablepre;
		$this->table_msg=new TableClass("message","mid");
	}
	function MessageClass(){
		$this->__construct();
	}
	//对象获取
	function &init() {
		static $object;
		if(empty($object)) {
			$object = new MessageClass();
		}
		return $object;
	}
	//后台管理员浏览
	function admin_view($id,$otype=1){
		if(GetNum($id)){
			$dataarray = $this->getdata("","linkid = {$id}","mid asc");
			if($otype==1){
				$msgstate = $this->db->result_first("select msgstate from {$this->tablepre}order where oid = {$id}");
			}else{
				$msgstate = $this->db->result_first("select msgstate from {$this->tablepre}sebdorder where sid = {$id}");
			}
			if($msgstate==2){
				editstate($this->table_msg->table,"state","linkid = {$id} and fromtype = 1 and state = 0",1);//更改状态操作
				editstate('order',"msgstate","oid = {$id}",0);//更改状态操作
			}
			return $dataarray;
		}return array();
	}
	//用户浏览执行
	function user_view($id,$otype=1){
		if(GetNum($id)){
			$dataarray = $this->getdata("","linkid = {$id}","mid asc");
			if($otype==1){
				$msgstate = $this->db->result_first("select msgstate from {$this->tablepre}order where oid = {$id}");
			}else{
				$msgstate = $this->db->result_first("select msgstate from {$this->tablepre}sebdorder where sid = {$id}");
			}
			if($msgstate==1){
				editstate($this->table_msg->table,"state","linkid = {$id} and fromtype = 2 and state = 0",1);//更改状态操作
				editstate('order',"msgstate","oid = {$id}",0);//更改状态操作
			}
			return $dataarray;
		}return array();
	}
	//管理员发短信
	function admin_add($id,$msg,$otype=1){
		global $_ADMINUSERS;
		if(!empty($_ADMINUSERS['adminid'])){
			$uid = $_ADMINUSERS['adminid'];
			$uname = $_ADMINUSERS['adminname'];
		}else{
			return '用户未登录';
		}	
		if(GetNum($id)){
			$addarray = array(
				'uid'=>$uid,
				'uname'=>$uname,
				'linkid'=>GetNum($id),
				'otype'=>$otype,
				'msg'=>Char_cv($msg),
				'fromtype'=>2,
				'addtime'=>time()
			);
			$mid = $this->add($addarray);
			if(is_numeric($mid)){
				editstate('order',"msgstate","oid = {$id}",1);//更改状态操作	
				return $mid;
			}else{
				return $mid;
			}
			
		}else return 'ID不能为空';
	}
	//用户发送短信
	function user_add($id,$msg,$otype=1){
		global $_USERS;
		if(!empty($_USERS['uid'])){
			$uid = $_USERS['uid'];
			$uname = $_USERS['uname'];
		}else{
			return '用户未登录';
		}
		if(GetNum($id)){
			$addarray = array(
				'uid'=>$uid,
				'uname'=>$uname,
				'linkid'=>GetNum($id),
				'otype'=>$otype,
				'msg'=>Char_cv($msg),
				'fromtype'=>1,
				'addtime'=>time()
			);
			$mid = $this->add($addarray);
			if(is_numeric($mid)){
				editstate('order',"msgstate","oid = {$id}",2);//更改状态操作	
				return $mid;
			}else{
				return $mid;
			}
		}else return 'ID不能为空';
	}

	//阅读短信息
	function view($mid){
		$mid=GetNum($mid);
		$temparray=$this->getone($mid);
		if (is_array($temparray)) {
			$wheresqlarr="mid=".$mid;
			editstate($this->table_msg->table,"state",$wheresqlarr,1);//更改状态操作			
		}
		return $temparray;
	}
	
	//添加
	function add($dataarray){
		return $this->table_msg->add($dataarray);
	}
	//编辑
	function edit($eid,$dataarray){
		return $this->table_msg->edit($eid,$dataarray);
	}
	//删除
	function del($id){
		global $_USERS;
		$row=$this->getone($id,"isadmin,fromuid,fromuname,touid,touname,type");
		if(is_array($row)){
			if ($row['type']!=1) {
				return "短信类型错误";
			}
			if ($_USERS['uname']!=$row['touname']) {
				return "权限不足";
			}
			if ($row['isadmin']==1) {
				$wheresqlarr="mid=".$id;
				editstate($this->table_msg->table,"writetime",$wheresqlarr,'0');//更改状态操作
			}else {
				return $this->table_msg->del($id);
			}
		}else {
			return "指定运单ID不存在";
		}
	}
	//获取一个
	function getone($gid,$field="*"){
		return $this->table_msg->getone($gid,$field);
	}
	//获取数据
	function getdata($limit="",$where="",$orderby="",$field="*"){
		$temparray=$this->table_msg->getdata($limit,$where,$orderby,$field);
		foreach($temparray as &$value){
			//数据处理
			$value['hasviewname']=$value['state']==0?"未读":"已读";
		}
		return $temparray;		
	}
	//统计
	function getcount($where=""){
		return $this->table_msg->getcount($where);
	}
}
?>