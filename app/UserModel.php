<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserModel extends Model
{
	public function findUserByAccount($user_account)
	{
		return \DB::table('user')
		->join('role', 'role.id', '=', 'user.user_role_id')
		->join('department', 'department.id', '=', 'user.user_department_id')
		->select('*', 'user.id as user_id')
		->where('user_account', $user_account)
		->whereNull('user_delete_time')
		->first();
	}

	public function findUserById($user_id)
	{
		return \DB::table('user')
		->join('role', 'role.id', '=', 'user.user_role_id')
		->join('department', 'department.id', '=', 'user.user_department_id')
		->select('*', 'user.id as user_id')
		->where('user.id', $user_id)
		->whereNull('user_delete_time')
		->first();
	}

	public function getUserById($user_id)
	{
		return \DB::table('user')
		->select('*')
		->where('user.id', $user_id)
		->whereNull('user_delete_time')
		->first();
	}

	public function updateUserInfo($id, $data)
	{
		$data = HelperModel::changeObjtoArr($data);
		$data = HelperModel::removeElement($data, 'id');

		return \DB::table('user')
		->where('id' , '=', $id)
		->update($data);
	}

	public function insertUserInfo($data)
	{
		return \DB::table('user')
		->insert($data);
	}

	public function deleteUserById($user_id)
	{
		return \DB::table('user')
		->where('id' ,'=', $user_id)
		->update(['user_delete_time' => time()]);
	}

	public function getAllUserInfoQuery_super() //超级管理员可见
	{
		return \DB::table('user')
		->join('role', 'role.id', '=', 'user.user_role_id')
		->join('department', 'department.id', '=', 'user.user_department_id')
		->select('*', 'user.id as user_id')
		->whereNull('user_delete_time');
	}

	public function getAllUserInfo()
	{
		return \DB::table('user')
		->join('role', 'role.id', '=', 'user.user_role_id')
		->join('department', 'department.id', '=', 'user.user_department_id')
		->select('*', 'user.id as user_id')
		->whereNull('user_delete_time')
		->where('user_is_visible', '1')		//对大众可见
		->get();
	}

	public function getAllUserInfoQuery()
	{
		return \DB::table('user')
		->join('role', 'role.id', '=', 'user.user_role_id')
		->join('department', 'department.id', '=', 'user.user_department_id')
		->select('*', 'user.id as user_id')
		->whereNull('user_delete_time')
		->where('user_is_visible', '1');		//对大众可见
	}

	
}
