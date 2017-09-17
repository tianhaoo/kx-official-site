<?php

/*
|--------------------------------------------------------------------------
| Routes File
|--------------------------------------------------------------------------
|
| Here is where you will register all of the routes in an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/



/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/

Route::group(['middleware' => ['web']], function () {
	
	Route::get('/', 'WelcomeController@index');
	Route::get('user', 'WelcomeController@user');
	Route::get('login', 'WelcomeController@login');
	Route::post('login', 'UserController@check');
	Route::post('email', 'WelcomeController@email');

	Route::group(['middleware' => ['islogin']], function(){

		// Welcome
		Route::get('manage', 'WelcomeController@manage_index');
		Route::get('logout', 'WelcomeController@logout');
		
		// Activity
		Route::get('activity/all', 'WelcomeController@activity_all');
		Route::get('activity/activity', 'ActivityController@manage_index');
		Route::any('activity/get_info_by_id/{activity_id}', ['uses'=>'ActivityController@getInfoById']);
		Route::any('activity/edit/{activity_id}', 'ActivityController@editInfoById');

		Route::get('activity/self', 'WelcomeController@activity_self');
		Route::get('activity/show/{activity_id}', 'ActivityController@show');

		// User
		Route::get('user/get_info_by_id/{user_id}', 'UserController@getInfoById');
		Route::get('user/avatar/edit', function(){
			return view('user/avatar');
		});
		Route::post('user/avatar/edit', 'UserController@editAvatar');
		Route::get('user/profile', 'WelcomeController@user_profile');
		Route::get('user/password', 'WelcomeController@user_password');
		Route::post('user/password/edit', 'UserController@editPassword');

		// Department
		Route::get('department/get_info_by_id/{department_id}', 'DepartmentController@getInfoById');

		// Role
		Route::get('role/get_info_by_id/{role_id}', 'RoleController@getInfoById');

		Route::group(['middleware' => ['isadmin']], function(){
			// Manage
			Route::get('manage/user', 'WelcomeController@manage_user');
			Route::post('manage/user/add', 'UserController@add');
			Route::post('manage/user/edit/{user_id}', 'UserController@editInfoById');
			Route::get('manage/user/delete/{user_id}', 'UserController@deleteUserById');
			Route::any('manage/user/userinfo_ajax', 'UserController@manage_user_ajax');

			Route::get('manage/activity', 'WelcomeController@manage_activity');
			Route::any('manage/activity/activityinfo_ajax', 'ActivityController@manage_activity_ajax');
			Route::get('manage/activity/delete/{activity_id}', 'ActivityController@deleteActivityById');
			Route::post('manage/activity/add', 'ActivityController@add');
			Route::post('manage/activity/edit/{user_id}', 'ActivityController@editInfoById');
		});

		Route::group(['middleware' => ['issuper']], function(){
			// Super Manage
			Route::get('super/user', 'UserController@all');
			Route::any('super/user/userinfo_ajax', 'UserController@super_userinfo_ajax');
			Route::post('super/user/edit/{user_id}', 'UserController@superedit');
			Route::get('super/user/reset_password/{user_id}', 'UserController@resetPassword');

			Route::get('super/department', 'DepartmentController@all');
			Route::any('super/department/departmentinfo_ajax', 'DepartmentController@super_departmentinfo_ajax');
			Route::get('super/department/delete/{id}', 'DepartmentController@deleteDepartmentById');
			Route::post('super/department/add', 'DepartmentController@add');
			Route::post('super/department/edit/{id}', 'DepartmentController@editInfoById');

			Route::get('super/role', 'RoleController@all');
			Route::any('super/role/roleinfo_ajax', 'RoleController@super_roleinfo_ajax');
			Route::get('super/role/delete/{id}', 'RoleController@deleteRoleById');
			Route::post('super/role/add', 'RoleController@add');
			Route::post('super/role/edit/{id}', 'RoleController@editInfoById');

			Route::get('super/syslog', 'SyslogController@all');
			Route::any('super/syslog/sysloginfo_ajax', 'SyslogController@super_sysloginfo_ajax');
		});
	});

});
