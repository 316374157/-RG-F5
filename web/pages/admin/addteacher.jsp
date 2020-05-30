<%--
  Created by IntelliJ IDEA.
  User: 31637
  Date: 2020/5/18
  Time: 18:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>添加教师</title>
	<link rel="stylesheet" href="../../static/css/bootstrap.css"/>
</head>
<body>
	<div class="form-group">
		<label for="name">教师姓名：</label>
		<input type="text" class="form-control" id="name" name="name" placeholder="请输入姓名">
	</div>
	<div class="form-group">
		<label>性别：</label>
		<input type="radio" name="gender" value="男" checked="checked"/>男
		<input type="radio" name="gender" value="女"/>女
	</div>
	<div class="form-group">
		<label for="age">教师编号：</label>
		<input type="text" class="form-control" id="age" name="age" placeholder="请输入教师编号">
	</div>
	<div class="form-group">
		<label for="address">教师所属班级：</label>
		<select name="address" class="form-control" id="address">
			<option value="**">**</option>
			<option value="**">**</option>
			<option value="**">**</option>
		</select>
	</div>
	<div class="form-group" style="text-align: center">
		<input class="btn btn-primary" type="submit" value="提交" />
		<input class="btn btn-default" type="reset" value="重置" />
		<input class="btn btn-default" type="button" value="返回" />
	</div>
</body>
</html>
