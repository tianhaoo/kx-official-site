<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ActivityModel extends Model
{

	public function getAllActivityInfo()
	{
		return \DB::table('activity')
		->join('department', 'activity_department_id' , '=', 'department.id')
		->select('*', 'activity.id as activity_id')
		->whereNull('activity_delete_time')
		->get();
	}

	public function getActivityInfoByDepartmentId($department_id)
	{
		return \DB::table('activity')
		->join('department', 'activity_department_id' , '=', 'department.id')
		->select('*', 'activity.id as activity_id')
		->whereNull('activity_delete_time')
		->where('activity_department_id', '=', $department_id)
		->get();
	}

	public function getActivityInfoById($id)
	{
		return \DB::table('activity')
		->join('department', 'activity_department_id' , '=', 'department.id')
		->join('user', 'activity_create_user_id', '=', 'user.id')
		->select('*', 'activity.id as activity_id')
		->whereNull('activity_delete_time')
		->where('activity.id', '=', $id)
		->first();
	}

	public function getAllActivityInfoQuery()
	{
		return \DB::table('activity')
		->join('department', 'activity_department_id' , '=', 'department.id')
		->join('user','activity_create_user_id' , '=', 'user.id')
		->select('*', 'activity.id as activity_id')
		->whereNull('activity_delete_time');
	}

	public function deleteActivityById($activity_id)
	{
		return \DB::table('activity')
		->where('id', '=', $activity_id)
		->update(['activity_delete_time' => time()]);
	}

	public function insertActivityInfo($data)
	{
		return \DB::table('activity')
		->insert($data);
	}

	public function updateActivityById($id, $data)
	{
		$data = HelperModel::changeObjtoArr($data);
		$data = HelperModel::removeElement($data, 'id');

		return \DB::table('activity')
		->where('id' , '=', $id)
		->update($data);
	}
}
