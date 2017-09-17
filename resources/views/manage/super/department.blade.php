<?php
$user_info = session()->get('user_info');
?>

@extends('common.layout')

@section('mycss')
<!-- Datatables -->
<link href="{{asset('gentellela') . '/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css' }}" rel="stylesheet">
@stop

@section('mycontent')

<!-- modal add and edit department information -->
<div class="modal fade" id="import_department" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            <div class="modal-body" style="height: 150px;">
            
                  <form id="department_info_form" class="form-horizontal form-label-left" method="POST" action="" enctype="multipart/form-data">
                           	{{ csrf_field() }}
                            	<div class="form-group">
			<label class="control-label col-md-3" for="department_name">部门名称</label>
			<div class="col-md-7">
				<input class="form-control" type="text" name="department_name" id="department_name">
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


           <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2> 部门管理 </h2>
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
                      <button class="btn btn-default" onclick="add()">添加部门</button>
                    </p>
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>部门名称</th>
                          <th>操作</th>
                        </tr>
                      </thead>
                    </table>
                  </div>
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


<script type="text/javascript">

    function add()
    {
    	$('#myModalLabel').html("添加部门");
    	$('#department_name').val("");
    	$('#department_info_form').attr('action', '{{ url("super/department/add") }}');
    	
    	$('#import_department').modal('show');
    }

    function edit(id)
    {
    	$('#myModalLabel').html("信息修改");
    	$('#department_info_form').attr('action', '{{ url("super/department/edit") }}/'+ id );

    	$.ajax({
    		url : "{{ url('department/get_info_by_id') }}/" + id,
    		type: "GET",
    		dataType:"JSON",
    		success:function(info)
    		{
    			$('#department_name').val(info.department_name);
    		},
    		error:function()
    		{
    			alert("error");
    		}
    	});

    	$('#import_department').modal('show');
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
	  filename:"部门信息"
	},
	{
	  extend: "excel",
	  className: "btn-sm",
	  filename:"部门信息"
	},
	// {
	//   extend: "pdfHtml5",
	//   className: "btn-sm",
	//   filename:"部门信息"
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
	"order":[['0', 'desc']],
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
	"ajax": '{{ url("super/department/departmentinfo_ajax") }}',
        	"aoColumns":[
        	             {"mDataProp": "department_name"},
                            {"mDataProp": "operations"},
                   ],
            });
</script>

@stop