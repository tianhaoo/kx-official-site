
@extends('common.layout')

@section('mycss')
<!-- FullCalendar -->
<link href="{{ asset('gentellela') }}/vendors/fullcalendar/dist/fullcalendar.min.css" rel="stylesheet">
<link href="{{ asset('gentellela') }}/vendors/fullcalendar/dist/fullcalendar.print.css" rel="stylesheet" media="print">
@stop

@section('mycontent')

        <!-- page content -->
        <div class="" role="main">
          <div class="">

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>{{ $title }}</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <div id='calendar'></div>

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

    <!-- calendar modal -->
 <!--    <div id="CalenderModalNew" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title" id="myModalLabel">New Calendar Entry</h4>
          </div>
          <div class="modal-body">
            <div id="testmodal" style="padding: 5px 20px;">
              <form id="antoform" class="form-horizontal calender" role="form">
                <div class="form-group">
                  <label class="col-sm-3 control-label">Title</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="title" name="title">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">Description</label>
                  <div class="col-sm-9">
                    <textarea class="form-control" style="height:55px;" id="descr" name="descr"></textarea>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default antoclose" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary antosubmit">Save changes</button>
          </div>
        </div>
      </div>
    </div>
    <div id="CalenderModalEdit" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h4 class="modal-title" id="myModalLabel2">Edit Calendar Entry</h4>
          </div>
          <div class="modal-body">

            <div id="testmodal2" style="padding: 5px 20px;">
              <form id="antoform2" class="form-horizontal calender" role="form">
                <div class="form-group">
                  <label class="col-sm-3 control-label">Title</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="title2" name="title2">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-3 control-label">Description</label>
                  <div class="col-sm-9">
                    <textarea class="form-control" style="height:55px;" id="descr2" name="descr"></textarea>
                  </div>
                </div>

              </form>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default antoclose2" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary antosubmit2">Save changes</button>
          </div>
        </div>
      </div>
    </div>

    <div id="fc_create" data-toggle="modal" data-target="#CalenderModalNew"></div>
    <div id="fc_edit" data-toggle="modal" data-target="#CalenderModalEdit"></div> -->
    <!-- /calendar modal -->
        
@stop

@section('myjavascript')
<!-- FullCalendar -->
<script src="{{ asset('gentellela') }}/vendors/moment/min/moment.min.js"></script>
<script src="{{ asset('gentellela') }}/vendors/fullcalendar/dist/fullcalendar.min.js"></script>
<script src="{{ asset('gentellela') }}/vendors/fullcalendar/dist/lang/zh-cn.js"></script>

<!-- FullCalendar -->
<script>
  $(window).load(function() {
    var date = new Date(),
        d = date.getDate(),
        m = date.getMonth(),
        y = date.getFullYear(),
        started,
        categoryClass;

    var calendar = $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,agendaWeek,agendaDay',
      },
      now: "{{Date('Y-m-d')}}",
      lang: "zh-cn",
      selectable: false,
      editable: false,
      timeFormat:" ",
      events: {!! $activity_info !!},
      
      // select: function(start, end, allDay) {
        
      //   if({{ time() }} > Date.parse(start)/1000 + 3600 * 24){
      //   	pnotify("请选择正确的活动开始日期");
      //   	return false;
      //   }
      //   $('#fc_create').click();

      //   started = start;
      //   ended = end;

      //   $(".antosubmit").on("click", function() {
      //     var title = $("#title").val();
      //     if (end) {
      //       ended = end;
      //     }

      //     categoryClass = $("#event_type").val();

      //     if (title) {
      //       calendar.fullCalendar('renderEvent', {
      //           title: title,
      //           start: started,
      //           end: end,
      //           allDay: allDay
      //         },
      //         true // make the event "stick"
      //       );
      //     }

      //     $('#title').val('');

      //     calendar.fullCalendar('unselect');

      //     $('.antoclose').click();

      //     return false;
      //   });
      // },
      
      // eventClick: function(calEvent, jsEvent, view) {
      //   $('#fc_edit').click();
      //   $('#title2').val(calEvent.title);

      //   categoryClass = $("#event_type").val();

      //   $(".antosubmit2").on("click", function() {
      //     calEvent.title = $("#title2").val();

      //     calendar.fullCalendar('updateEvent', calEvent);
      //     $('.antoclose2').click();
      //   });

      //   calendar.fullCalendar('unselect');
      // },
    });
  });
</script>

<!-- /FullCalendar -->

<!-- <script type="text/javascript">
function pnotify(error){
	new PNotify({
		          title: "操作失败！",
		          type: "error",
		          text: error,
		          nonblock: {
		              nonblock: true
		          },
		          addclass: 'error',
		          styling: 'bootstrap3',
		          hide: true,
		          // buttons:{
		          // 	closer_hover:true,
		          // },
		        });
}

</script> -->
@stop