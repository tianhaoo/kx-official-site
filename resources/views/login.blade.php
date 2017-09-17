<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>登录</title>
    <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('login.css') }}" rel="stylesheet">
</head>
<body style="background:#00b4ef;">
<!-- <h3>Login</h3>
	<p style="color: red;">{{ $errors->first() }}</p>
	<form action="{{ url('login') }}" method="POST">
		{{ csrf_field() }}
		account:<input type="text" name="user_account" value="{{ old('user_account') }}">
		password:<input type="password" name="user_password" value="{{ old('user_password') }}">
		<input type="submit" name="submit">
	</form>
 -->



<div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form action="{{ url('login') }}" method="POST" class="form-horizontal">
            	{{ csrf_field() }}
                <span class="heading">用户登录</span>

                <div class="form-group">
                	<p class="alert">{{ $errors->first() }}</p>
                    <input type="text" class="form-control" name="user_account" placeholder="用户名">
                    <i class="fa fa-user"></i>
                </div>

                <div class="form-group help">
                    <input type="password" class="form-control" name="user_password" placeholder="密　码">
                    <i class="fa fa-lock"></i>
                    <a href="#" class="fa fa-question-circle"></a>
                </div>

                <div class="form-group">
                    <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">记住密码</span>
                    <button type="submit" name="submit" class="btn btn-default">登录</button>
                </div>

            </form>
        </div>
    </div>
</div>

</body>
</html>