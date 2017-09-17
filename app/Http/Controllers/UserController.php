<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\SyslogModel;
use Datatables;
use Image;

class UserController extends Controller
{

	private $data;
	protected $user_db;
	protected $role_db;
	protected $department_db;
	const PRESIDENT = 1;		// 理事会id

	public function __construct($data = null)
	{
		$this->data = $data;
		$this->user_db = new \App\UserModel();
		$this->role_db = new \App\RoleModel();
		$this->department_db = new \App\DepartmentModel();
	}

	/**
	 * [check 登录检查]
	 * @param  Request $request [description]
	 * @return [type]           [description]
	 */
	public function check(Request $request)
	{

    		$validator = \Validator::make($request->input(),[
    			'user_account' => 'required',
    			'user_password' =>'required'
    			],[
    			'required' => ':attribute为必填项'
    			],[
    			'user_account' => '用户名',
    			'user_password' => '密码'
    			]);

    		if ($validator->fails()) {
    			return redirect()->back()->withErrors($validator)->withInput();
    		}

		$user_account = $request->input('user_account');
		$user_password = $request->input('user_password');

		$user_info = $this->user_db->findUserByAccount($user_account);

		if ($user_info != NULL) {
	    		if(! password_verify($user_password, $user_info->user_password)){
	    			return redirect()->back()->withInput($request->except('user_password'))->withErrors('用户名或密码错误！');
	    		}

	    		return $this->afterLogin($user_info);				
		} else {
			return redirect()->back()->withInput($request->except('user_password'))->withErrors('此用户名不存在！');
		}
	}

	/**
	 * [user_profile 个人信息页面]
	 * @return [type] [description]
	 */
	public function user_profile()
	{
		$this->data['user_log'] = SyslogModel::findLogByUserId(session()->get('user_info')->user_id);
		return view('user.profile', $this->data);
	}

	/**
	 * [user_password 修改密码页面]
	 * @return [type] [description]
	 */
	public function user_password()
	{
		return view('user.password');
	}

	/**
	 * [editPassword 修改密码检查页面]
	 * @param  Request $request [description]
	 * @return [type]           [description]
	 */
	public function editPassword(Request $request)
	{
		$validator = \Validator::make($request->input(),[
    			'user_origin_pw' => 'required',
    			'user_new_pw' =>'required|confirmed',
    			'user_new_pw_confirmation' => 'required'
    			],[
    			'required' => ':attribute为必填项',
    			'confirmed' => '确认密码与:attribute不一致'
    			],[
    			'user_origin_pw' => '原密码',
    			'user_new_pw' => '新密码',
    			'user_new_pw_confirmation' => '确认密码'
    			]);
       		
       		if ($validator->fails()) {
    			return redirect()->back()->withErrors($validator)->withInput();
    		}

    		$id = $request->input('id');

    		if ($info = $this->user_db->findUserById($id)) {
    			$origin_pw = $request->input('user_origin_pw');
    			if (! password_verify($origin_pw, $info->user_password)) {
    				return redirect()->back()->withErrors("原密码输入有误")->withInput();
    			}
    		} else {
    			return redirect()->back()->withErrors('系统错误：找不到此人，请及时联系管理员');
    		}

    		$data['user_password'] = password_hash($request->input('user_new_pw'), PASSWORD_DEFAULT);

    		if ($this->user_db->updateUserInfo($id, $data)) {
    			SyslogModel::syslog(SyslogModel::LOG_EDIT, "修改密码", $id);
    			return redirect(url('user/profile'));
    		} else {
    			return redirect()->back()->withErrors('系统错误：修改失败，请及时联系管理员');
    		}    			
	}

	/**
	 * [manage_index 人员管理页面]
	 * @return [type] [description]
	 */
	public function manage_index()
	{
		// $this->data['all_user_info'] = $this->user_db->getAllUserInfo();
		$this->data['all_role_info'] = $this->role_db->getAllRoleInfo();
		$this->data['all_department_info'] = $this->department_db->getAllDepartmentInfo();
		return view('manage.user', $this->data);
	}

