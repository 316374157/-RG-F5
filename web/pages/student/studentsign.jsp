<%--
  Created by IntelliJ IDEA.
  User: 31637
  Date: 2020/5/18
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>签到</title>
	<link rel="stylesheet" href="../../static/css/bootstrap.css"/>
</head>
<body style="background-image: url(../../static/images/桌面.jpg);background-size: cover">
<div style="text-align: center;position: absolute;width: 50%;height: 40%;margin: 0 auto;top: 25%;left: 35%">
<form class="form-horizontal">
	<div class="form-group">
		<label for="inputEmail3" class="col-sm-2 control-label">用户名：</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="inputEmail3" placeholder="Uname" style="width: 50%">
		</div>
	</div>
	<div class="form-group">
		<label for="inputPassword3" class="col-sm-2 control-label">密码：</label>
		<div class="col-sm-10">
			<input type="password" class="form-control" id="inputPassword3" placeholder="Password" style="width: 50%">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<div class="checkbox" style="position: absolute;margin: 0 auto">
				<label>
					<input type="checkbox"> 记住密码
				</label>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10" style="position: absolute;margin: 0 auto">
			<button type="submit" class="btn btn-default">登录</button>
		</div>
	</div>
</form>
</div>
</body>
</html>
