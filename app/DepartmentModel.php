<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DepartmentModel extends Model
{

	public function getInfoById($id)
	{
		return \DB::table('department')
		->select('*')
		->where('id', '=', $id)
		->first();
	}

	public function getAllDepartmentInfo()
	{
		return \DB::table('department')
		->select('*')
		->whereNull('department_delete_time')
		->get();
	}

	public function getAllDepartmentInfoQuery()
	{
		return \DB::table('department')
		->select('*')
		->whereNull('department_delete_time');
	}

	public function deleteDepartmentById($id)
	{
		return \DB::table('department')
		->where('id', '=', $id)
		->update(['department_delete_time' =>time()]);
	}

	public function insertDepartmentInfo($data)
	{
		return \DB::table('department')
		->insert($data);
	}

	public function updateDepartmentInfo($id, $data)
	{
		$data = HelperModel::changeObjtoArr($data);
		$data = HelperModel::removeElement($data, 'id');

		return \DB::table('department')
		->where('id', '=', $id)
		->update($data);
	}
}