	/**
	 * [manage_user_ajax 人员管理页面--通过ajax获取人员信息(datatables插件)]
	 * @return [type] [description]
	 */
	public function manage_user_ajax()
	{
		$role_priority = session()->get('user_info')->role_priority;
		$user_department_id = session()->get('user_info')->user_department_id;
		return Datatables::of($this->user_db->getAllUserInfoQuery())
	            		->addColumn('operations', '
	            			@if(('. $role_priority .'< $role_priority) && (' . $user_department_id . ' == ' . self::PRESIDENT . ' || ' . $user_department_id . ' == $user_department_id))
	            			                  	<a title="修改信息" href="#" onclick="edit({{$user_id}})"><i class="fa fa-edit"></i>修改</a>
			                        	&nbsp;&nbsp;&nbsp;&nbsp;
			                        	<a title="删除" href="{{ url("manage/user/delete/$user_id") }}" onclick="javascript:return window.confirm(\'确认删除吗？\')"><i class="fa fa-remove"></i>删除</a>
	            			@endif
	            			')
	            		->make(true);
	}

	/**
	 * [add 人员管理页面--添加人员检查]
	 * @param Request $request [description]
	 */
	public function add(Request $request)
	{
    		$validator = \Validator::make($request->input(),[
    			'user_account' => 'required',
    			'user_name' => 'required',
    			],[
    			'required' => ':attribute为必填项'
    			],[
    			'user_account' => '用户名',
    			'user_name' => '姓名',
    			]);

    		if ($validator->fails()) {
    			return redirect()->back()->withErrors($validator)->withInput();
    		}		

		$user_info['user_account'] = $request->input('user_account');
		$user_info['user_password'] = password_hash($request->input('user_account'), PASSWORD_DEFAULT);
		$user_info['user_name'] = $request->input('user_name');
		$user_info['user_role_id'] = $request->input('user_role_id');
		$user_info['user_avatar_name'] = $this->generateAvatar();
		$user_info['user_department_id'] = $request->input('user_department_id');
		$user_info['user_create_time'] = time();

		if($this->user_db->findUserByAccount($user_info['user_account'])){
			return redirect()->back()->withErrors('添加人员失败：用户名重复')->withInput();
		}

		if(! $this->user_db->insertUserInfo($user_info)) {
			return redirect()->back()->withErrors('Insert Error')->withInput();
		} else {
			SyslogModel::syslog(SyslogModel::LOG_ADD, "新增用户:用户名=" . $user_info['user_account'], session()->get('user_info')->user_id);
			return redirect()->back();
		}

	}

	/**
	 * [getInfoById 获取个人信息]
	 * @param  [type] $user_id [description]
	 * @return [type]          [description]
	 */
	public function getInfoById($user_id)
	{
		$res = $this->user_db->findUserById($user_id);
		return json_encode($res);
	}

	/**
	 * [editInfoById 人员管理页面--编辑人员信息检查]
	 * @param  Request $request [description]
	 * @param  [type]  $user_id [description]
	 * @return [type]           [description]
	 */
	public function editInfoById(Request $request, $user_id)
	{
    		$validator = \Validator::make($request->input(),[
    			'user_account' => 'required',
    			'user_name' => 'required',
    			],[
    			'required' => ':attribute为必填项'
    			],[
    			'user_account' => '用户名',
    			'user_name' => '姓名',
    			]);

    		if ($validator->fails()) {
    			return redirect()->back()->withErrors($validator)->withInput();
    		}	

    		$user_info['user_account'] = $request->input('user_account');
		$user_info['user_name'] = $request->input('user_name');
		$user_info['user_role_id'] = $request->input('user_role_id');
		$user_info['user_update_time'] = time();
		$user_info['user_department_id'] = $request->input('user_department_id');

		if(! $this->user_db->updateUserInfo($user_id, $user_info)){
			return redirect()->back()->withErrors('update Error')->withInput();
		}else{
			SyslogModel::syslog(SyslogModel::LOG_EDIT, "修改用户:用户id=$user_id", session()->get('user_info')->user_id);
			return redirect()->back();
		}
	}

	/**
	 * [deleteUserById 人员管理页面--删除人员]
	 * @param  [type] $user_id [description]
	 * @return [type]          [description]
	 */
	public function deleteUserById($user_id)
	{
		if(! $this->user_db->deleteUserById($user_id)){
			return redirect()->back()->withErrors('delete Error');
		}else{
			SyslogModel::syslog(SyslogModel::LOG_DELETE, "删除用户:用户id=$user_id", session()->get('user_info')->user_id);
			return redirect()->back();
		}
	}

	/**
	 * [editAvatar 个人信息页面--修改头像检查]
	 * @param  [type] $avatar_code [description]
	 * @return [type]              [description]
	 */
	public function editAvatar(Request $request)
	{
		$avatar_code = $request->input('avatar_code');
		$user_id = session()->get('user_info')->user_id;

		$img = Image::make($avatar_code);
		if($img == null){
			return redirect()->back()->withErrors('图片解码失败');
		}

		$name = md5(time() . mt_rand() . $user_id) . ".jpg";
		$img->save($_SERVER['DOCUMENT_ROOT'] . '/avatar/' . $name);

		if($img == null){
			return redirect()->back()->withErrors('图片保存失败');
		}

		if(! $this->user_db->updateUserInfo($user_id, ['user_avatar_name' => $name])){
			return redirect()->back()->withErrors('图片信息存入数据库失败');
		}else{
			SyslogModel::syslog(SyslogModel::LOG_EDIT, "修改个人头像", $user_id);
			// 更新session，删除旧头像
			$user_info = session()->get('user_info');
			if($user_info->user_avatar_name != "img.jpg")
				unlink($_SERVER['DOCUMENT_ROOT'] . '/avatar/' . $user_info->user_avatar_name);
			$user_info->user_avatar_name = $name;
			session()->put('user_info', $user_info);
			return redirect('user/profile');
		}
	}

	/**
	 * [all description]
	 * @return [type] [description]
	 */
	public function all()
	{	
		$this->data['all_role_info'] = $this->role_db->getAllRoleInfo();
		$this->data['all_department_info'] = $this->department_db->getAllDepartmentInfo();
		return view('manage.super.user',$this->data);
	}

	public function super_userinfo_ajax()
	{
		return Datatables::of($this->user_db->getAllUserInfoQuery_super())
	            		->addColumn('operations', '
	            			                  	<a title="修改信息" href="#" onclick="superedit({{$user_id}})"><i class="fa fa-edit"></i>修改</a>
			                        	&nbsp;&nbsp;&nbsp;&nbsp;
			                        	<a title="密码重置" href="{{ url("super/user/reset_password/$user_id") }}" onclick="javascript:return window.confirm(\'确认重置密码吗？\')"><i class="fa fa-key"></i>密码重置</a>
			                        	&nbsp;&nbsp;&nbsp;&nbsp;
			                        	<a title="删除" href="{{ url("manage/user/delete/$user_id") }}" onclick="javascript:return window.confirm(\'确认删除吗？\')"><i class="fa fa-remove"></i>删除</a>
	            			')
	            		->editColumn('user_is_visible', '{{$user_is_visible?"否":"是"}}')
	            		->make(true);
	}

		/**
	 * [superedit 人员管理页面--编辑人员信息检查]
	 * @param  Request $request [description]
	 * @param  [type]  $user_id [description]
	 * @return [type]           [description]
	 */
	public function superedit(Request $request, $user_id)
	{
		$user_info['user_is_visible'] = $request->input('user_is_visible');
		//var_dump($user_info);die;
		if(! $this->user_db->updateUserInfo($user_id, $user_info)){
			return redirect()->back()->withErrors('update Error')->withInput();
		}else{
			SyslogModel::syslog(SyslogModel::LOG_SUPER, "修改用户:用户id=$user_id", session()->get('user_info')->user_id);
			return redirect()->back();
		}
	}

	public function resetPassword($user_id)
	{
		$user_info = $this->user_db->findUserById($user_id);

		$user_account = $user_info->user_account;
		$new_password = password_hash($user_account, PASSWORD_DEFAULT);

		$data['user_password'] = $new_password;

		if (! $this->user_db->updateUserInfo($user_id, $data)) {
			return redirect()->back()->withErrors('reset password Error')->withInput();
		} else {
			SyslogModel::syslog(SyslogModel::LOG_SUPER, "用户密码重置:用户id=$user_id", session()->get('user_info')->user_id);
			return redirect()->back();
		}

	}

	/**
	 * [afterLogin 成功登录后，保存session等]
	 * @param  [type] $user_info [description]
	 * @return [type]            [description]
	 */
    	private function afterLogin($user_info)
    	{
    		$user_update_info['user_latest_login_time']= time();
    		$user_update_info['user_latest_login_ip'] = $this->getIP();
    		if(isset($user_info->user_password))
    		{
    			unset($user_info->user_password);
    		}
    		if($this->user_db->updateUserInfo($user_info->user_id, $user_update_info)){
    			SyslogModel::syslog(SyslogModel::LOG_LOGIN, "登录系统,ip地址: " . $user_update_info['user_latest_login_ip'], $user_info->user_id);
    			session()->put('isLogin', 1);
    			session()->put('user_info', $user_info);
    			return redirect('/manage/user');
    		} else {
    			return redirect()->back()->withErrors('系统错误：登录失败，请及时联系管理员');
    		}
    	}

    	/**
    	 * [getIP 获取客户端ip地址]
    	 * @return [type] [description]
    	 */
    	private function getIP(){ 

		if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown")) {
			$ip = getenv("HTTP_CLIENT_IP"); 
		} else if (getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"), "unknown")){
			$ip = getenv("HTTP_X_FORWARDED_FOR"); 
		} else if (getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown")) {
			$ip = getenv("REMOTE_ADDR"); 
		} else if (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], "unknown")){ 
			$ip = $_SERVER['REMOTE_ADDR']; 
		} else { 
			$ip = "unknown";
		}

