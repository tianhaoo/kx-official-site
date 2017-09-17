<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <title>计算机科学与技术学院科协</title>
	    <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
		<link href="{{ asset('assets/css/font-awesome.min.css') }}" rel="stylesheet">
	</head>
<body>
	<?php if(session()->get('isLogin') != 1): ?>
		<script language='javascript' type="text/javascript">
			window.location.href='login';
		</script>
		
	<?php else:?>
		
		<script language='javascript' type="text/javascript">
			window.location.href='manage/user';
		</script>
	<?php endif;?>
</body>
</html>




