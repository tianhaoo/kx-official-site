<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Meta, title, CSS, favicons, etc. -->
	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="csrf-token" content="{{ csrf_token() }}" />
    	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>计科院科协</title>
	<!-- Bootstrap -->
    	<link href="{{asset('gentellela') . '/vendors/bootstrap/dist/css/bootstrap.min.css'}}" rel="stylesheet">
    	<!-- Font Awesome -->
    	<link href="{{asset('gentellela') . '/vendors/font-awesome/css/font-awesome.min.css'}}" rel="stylesheet">
    	<!-- Custom Theme Style -->
   	<link href="{{asset('gentellela') . '/build/css/custom.min.css'}}" rel="stylesheet">
	<!-- PNotify -->
	<link href="{{asset('gentellela') . '/vendors/pnotify/dist/pnotify.css'}}" rel="stylesheet">
	<link href="{{asset('gentellela') . '/vendors/pnotify/dist/pnotify.buttons.css'}}" rel="stylesheet">
	<link href="{{asset('gentellela') . '/vendors/pnotify/dist/pnotify.nonblock.css'}}" rel="stylesheet">
   	@section('mycss')
   	@show
</head>
<body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="{{ url('/') }}" class="site_title"><!-- <i class="fa fa-paw"></i> --><img style="width: 100%;max-width: 30px;" src="{{ asset('images/kxlogo.jpg') }}" alt="logo" class="img-circle profile_img"> <span>计科院科协</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile">
              <div class="profile_pic">
                <img src="{{ asset('avatar') . '/' . session()->get('user_info')->user_avatar_name }}" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>欢迎</span>
                <h2>{{ session()->get('user_info')->user_name }}</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">  
                <h3>&nbsp;</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-clock-o"></i> 活动概览 <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="{{ url('activity/all') }}"> 科协活动 </a></li>
                    <li><a href="{{ url('activity/self')}}"> 部门活动 </a></li>
                  </ul>
                  </li>
                </ul>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-user"></i> 个人中心 <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu">
                    <li><a href="{{ url('user/profile') }}"> 个人信息 </a></li>
                    <li><a href="{{ url('user/password') }}"> 密码修改 </a></li>
                  </ul>
                  </li>
                </ul>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> 后台管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="{{ url('manage/user') }}">人员管理</a></li>
                      <li><a href="{{ url('manage/activity') }}">活动管理</a></li>
                    </ul>
                  </li>
                </ul>
                @if(session()->get('user_info')->role_priority == 1)
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-warning"></i> 超级管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    <li><a href="{{ url('super/user') }}" onclick="alert('在超级管理内操作非常危险,请慎重操作!')">人员管理</a></li>
                      <li><a href="{{ url('super/department') }}" onclick="alert('在超级管理内操作非常危险,请慎重操作!')">部门管理</a></li>
                      <li><a href="{{ url('super/role') }}" onclick="alert('在超级管理内操作非常危险,请慎重操作!')">角色管理</a></li>
                      <li><a href="{{ url('super/syslog') }}" onclick="alert('在超级管理内操作非常危险,请慎重操作!')">系统日志</a></li>
                    </ul>
                  </li>
                </ul>
                @endif
              </div>


            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen" id="fullscreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="登出" href="{{ url('logout') }}">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav class="" role="navigation">
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="{{ asset('avatar') . '/' . session()->get('user_info')->user_avatar_name }}" alt="" class="avatar">{{ session()->get('user_info')->user_name }}
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="{{ url('user/profile') }}">个人信息</a></li>
                    <li><a href="{{ url('logout') }}"><i class="fa fa-sign-out pull-right"></i>登出</a></li>
                  </ul>
                </li>


              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
        	@section('mycontent')
        	@show
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            苏州大学计算机科学与技术学院科技协会
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

<!-- jQuery -->
<script src="{{asset('gentellela') . '/vendors/jquery/dist/jquery.min.js'}}"></script>
<!-- Bootstrap -->
<script src="{{asset('gentellela') . '/vendors/bootstrap/dist/js/bootstrap.min.js'}}"></script>
<!-- Custom Theme Scripts -->
<script src="{{asset('gentellela') . '/build/js/custom.min.js'}}"></script>
<!-- PNotify -->
<script src="{{asset('gentellela') . '/vendors/pnotify/dist/pnotify.js'}}"></script>
<script src="{{asset('gentellela') . '/vendors/pnotify/dist/pnotify.buttons.js'}}"></script>
<script src="{{asset('gentellela') . '/vendors/pnotify/dist/pnotify.nonblock.js'}}"></script>

@include('common.error')

@section('myjavascript')
@show
</body>
</html>