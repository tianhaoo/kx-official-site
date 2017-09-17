<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * 辅助函数定义
 */
class HelperModel extends Model
{
	/**
	 * [removeElement 移除数组或对象的某一个元素]
	 * @param  [type] $obj         [description]
	 * @param  [type] $ElementName [description]
	 * @return [type]              [description]
	 */
	public static function removeElement($obj, $ElementName)
	{
		if(is_array($obj)){
			if(isset($obj[$ElementName])){
				unset($obj[$ElementName]);
			}
		}elseif(is_object($obj)){
			if(isset($obj->$ElementName)){
				unset($obj->$ElementName);
			}
		}else{
			return null;
		}

		return $obj;
	}

	/**
	 * [changeObjtoArr 把对象转成数组]
	 * @param  [type] $obj [description]
	 * @return [type]      [description]
	 */
	public static  function changeObjtoArr($obj)
	{
		if(is_array($obj)) {
			return $obj;
		}

		if(is_object($obj)){
			$res =  array();
			foreach ($obj as $key => $value) {
				$res[$key] = $value;
			}
			return $res;
		}

		return array();
	}
}
