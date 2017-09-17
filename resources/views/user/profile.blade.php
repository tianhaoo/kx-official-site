<?php
$user_info = session()->get('user_info');
?>

@extends('common.layout')

@section('mycss')

@stop

@section('mycontent')

           <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2> 个人信息 </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <div class="col-md-3 col-sm-3 col-xs-12 profile_left">

                      <div class="profile_img">

                        <!-- end of image cropping -->
                        <div id="crop-avatar">
                          <!-- Current avatar -->
                          <a href="{{ url('user/avatar/edit') }}" >
                            <img class="img-responsive avatar-view" src="{{ asset('avatar') . '/' . session()->get('user_info')->user_avatar_name }}" alt="Avatar" title="点击修改头像">
                          </a>
                        </div>
                        <!-- end of image cropping -->

                      </div>
                      <h3>{{ $user_info->user_name }}</h3>

                      <ul class="list-unstyled user_data">
                        <li>
                        职务：{{$user_info->role_name}}
                        </li>
                        <li>
                          部门：{{$user_info->department_name}}
                        </li>
                      </ul>

                      <!-- <a class="btn btn-success"><i class="fa fa-edit m-right-xs"></i>Edit Profile</a> -->
                      <br />

                    </div>
                    <div class="col-md-9 col-sm-9 col-xs-12">



                      <div class="" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs bar_tabs" role="tablist">
                          <li role="presentation" class="active"><a href="#tab_content1" id="home-tab" role="tab" data-toggle="tab" aria-expanded="true">操作日志</a>
                          </li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                          <div role="tabpanel" class="tab-pane fade active in" id="tab_content1" aria-labelledby="home-tab">

                            <!-- start recent activity -->
                            <ul class="messages">
                              @foreach($user_log as $log)
                              <li>
                                <img src="{{ asset('avatar') . '/' . session()->get('user_info')->user_avatar_name }}" class="avatar" alt="Avatar">
                                <div class="message_date">
                                  <h3 class="date text-info">{{ date('d', $log->syslog_time) }}</h3>
                                  <p class="month">{{ date('M', $log->syslog_time) }}</p>
                                </div>
                                <div class="message_wrapper">
                                  <h4 class="heading">{{$user_info->user_name}}</h4>
                                  <blockquote class="message">
                                  时间：{{ date('H:i:s', $log->syslog_time) }}
                                  <br />
                                  操作：{{ $log->syslog_description }}
                                  </blockquote>
                                  <br />
                                </div>
                              </li>
                             @endforeach

                            </ul>
                            <!-- end recent activity -->

                          </div>


                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
@stop

@section('myjavascript')

@stop