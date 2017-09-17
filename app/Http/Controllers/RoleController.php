<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Datatables;
use App\SyslogModel;

class RoleController extends Controller
{

	protected $role_db;

	public function __construct()
	{
		$this->role_db = new \App\RoleModel();
	}

	public function all()
	{
		return view('manage.super.role');	
	}

	public function super_roleinfo_ajax()
	{
		return Datatables::of($this->role_db->getAllRoleInfoQuery())
	            		->addColumn('operations', '
	            			        	<a title="修改信息" href="#" onclick="edit({{$id}})"><i class="fa fa-edit"></i>修改</a>
			                        	&nbsp;&nbsp;&nbsp;&nbsp;
			                        	<a title="删除" href="{{ url("super/role/delete/$id") }}" onclick="javascript:return window.confirm(\'确认删除吗？\')"><i class="fa fa-remove"></i>删除</a>
	            			')
	            		->make(true);
	}

	public function getInfoById($role_id)
	{
		$data = $this->role_db->getInfoById($role_id);
		return json_encode($data);
	}

	public function add(Request $request)
	{
		$data['role_name'] = $request->input('role_name');
		$data['role_priority'] = $request->input('role_priority');
		$data['role_create_time'] = time();

		if(! $this->role_db->insertRoleInfo($data)) {
			return redirect()->back()->withErrors('Insert Error')->withInput();
		} else {
			SyslogModel::syslog(SyslogModel::LOG_SUPER, "新增角色:角色名=" . $data['role_name'], session()->get('user_info')->user_id);
			return redirect()->back();
		}		
	}

	public function editInfoById(Request $request, $id)
	{
		$data['role_name'] = $request->input('role_name');
		$data['role_priority'] = $request->input('role_priority');
		$data['role_update_time'] = time();

		if(! $this->role_db->updateRoleInfo($id, $data)){
			return redirect()->back()->withErrors('update Error');
		}else{
			SyslogModel::syslog(SyslogModel::LOG_SUPER, "修改角色:角色id=$id", session()->get('user_info')->user_id);
			return redirect()->back();
		}	
	}

	public function deleteRoleById($id)
	{
		if (! $this->role_db->deleteRoleById($id)) {
			return redirect()->back()->withErrors('delete Error');
		} else {
			SyslogModel::syslog(SyslogModel::LOG_SUPER, "删除角色:角色id=$id", session()->get('user_info')->user_id);
			return redirect()->back();
		}
	}
}
