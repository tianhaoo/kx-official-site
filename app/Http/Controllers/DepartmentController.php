<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Datatables;
use App\SyslogModel;

class DepartmentController extends Controller
{

	protected $department_db;

	public function __construct()
	{
		$this->department_db = new \App\DepartmentModel();
	}

	public function all()
	{
		return view('manage.super.department');	
	}

	public function super_departmentinfo_ajax()
	{
		return Datatables::of($this->department_db->getAllDepartmentInfoQuery())
	            		->addColumn('operations', '
	            			        	<a title="修改信息" href="#" onclick="edit({{$id}})"><i class="fa fa-edit"></i>修改</a>
			                        	&nbsp;&nbsp;&nbsp;&nbsp;
			                        	<a title="删除" href="{{ url("super/department/delete/$id") }}" onclick="javascript:return window.confirm(\'确认删除吗？\')"><i class="fa fa-remove"></i>删除</a>
	            			')
	            		->make(true);
	}

	public function getInfoById($department_id)
	{
		$data = $this->department_db->getInfoById($department_id);
		return json_encode($data);
	}

	public function add(Request $request)
	{
		$data['department_name'] = $request->input('department_name');
		$data['department_create_time'] = time();

		if(! $this->department_db->insertDepartmentInfo($data)) {
			return redirect()->back()->withErrors('Insert Error')->withInput();
		} else {
			SyslogModel::syslog(SyslogModel::LOG_SUPER, "新增部门:部门名=" . $data['department_name'], session()->get('user_info')->user_id);
			return redirect()->back();
		}		
	}

	public function editInfoById(Request $request, $id)
	{
		$data['department_name'] = $request->input('department_name');
		$data['department_update_time'] = time();

		if(! $this->department_db->updateDepartmentInfo($id, $data)){
			return redirect()->back()->withErrors('update Error');
		}else{
			SyslogModel::syslog(SyslogModel::LOG_SUPER, "修改部门:部门id=$id", session()->get('user_info')->user_id);
			return redirect()->back();
		}	
	}

	public function deleteDepartmentById($id)
	{
		if (! $this->department_db->deleteDepartmentById($id)) {
			return redirect()->back()->withErrors('delete Error');
		} else {
			SyslogModel::syslog(SyslogModel::LOG_SUPER, "删除部门:部门id=$id", session()->get('user_info')->user_id);
			return redirect()->back();
		}
	}
}
