<?php
$user_info = session()->get('user_info');
?>

@extends('common.layout')

@section('mycss')
<!-- Datatables -->
<link href="{{asset('gentellela') . '/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css' }}" rel="stylesheet">
@stop

@section('mycontent')

           <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2> 系统日志 </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>记录时间</th>
                          <th>日志等级（越高越危险）</th>
                          <th>日志描述</th>
                          <th>用户姓名</th>
                          <th>用户id</th>
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
	  filename:"日志信息"
	},
	{
	  extend: "excel",
	  className: "btn-sm",
	  filename:"日志信息"
	},
	// {
	//   extend: "pdfHtml5",
	//   className: "btn-sm",
	//   filename:"日志信息"
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
	"ajax": '{{ url("super/syslog/sysloginfo_ajax") }}',
        	"aoColumns":[
        	             {"mDataProp": "syslog_time"},
                            {"mDataProp": "syslog_level"},
                            {"mDataProp": "syslog_description"},
                            {"mDataProp": "user_name"},
                            {"mDataProp": "syslog_user_id"},
                   ],
            });
</script>

@stop