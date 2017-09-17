<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Datatables;
use App\SyslogModel;

class ActivityController extends Controller
{
	private $data;
	protected $activity_db;
	const PRIORITY = 5;		// 部长的优先级
	const PRESIDENT = 1;		// 理事会id

	public function __construct()
	{
		$this->activity_db = new \App\ActivityModel();
		$this->department_db = new \App\DepartmentModel();
	}

	public function activity_all($flag = 0)
	{
		if($flag == 0){
			$this->data['title'] = '科协活动';
			$all = $this->activity_db->getAllActivityInfo();
		}elseif($flag == 1){
			$this->data['title'] = '部门活动';
			$department_id = session()->get('user_info')->user_department_id;
			$all = $this->activity_db->getActivityInfoByDepartmentId($department_id);
		}
		
		$info = null;
		foreach ($all as $each) {
			$info[] = array(
				'id' => $each->activity_id,
				'title' => $each->department_name . "：" . $each->activity_name,
				'start' => date('Y-m-d H:i', $each->activity_start_time),
				'end' => date('Y-m-d H:i', $each->activity_end_time),
				'url' => url('activity/show/' . $each->activity_id)
				);
		}
		$this->data['activity_info'] = json_encode($info);
		
		return view('activity/all', $this->data);
	}

	public function show($activity_id)
	{
		$this->data['activity_info'] = $this->activity_db->getActivityInfoById($activity_id);
		return view('activity.show', $this->data);
	}

	public function add(Request $request)
	{
    		$validator = \Validator::make($request->input(),[
    			'activity_name' => 'required',
    			'activity_department_id' => 'required',
    			],[
    			'required' => ':attribute为必填项'
    			],[
    			'activity_name' => '活动名称',
    			'activity_department_id' => '活动负责部门',
    			]);

    		if ($validator->fails()) {
    			return redirect()->back()->withErrors($validator)->withInput();
    		}

		$activity_info['activity_name'] = $request->input('activity_name');
		$activity_info['activity_content'] = $request->input('activity_content');
		$activity_info['activity_start_time'] = strtotime($request->input('activity_start_time'));
		$activity_info['activity_create_user_id'] = session()->get('user_info')->user_id;
		$activity_info['activity_department_id'] = $request->input('activity_department_id');
		$activity_info['activity_create_time'] = time();

		if(! $this->activity_db->insertActivityInfo($activity_info)) {
			return redirect()->back()->withErrors('Insert Error')->withInput();
		} else {
			SyslogModel::syslog(SyslogModel::LOG_ADD, "新增活动:活动名=" . $activity_info['activity_name'], session()->get('user_info')->user_id);
			return redirect()->back();
		}		
	}


	public function getInfoById($activity_id)
	{
		$res = $this->activity_db->getActivityInfoById($activity_id);
		$res->activity_start_time = date('Y/m/d', $res->activity_start_time);
		echo json_encode($res);
	}

	public function editInfoById(Request $request, $id)
	{
		$ac_info['activity_name'] = $request->input('activity_name');
		$ac_info['activity_content'] = $request->input('activity_content');
		$ac_info['activity_start_time'] = strtotime($request->input('activity_start_time'));
		$ac_info['activity_create_user_id'] = session()->get('user_info')->user_id;
		$ac_info['activity_department_id'] = $request->input('activity_department_id');
		$ac_info['activity_update_time'] = time();
		
		if(! $this->activity_db->updateActivityById($id, $ac_info)){
			return redirect()->back()->withErrors('修改失败');
		}else{
			SyslogModel::syslog(SyslogModel::LOG_EDIT, "修改活动:活动id=" . $id, session()->get('user_info')->user_id);
			return redirect('activity/activity');
		}			
	}

	public function manage_index()
	{
		//$this->data['all_activity_info'] = $this->activity_db->getAllActivityInfo();
		$this->data['all_department_info'] = $this->department_db->getAllDepartmentInfo();
		return view('manage.activity', $this->data);
	}

	public function manage_activity_ajax()
	{
		$role_priority = session()->get('user_info')->role_priority;
		$user_department_id = session()->get('user_info')->user_department_id;
		return Datatables::of($this->activity_db->getAllActivityInfoQuery())
	            		->addColumn('operations', '
	            			@if(('. $role_priority .'<= ' . self::PRIORITY . ') && (' . $user_department_id . ' == ' . self::PRESIDENT . ' || ' . $user_department_id . ' == $activity_department_id))
	            			                  	<a title="修改信息" href="#" onclick="edit({{$activity_id}})"><i class="fa fa-edit"></i>修改</a>
			                        	&nbsp;&nbsp;&nbsp;&nbsp;
			                        	<a title="删除" href="{{ url("manage/activity/delete/$activity_id") }}" onclick="javascript:return window.confirm(\'确认删除吗？\')"><i class="fa fa-remove"></i>删除</a>
	            			@endif
	            			')
	            		->editColumn('activity_start_time', '{{date("Y/m/d", $activity_start_time)}}')
	            		->make(true);
	}

	public function deleteActivityById($activity_id)
	{
		if(! $this->activity_db->deleteActivityById($activity_id)){
			return redirect()->back()->withErrors('delete Error');
		}else{
			SyslogModel::syslog(SyslogModel::LOG_DELETE, "删除活动:活动id=$activity_id", session()->get('user_info')->user_id);
			return redirect()->back();
		}
	}
}
