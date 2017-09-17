@extends('common.layout')

@section('mycontent')
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
	<div class="x_title">
		<h2> 密码修改 </h2>
		<ul class="nav navbar-right panel_toolbox">
			<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
			</li>
			<li><a class="close-link"><i class="fa fa-close"></i></a>
			</li>
		</ul>
		<div class="clearfix"></div>
	</div>
	<div class="x_content">
		<form method="POST" action="{{ url('user/password/edit') }}">

		{{ csrf_field() }}
		<input type="hidden" name="id" value="{{  session()->get('user_info')->user_id }}">

		<strong><i class="fa fa-key margin-r-5"></i> 原密码</strong>
		<input class="form-control" type="password" name="user_origin_pw">

		<hr />

		<strong><i class="fa fa-key margin-r-5"></i> 新密码</strong>
		<input class="form-control" type="password" name="user_new_pw">

		<hr />

		<strong><i class="fa fa-key margin-r-5"></i> 确认密码</strong>
		<input class="form-control" type="password" name="user_new_pw_confirmation">

		<br />

		<button type="submit" class="btn btn-default" style="text-align: center"> 修改</button>

		</form>
	</div>
    </div>
  </div>
</div>

@stop