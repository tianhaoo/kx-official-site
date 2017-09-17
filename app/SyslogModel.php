<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SyslogModel extends Model
{

	const LOG_LOGIN 	= 1;
	const LOG_EDIT 	= 2;
	const LOG_ADD		= 3;
	const LOG_DELETE	= 4;
	const LOG_SUPER	= 5;

	//
	//**syslog等级：
	//**1--登录 LOG_LOGIN
	//**2--改 LOG_EDIT
	//**3--增 LOG_ADD
	//**4--删 LOG_DELETE
	//**5--超管的增删改 LOG_SUPER
	//等级越高，对系统危险系数越高，影响越大
	//
	static public function syslog($level, $description, $user_id)
	{
		$data['syslog_level']  = $level;
		$data['syslog_description'] = $description;
		$data['syslog_user_id'] = $user_id;
		$data['syslog_time'] = time();

		return self::insertSyslog($data);
	}

	static public function insertSyslog($data)
	{
		return \DB::table('syslog')
		->insert($data);
	}

	static public function findLogByUserId($user_id, $num = 20)
	{
		return \DB::table('syslog')
		->select('*')
		->where('syslog_user_id', '=', $user_id)
		->orderBy('syslog_time', 'desc')
		->skip(0)
		->take($num)
		->get();
	}

	public function getAllSyslogInfoQuery()
	{
		return \DB::table('syslog')
		->join('user', 'user.id', '=', 'syslog_user_id')
		->select('*')
		->orderBy('syslog_time', 'desc');
	}
}
