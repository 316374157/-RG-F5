<%--
  Created by IntelliJ IDEA.
  User: 31637
  Date: 2020/5/18
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>添加课程</title>
	<link rel="stylesheet" href="../../static/css/bootstrap.css"/>
</head>
<body>
<form class="form-horizontal">
	<div class="form-group">
		<label for="classname" class="control-label">课程名：</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="classname" placeholder="请输入课程名">
		</div>
	</div>
	<div class="form-group">
		<label for="classnumber">课时：</label>
		<input type="text" class="form-control" id="classnumber" placeholder="请输入课程课时">
	</div>
	<div class="form-group" style="text-align: center">
		<input class="btn btn-primary" type="submit" value="提交" />
		<input class="btn btn-default" type="reset" value="重置" />
		<input class="btn btn-default" type="button" value="返回" />
	</div>
</form>
</body>
</html>
