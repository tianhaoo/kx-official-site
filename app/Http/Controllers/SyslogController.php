<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use Datatables;

class SyslogController extends Controller
{
	protected $syslog_db;

	public function __construct()
	{
		$this->syslog_db = new \App\SyslogModel;
	}

	public function all()
	{
		return view('manage.super.syslog');
	}

	public function super_sysloginfo_ajax()
	{
		return Datatables::of($this->syslog_db->getAllSyslogInfoQuery())
	            		->editColumn('syslog_time', '{{date("Y/m/d H:i:s", $syslog_time)}}')
	            		->make(true);
	}
}
