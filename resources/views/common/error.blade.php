@if (count($errors))
@foreach($errors->all() as $error)
<script type="text/javascript">
        new PNotify({
          title: "操作失败！",
          type: "error",
          text: "{{ $error }}",
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
        </script>
@endforeach
@endif