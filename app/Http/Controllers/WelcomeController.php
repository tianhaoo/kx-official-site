<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class WelcomeController extends Controller
{
	public function index()
	{
		return view('welcome');
	}

	public function user()
	{
		return view('ex_welcome');
	}

	public function login()
	{
		return view('login');
	}

	public function logout()
	{
		session()->flush();
		return redirect('/');
	}

	public function email()
	{
		return redirect('/');
	}

	/**
	 * [manage_index 登录后台后首页]
	 * @return [type] [description]
	 */
	public function manage_index()
	{
		return $this->user_profile();
	}

	public function manage_user()
	{
		$user = new UserController();
		return $user->manage_index();
	}

	public function user_profile()
	{
		$user = new UserController();
		return $user->user_profile();
	}

	public function user_password()
	{
		$user = new UserController();
		return $user->user_password();
	}

	public function manage_activity()
	{
		$activity = new ActivityController();
		return $activity->manage_index();
	}

	public function activity_all()
	{
		$activity = new ActivityController();
		return $activity->activity_all(0);
	}

	public function activity_self()
	{
		$activity = new ActivityController();
		return $activity->activity_all(1);
	}
}
