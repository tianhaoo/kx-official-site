<?php
$user_info = session()->get('user_info');
?>

@extends('common.layout')

@section('mycss')
<link href="{{asset('gentellela')}}/vendors/cropper/dist/cropper.min.css" rel="stylesheet">
<style>
/* Limit image width to avoid overflow the container */
img {
  max-width: 100%; /* This rule is very important, please do not ignore this! */
}
</style>
@stop

@section('mycontent')
<!-- Cropping modal -->
<div>
  <div class="x_panel">
        <div class="x_title">
          <h2>修改头像</h2>
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
              </li>
              <li><a class="close-link"><i class="fa fa-close"></i></a>
              </li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
          <div class="avatar-body">

            <!-- Upload image and data -->
            <div class="avatar-upload">
                <label class="btn btn-success btn-upload" for="inputImage" title="Upload image file">
                  <input type="file" class="sr-only" id="inputImage" name="file" accept=".jpg,.jpeg,.png,.gif,.bmp,.tiff">
                  <span class="docs-tooltip" data-toggle="tooltip" title="Import image with Blob URLs">
                    <span class="fa fa-upload"></span>上传头像
                  </span>
                </label>
            </div>

            <!-- image cropping -->
            <div class="container cropper">
              <div class="row">
                <div class="col-md-9">
                  <!-- <h3 class="page-header">Demo:</h3> -->
                  <div class="img-container">
                    <img id="image" src="{{ asset('avatar') }}/{{ $user_info->user_avatar_name }}" alt="Picture">
                  </div>
                </div>
                <div class="col-md-3">
                  <h3 class="page-header">预览:</h3>
                  <div class="docs-preview clearfix">
                    <div class="img-preview preview-md"></div>
                    <div class="img-preview preview-sm"></div>
                    <div class="img-preview preview-xs"></div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-9 docs-buttons">
                  <!-- <h3 class="page-header">Toolbar:</h3> -->
                  <div class="btn-group">
                    <button type="button" class="btn btn-primary" data-method="setDragMode" data-option="move" title="Move">
                      <span class="docs-tooltip" data-toggle="tooltip" title="移动">
                        <span class="fa fa-arrows"></span>
                      </span>
                    </button>
                    <button type="button" class="btn btn-primary" data-method="setDragMode" data-option="crop" title="Crop">
                      <span class="docs-tooltip" data-toggle="tooltip" title="裁剪">
                        <span class="fa fa-crop"></span>
                      </span>
                    </button>
                  </div>

                  <div class="btn-group">
                    <button type="button" class="btn btn-primary" data-method="zoom" data-option="0.1" title="Zoom In">
                      <span class="docs-tooltip" data-toggle="tooltip" title="放大">
                        <span class="fa fa-search-plus"></span>
                      </span>
                    </button>
                    <button type="button" class="btn btn-primary" data-method="zoom" data-option="-0.1" title="Zoom Out">
                      <span class="docs-tooltip" data-toggle="tooltip" title="缩小">
                        <span class="fa fa-search-minus"></span>
                      </span>
                    </button>
                  </div>

                  <div class="btn-group">
                    <button type="button" class="btn btn-primary" data-method="move" data-option="-10" data-second-option="0" title="Move Left">
                      <span class="docs-tooltip" data-toggle="tooltip" title="左移">
                        <span class="fa fa-arrow-left"></span>
                      </span>
                    </button>
                    <button type="button" class="btn btn-primary" data-method="move" data-option="10" data-second-option="0" title="Move Right">
                      <span class="docs-tooltip" data-toggle="tooltip" title="右移">
                        <span class="fa fa-arrow-right"></span>
                      </span>
                    </button>
                    <button type="button" class="btn btn-primary" data-method="move" data-option="0" data-second-option="-10" title="Move Up">
                      <span class="docs-tooltip" data-toggle="tooltip" title="上移">
                        <span class="fa fa-arrow-up"></span>
                      </span>
                    </button>
                    <button type="button" class="btn btn-primary" data-method="move" data-option="0" data-second-option="10" title="Move Down">
                      <span class="docs-tooltip" data-toggle="tooltip" title="下移">
                        <span class="fa fa-arrow-down"></span>
                      </span>
                    </button>
                  </div>

                  <div class="btn-group">
                    <button type="button" class="btn btn-primary" data-method="rotate" data-option="-45" title="Rotate Left">
                      <span class="docs-tooltip" data-toggle="tooltip" title="逆时针旋转45度">
                        <span class="fa fa-rotate-left"></span>
                      </span>
                    </button>
                    <button type="button" class="btn btn-primary" data-method="rotate" data-option="45" title="Rotate Right">
                      <span class="docs-tooltip" data-toggle="tooltip" title="顺时针旋转45度">
                        <span class="fa fa-rotate-right"></span>
                      </span>
                    </button>
                  </div>

                  <div class="btn-group">
                    <button type="button" class="btn btn-primary" data-method="scaleX" data-option="-1" title="Flip Horizontal">
                      <span class="docs-tooltip" data-toggle="tooltip" title="左右翻转">
                        <span class="fa fa-arrows-h"></span>
                      </span>
                    </button>
                    <button type="button" class="btn btn-primary" data-method="scaleY" data-option="-1" title="Flip Vertical">
                      <span class="docs-tooltip" data-toggle="tooltip" title="上下翻转">
                        <span class="fa fa-arrows-v"></span>
                      </span>
                    </button>
                  </div>

                  <div class="btn-group">
                    <button type="button" class="btn btn-primary" data-method="disable" title="Disable">
                      <span class="docs-tooltip" data-toggle="tooltip" title="锁屏">
                        <span class="fa fa-lock"></span>
                      </span>
                    </button>
                    <button type="button" class="btn btn-primary" data-method="enable" title="Enable">
                      <span class="docs-tooltip" data-toggle="tooltip" title="解锁">
                        <span class="fa fa-unlock"></span>
                      </span>
                    </button>
                  </div>

                  <div class="btn-group">
                    <button type="button" class="btn btn-primary" data-method="reset" title="Reset">
                      <span class="docs-tooltip" data-toggle="tooltip" title="重置">
                        <span class="fa fa-refresh"></span>
                      </span>
                    </button>
                    <button type="button" class="btn btn-success" data-method="getCroppedCanvas">
                      <span class="docs-tooltip" data-toggle="tooltip" title="提交">
                      <span class="fa fa-check"></span>
                      </span>
                    </button>
                  </div>

                  <!-- Show the cropped image in modal -->
                  <div class="modal fade docs-cropped" id="getCroppedCanvasModal" aria-hidden="true" aria-labelledby="getCroppedCanvasTitle" role="dialog" tabindex="-1">
                    <div class="modal-dialog">
                      <div class="modal-content">
                      <form action="{{ url('user/avatar/edit') }}" method="POST">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title" id="getCroppedCanvasTitle">确认提交?</h4>
                        </div>
                        <div class="modal-body">
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                          <input type="hidden" name="avatar_code" id="avatar_code">
                          {{ csrf_field() }}
                          <a id="download" href="#"><button type="submit" class="btn btn-primary">确认</button></a>
                        </div>
                        </form>
                      </div>
                    </div>
                  </div><!-- /.modal -->

                </div><!-- /.docs-buttons -->
              </div>
            </div>
            <!-- /image cropping -->


          </div>
        </div>
    </div>
