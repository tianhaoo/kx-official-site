<?php 
$user_info = session()->get('user_info');
?>

@extends('common.layout')

@section('mycss')
<!-- Datatables -->
<link href="{{asset('gentellela') . '/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css' }}" rel="stylesheet">
<link href="{{asset('gentellela') . '/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css' }}" rel="stylesheet">
<link href="{{asset('gentellela') . '/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css' }}" rel="stylesheet">
<link href="{{asset('gentellela') . '/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css' }}" rel="stylesheet">
<link href="{{asset('gentellela') . '/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css' }}" rel="stylesheet">
@stop

@section('mycontent')

<!-- modal add and edit user information -->
<div class="modal fade" id="import_user" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            <div class="modal-body" style="height: 300px;">
            
                  <form id="user_info_form" class="form-horizontal form-label-left" method="POST" action="" enctype="multipart/form-data">
                           	{{ csrf_field() }}
                            	<div class="form-group">
			<label class="control-label col-md-3" for="user_account">帐号</label>
			<div class="col-md-7">
				<input class="form-control" type="text" name="user_account" id="user_account">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-3" for="user_name">姓名</label>
			<div class="col-md-7">
				<input class="form-control" type="text" name="user_name" id="user_name">
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-3" for="user_role_id">职务</label>
			<div class="col-md-7">
				<select class="form-control" name="user_role_id" id="user_role_id">
				<?php foreach ($all_role_info as $role): ?>
					<?php if ($user_info->role_priority < $role->role_priority): ?>
						<option value="{{ $role->id }}">{{ $role->role_name }}</option>
					<?php endif ?>
				<?php endforeach ?>
				</select>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-3" for="user_department_id">部门</label>
			<div class="col-md-7">
				<select class="form-control" name="user_department_id" id="user_department_id">
				<?php foreach ($all_department_info as $department): ?>
					<?php if ($user_info->user_department_id == 1 || $user_info->user_department_id == $department->id): ?>
						<option value="{{ $department->id }}">{{ $department->department_name }}</option>
					<?php endif ?>
				<?php endforeach ?>
				</select>
			</div>
		</div>
		<div class="ln_solid"></div>
		<div class="form-group">
		<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
			<input class="btn btn-primary" type="submit" name="submit">
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			</div>
		</div>
                  </form>
                  
            </div>
            <div class="modal-footer" hidden="">
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>人员管理</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>

                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <p class="text-muted font-13 m-b-30">
                      <button class="btn btn-default" onclick="add()">添加人员</button>
                    </p>

                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>帐号</th>
                          <th>姓名</th>
                          <th>职务</th>
                          <th>部门</th>
                          <th>操作</th>
                        </tr>
                      </thead>
                    </table>
                  </div>
                </div>
              </div>
@stop

@section('myjavascript')
<!-- Datatables -->
<script src="{{asset('gentellela') . '/vendors/datatables.net/js/jquery.dataTables.min.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/datatables.net-buttons/js/dataTables.buttons.min.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/datatables.net-buttons/js/buttons.flash.min.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/datatables.net-buttons/js/buttons.html5.min.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/datatables.net-buttons/js/buttons.print.min.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/datatables.net-responsive/js/dataTables.responsive.min.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/datatables.net-scroller/js/dataTables.scroller.min.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/jszip/dist/jszip.min.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/pdfmake/build/pdfmake.min.js' }}"></script>
<script src="{{asset('gentellela') . '/vendors/pdfmake/build/vfs_fonts.js' }}"></script>

    <!-- Datatables -->
    <script>

    function add()
    {
    	$('#myModalLabel').html("添加人员");
    	$('#user_account').val("");
    	$('#user_name').val("");
    	$('#user_info_form').attr('action', '{{ url("manage/user/add") }}');
    	
    	$('#import_user').modal('show');
    }

    function edit(id)
    {
    	$('#myModalLabel').html("信息修改");
    	$('#user_info_form').attr('action', '{{ url("manage/user/edit") }}/'+ id );

    	$.ajax({
    		url : "{{ url('user/get_info_by_id') }}/" + id,
    		type: "GET",
    		dataType:"JSON",
    		success:function(info)
    		{
    			$('#user_account').val(info.user_account);
    			$('#user_name').val(info.user_name);
    			// $("#user_role_id option[value='" + $('#user_role_id').val() + "']").removeAttr('selected');
    			// $("#user_role_id option[value='" + info.user_role_id + "']").attr("selected", true); 
    			$('#user_role_id').val(info.user_role_id);
    			// $("#user_department_id option[value='" + $('#user_department_id').val() + "']").removeAttr('selected');
    			// $("#user_department_id option[value='" + info.user_department_id + "']").attr("selected", true);
    			$('#user_department_id').val(info.user_department_id);
    		},
    		error:function()
    		{
    			alert("error");
    		}
    	});

    	$('#import_user').modal('show');
    }

            $("#datatable-buttons").DataTable({
	dom: "Bfrtip",
	buttons: [
	{
	  extend: "copy",
	  className: "btn-sm"
	},
	{
	  extend: "csv",
	  className: "btn-sm",
	  filename:"人员信息"
	},
	{
	  extend: "excel",
	  className: "btn-sm",
	  filename:"人员信息"
	},
	// {
	//   extend: "pdfHtml5",
	//   className: "btn-sm",
	//   filename:"人员信息"
	// },
	// {
	//   extend: "print",
	//   className: "btn-sm"
	// },
	],
	"responsive": true,
	"paging": true,
	"lengthChange": true,
	"processing":true,
	"searching": true,
	"ordering": true,
	"info": false,
	"autoWidth": true,
                   "deferRender": true,
	"language": {
	        "sProcessing": "处理中...",
	        "sLengthMenu": "显示 _MENU_ 项结果",
	        "sZeroRecords": "没有匹配结果",
	        "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
	        "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
	        "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
	        "sInfoPostFix": "",
	        "sSearch": "搜索:",
	        "sUrl": "",
	        "sEmptyTable": "表中数据为空",
	        "sLoadingRecords": "载入中...",
	        "sInfoThousands": ",",
	        "oPaginate": {
	            "sFirst": "首页",
	            "sPrevious": "上页",
	            "sNext": "下页",
	            "sLast": "末页"
	        },
	        "oAria": {
	            "sSortAscending": ": 以升序排列此列",
	            "sSortDescending": ": 以降序排列此列"
	        },
	},
	"ajax": '{{ url("manage/user/userinfo_ajax") }}',
        	"aoColumns":[
                            {"mDataProp": "user_account"},
                            {"mDataProp": "user_name"},
                            {"mDataProp": "role_name"},
                            {"mDataProp": "department_name"},
                            {"mDataProp": "operations"},
                   ],
            });
    </script>
    <!-- /Datatables -->
@stop