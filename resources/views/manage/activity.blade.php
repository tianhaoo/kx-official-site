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
<link href="{{asset('gentellela') . '/vendors/bootstrap-daterangepicker/daterangepicker.css' }}" rel="stylesheet">

@stop

@section('mycontent')

<!-- modal add and edit activity information -->
<div class="modal fade" id="import_activity" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            <div class="modal-body" style="height: 520px;">
            <form id="activity_info_form" class="form-horizontal form-label-left" method="POST" action="" enctype="multipart/form-data">
                           	{{ csrf_field() }}
                            	<div class="form-group">
			<label class="control-label col-md-3" for="activity_name">活动名称</label>
			<div class="col-md-7">
				<input class="form-control" type="text" name="activity_name" id="activity_name" >
			</div>
		</div>
                <div class="form-group">
                  <label class="control-label col-md-3" for="activity_start_time">活动开始时间</label>
                  <div class="col-md-7">
                  
                    <input id="activity_start_time" name='activity_start_time' class="date-picker form-control" required="required" type="text">
                  </div>
                </div>
                <div class="form-group">
                  <label class="control-label col-md-3" for="activity_department_id">活动负责部门</label>
                  <div class="col-md-7">
                          <select class="form-control" name="activity_department_id" id="activity_department_id">
                            @foreach ($all_department_info as $department)
                                @if($user_info->user_department_id == 1 || $user_info->user_department_id == $department->id)
                                  <option value="{{ $department->id }}" >{{ $department->department_name }}</option>
                                @endif
                            @endforeach
                    </select>
                  </div>
                </div>		
                <div class="form-group">
			<label class="control-label col-md-3" for="activity_content">活动内容 
                              <a class="fa fa-question-circle" title="活动内容将无修改的放到活动展示中，即活动内容使用html和javascript语法写，例如换行需要使用<br />、使用<a>标签加入超链接，这样更加灵活但具有相当大的危险性，危险性可搜索“XSS攻击”" href="javascript:;" onclick="alert('活动内容将无修改的放到活动展示中，即活动内容使用html和javascript语法写，例如换行需要使用<br />、使用<a>标签加入超链接，这样更加灵活但具有相当大的危险性，危险性可搜索“XSS攻击”')"></a>
                      </label>
			<div class="col-md-7">
  				<textarea  class="form-control" type="text" name="activity_content" id="activity_content" style="resize: none;height: 270px" placeholder="请务必在阅读完左侧问号里的说明后再填写本栏"></textarea>
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
                    <h2>活动管理</h2>
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
                      <button class="btn btn-default" onclick="add()">添加活动</button>
                    </p>
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>活动名称</th>
                          <th>活动负责部门</th>
                          <th>活动开始时间</th>
                          <th>活动创建人</th>
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
<!-- <script src="{{asset('gentellela') . '/vendors/datatables.net/js/moment/moment.min.js' }}"></script> -->
<script src="{{asset('gentellela') . '/vendors/moment/min/moment.min.js'}}"></script>
<script src="{{asset('gentellela') . '/vendors/bootstrap-daterangepicker/daterangepicker.js' }}"></script>
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

<!-- bootstrap-daterangepicker -->
    <script>
      $(document).ready(function() {
        $('#activity_start_time').daterangepicker({
          singleDatePicker: true,
          calender_style: "picker_4",
          locale: {
                format: 'YYYY/MM/DD'
            }
        }, function(start, end, label) {
          console.log(start.toISOString(), end.toISOString(), label);
        });
      });
    </script>
    <!-- /bootstrap-daterangepicker -->

    <!-- Datatables -->
    <script>

    function add()
    {
    	$('#myModalLabel').html("添加活动");

    	$('#activity_name').val("");
    	$('#activity_content').val("");
    	$('#activity_info_form').attr('action', '{{ url("manage/activity/add") }}');
    	
    	$('#import_activity').modal('show');

    }

    function edit(id)
    {


    	$('#myModalLabel').html("信息修改");
    	$('#activity_info_form').attr('action', '{{ url("activity/edit") }}/'+ id );
      $('#activity_info_form')[0].reset();

    	$.ajax({
    		url: "{{ url('activity/get_info_by_id/') }}/"+id,
    		type: "GET",
    		dataType:"JSON",
    		success:function(info)
    		{
    			$('#activity_name').val(info.activity_name);
                      $('#activity_content').val(info.activity_content);
                      $('#activity_start_time').val(info.activity_start_time);
                      // var html = '';

                      // @foreach ($all_department_info as $department)
                      //   @if($user_info->user_department_id == 1 || $user_info->user_department_id == $department->id)
                      //         if({{ $department->id }} == info.activity_department_id){
                      //           html += '<option selected="selected" value="{{ $department->id }}">{{ $department->department_name }}</option>';
                      //         }
                      //         else{
                      //           html += '<option value="{{ $department->id }}">{{ $department->department_name }}</option>';
                      //         }
                      //   @endif
                      // @endforeach
                      
                      // $('#activity_department_id').empty();
                      // $('#activity_department_id').append(html);
                      $('#activity_department_id').val(info.activity_department_id);
    		},
    		error:function()
    		{
    			alert("error");
    		}
    	});


    	$('#import_activity').modal('show');
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
	  filename:"活动信息"
	},
	{
	  extend: "excel",
	  className: "btn-sm",
	  filename:"活动信息"
	},
	// {
	//   extend: "pdfHtml5",
	//   className: "btn-sm",
	//   filename:"活动信息"
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
        "order":[['2', 'desc']],
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
	"ajax": '{{ url("manage/activity/activityinfo_ajax") }}',
        	"aoColumns":[
                            {"mDataProp": "activity_name"},
                            {"mDataProp": "department_name"},
                            {"mDataProp": "activity_start_time"},
                            {"mDataProp": "user_name"},
                            {"mDataProp": "operations"},
                   ],
            });
    </script>
    <!-- /Datatables -->
@stop