</div>
<!-- /.modal -->
@stop

@section('myjavascript')
<!-- Cropper -->
<script src="{{asset('gentellela')}}/vendors/cropper/dist/cropper.min.js"></script>
<script>
  $(document).ready(function() {
    var $image = $('#image');
    var $download = $('#download');
    var $dataX = $('#dataX');
    var $dataY = $('#dataY');
    var $dataHeight = $('#dataHeight');
    var $dataWidth = $('#dataWidth');
    var $dataRotate = $('#dataRotate');
    var $dataScaleX = $('#dataScaleX');
    var $dataScaleY = $('#dataScaleY');
    var options = {
          aspectRatio: 1 / 1,
          preview: '.img-preview',
          crop: function (e) {
            $dataX.val(Math.round(e.x));
            $dataY.val(Math.round(e.y));
            $dataHeight.val(Math.round(e.height));
            $dataWidth.val(Math.round(e.width));
            $dataRotate.val(e.rotate);
            $dataScaleX.val(e.scaleX);
            $dataScaleY.val(e.scaleY);
          }
        };


    // Tooltip
    $('[data-toggle="tooltip"]').tooltip();


    // Cropper
    $image.on({
      'build.cropper': function (e) {
        console.log(e.type);
      },
      'built.cropper': function (e) {
        console.log(e.type);
      },
      'cropstart.cropper': function (e) {
        console.log(e.type, e.action);
      },
      'cropmove.cropper': function (e) {
        console.log(e.type, e.action);
      },
      'cropend.cropper': function (e) {
        console.log(e.type, e.action);
      },
      'crop.cropper': function (e) {
        console.log(e.type, e.x, e.y, e.width, e.height, e.rotate, e.scaleX, e.scaleY);
      },
      'zoom.cropper': function (e) {
        console.log(e.type, e.ratio);
      }
    }).cropper(options);


    // Buttons
    if (!$.isFunction(document.createElement('canvas').getContext)) {
      $('button[data-method="getCroppedCanvas"]').prop('disabled', true);
    }

    if (typeof document.createElement('cropper').style.transition === 'undefined') {
      $('button[data-method="rotate"]').prop('disabled', true);
      $('button[data-method="scale"]').prop('disabled', true);
    }


    // Download
    if (typeof $download[0].download === 'undefined') {
      $download.addClass('disabled');
    }


    // Options
    $('.docs-toggles').on('change', 'input', function () {
      var $this = $(this);
      var name = $this.attr('name');
      var type = $this.prop('type');
      var cropBoxData;
      var canvasData;

      if (!$image.data('cropper')) {
        return;
      }

      if (type === 'checkbox') {
        options[name] = $this.prop('checked');
        cropBoxData = $image.cropper('getCropBoxData');
        canvasData = $image.cropper('getCanvasData');

        options.built = function () {
          $image.cropper('setCropBoxData', cropBoxData);
          $image.cropper('setCanvasData', canvasData);
        };
      } else if (type === 'radio') {
        options[name] = $this.val();
      }

      $image.cropper('destroy').cropper(options);
    });


    // Methods
    $('.docs-buttons').on('click', '[data-method]', function () {
      var $this = $(this);
      var data = $this.data();
      var $target;
      var result;

      if ($this.prop('disabled') || $this.hasClass('disabled')) {
        return;
      }

      if ($image.data('cropper') && data.method) {
        data = $.extend({}, data); // Clone a new one

        if (typeof data.target !== 'undefined') {
          $target = $(data.target);

          if (typeof data.option === 'undefined') {
            try {
              data.option = JSON.parse($target.val());
            } catch (e) {
              console.log(e.message);
            }
          }
        }

        result = $image.cropper(data.method, data.option, data.secondOption);

        switch (data.method) {
          case 'scaleX':
          case 'scaleY':
            $(this).data('option', -data.option);
            break;

          case 'getCroppedCanvas':
            if (result) {

              // Bootstrap's Modal
              $('#getCroppedCanvasModal').modal().find('.modal-body').html(result);

              if (!$download.hasClass('disabled')) {
                  $('#avatar_code').val(result.toDataURL());
              }
            }

            break;
        }

        if ($.isPlainObject(result) && $target) {
          try {
            $target.val(JSON.stringify(result));
          } catch (e) {
            console.log(e.message);
          }
        }

      }
    });

    // Keyboard
    $(document.body).on('keydown', function (e) {
      if (!$image.data('cropper') || this.scrollTop > 300) {
        return;
      }

      switch (e.which) {
        case 37:
          e.preventDefault();
          $image.cropper('move', -1, 0);
          break;

        case 38:
          e.preventDefault();
          $image.cropper('move', 0, -1);
          break;

        case 39:
          e.preventDefault();
          $image.cropper('move', 1, 0);
          break;

        case 40:
          e.preventDefault();
          $image.cropper('move', 0, 1);
          break;
      }
    });

    // Import image
    var $inputImage = $('#inputImage');
    var URL = window.URL || window.webkitURL;
    var blobURL;

    if (URL) {
      $inputImage.change(function () {
        var files = this.files;
        var file;

        if (!$image.data('cropper')) {
          return;
        }

        if (files && files.length) {
          file = files[0];

          if (/^image\/\w+$/.test(file.type)) {
            blobURL = URL.createObjectURL(file);
            $image.one('built.cropper', function () {

              // Revoke when load complete
              URL.revokeObjectURL(blobURL);
            }).cropper('reset').cropper('replace', blobURL);
            $inputImage.val('');
          } else {
            window.alert('Please choose an image file.');
          }
        }
      });
    } else {
      $inputImage.prop('disabled', true).parent().addClass('disabled');
    }
  });
</script>
<!-- /Cropper -->
@stop