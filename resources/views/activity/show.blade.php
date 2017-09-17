
@extends('common.layout')

@section('mycss')

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
                    <h2>活动介绍</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <table id="shit" class="table table-bordered">
                      <tbody>
                        <tr>
                            <th>活动名称</th>
                            <td  colspan="3"><span class="label label-info">{{$activity_info->activity_name}}</span></td>
                        </tr>
                        <tr>                        
                            <th>活动时间</th>
                            <td><span class="label label-primary">{{date('Y-m-d',$activity_info->activity_start_time)}}</span></td>
                             <th>负责部门</th>
                            <td><span class="label label-success">{{$activity_info->department_name}}</span></td>
                            <!-- <th>结束时间</th>
                            <td><span class="label label-danger">{{date('Y-m-d H:i',$activity_info->activity_end_time)}}</span></td> -->
                        </tr>
                        <tr>
                            <th>活动内容</th>
                            <td colspan="3">{!! $activity_info->activity_content !!}<!--防止content注释--></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->


        
@stop

@section('myjavascript')

@stop