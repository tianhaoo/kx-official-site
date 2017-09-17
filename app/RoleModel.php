<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RoleModel extends Model
{

	public function getInfoById($id)
	{
		return \DB::table('role')
		->select('*')
		->where('id', '=', $id)
		->first();
	}

	public function getAllRoleInfo()
	{
		return \DB::table('role')
		->select('*')
		->whereNull('role_delete_time')
		->get();
	}

	public function getAllRoleInfoQuery()
	{
		return \DB::table('role')
		->select('*')
		->whereNull('role_delete_time');
	}

	public function deleteRoleById($id)
	{
		return \DB::table('role')
		->where('id', '=', $id)
		->update(['role_delete_time' =>time()]);
	}

	public function insertRoleInfo($data)
	{
		return \DB::table('role')
		->insert($data);
	}

	public function updateRoleInfo($id, $data)
	{
		$data = HelperModel::changeObjtoArr($data);
		$data = HelperModel::removeElement($data, 'id');

		return \DB::table('role')
		->where('id', '=', $id)
		->update($data);
	}
}