		return $ip ; 
	}

	/**
	 * [generateAvatar 随机生成头像（仿github）]
	 * @return [string] [avatar save name]
	 */
	private function generateAvatar()
	{
		$width = 200;
		$height = 200;
		$img = Image::canvas($width, $height, '#ccc');

		$real_width = 160;
		$real_height = 160;

		$row = 5;
		$col = 5;

		$left_start = ($width - $real_width) / 2;
		$top_start = ($height - $real_height) / 2;

		$element_width = $real_width / $col;
		$element_height = $real_height / $row;

		$GLOBALS['r'] = mt_rand(0, 255);
		$GLOBALS['g'] = mt_rand(0, 255);
		$GLOBALS['b'] = mt_rand(0, 255);

		for($i = 0; $i < $row; $i++){
			for($j = 0; $j < $col / 2.0; $j++){
				if(mt_rand() % 3 != 0)
					continue;				
				$img->rectangle($left_start + $j * $element_width, $top_start + $i * $element_height, $left_start + ($j+1) * $element_width - 1, $top_start + ($i+1) * $element_height - 1, function ($draw) {
					$r = $GLOBALS['r'];
					$g = $GLOBALS['g'];
					$b = $GLOBALS['b'];
					$draw->background("rgba($r, $g, $b, 1)");
				});
				if($j * 2 < $col){
					$img->rectangle($width - ($left_start + $j * $element_width), $top_start + $i * $element_height, $left_start + ($j+1) * $element_width - 1, $top_start + ($i+1) * $element_height - 1, function ($draw) {
						$r = $GLOBALS['r'];
						$g = $GLOBALS['g'];
						$b = $GLOBALS['b'];
						$draw->background("rgba($r, $g, $b, 1)");
					});
				}
			}
		}

		$name = md5(time() . mt_rand() . session()->get('user_info')->user_id) . ".jpg";
		$img->save($_SERVER['DOCUMENT_ROOT'] . '/avatar/' . $name);

		return $name;
	}
}
