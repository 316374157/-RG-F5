<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>注册</title>
	<jsp:include page="../../public/base.jsp"/>
	<script type="text/javascript">
		$(function () {
			$("#registerBtn").click(function () {
				if ($("#username").val() === "") {
					alert("用户名不能为空！");
					return false;
				}
				if ($("#passWd").val() === "") {
					alert("密码不能为空！");
					return false;
				}
				if ($("#passWd").val() !== $("#rePassWd").val()) {
					alert("两次密码不一致！");
					return false;
				}
				if ($("#classId").val() === "") {
					alert("班级不能为空！");
					return false;
				}
				if ($("#studentName").val() === "") {
					alert("姓名不能为空！");
					return false;
				}
			})
		})
	</script>

</head>
<body style="background-image: url(static/image/桌面.jpg);background-size: cover">
<div style="background-image: url(static/image/桌面.jpg);background-size: cover">
<%--
	<div class="main_part_nav">
		<ul>
			<form action="StudentServlet" method="post">
				<input type="hidden" name="method" value="register">
				<li>
					<a style="display: block;float: left;width: 70px;">用户名：</a><input type="text" name="username" class="form-control" id="inputEmail3" placeholder="uname" style="width: 50%"/>
				</li>
				<li>
					<a style="display: block;float: left;width: 70px;">密码：</a><input type="password" name="passwd" class="form-control" id="inputPassword3" placeholder="Password" style="width: 50%" />
				</li>
				<li>
					<a style="display: block;float: left;width: 70px;">确认密码：</a><input type="repassword" name="passwd1" class="form-control" id="inputPassword4" placeholder="RePassword" style="width: 50%"/>
				</li>
			</form>
		</ul>
--%>

	<div class="main_part_nav">
		<span id="msg" style="color: #ff0000">${requestScope.msg}</span>
        <form class="form-horizontal" action="StudentServlet" method="post">
            <input type="hidden" name="method" value="register">
		<div class="form-group" >
			<label for="username" class="col-sm-2 control-label">用户名：</label>
			<div class="col-sm-10">
				<input type="text" name="username" value="${param.username}" class="form-control" id="username" placeholder="学号" style="width: 50%">
			</div>
		</div>
		<div class="form-group">
			<label for="passWd" class="col-sm-2 control-label">密码：</label>
			<div class="col-sm-10">
				<input type="password" name="passWd" class="form-control" id="passWd" placeholder="密码" style="width: 50%">
			</div>
		</div>
			<div class="form-group">
			<label for="rePassWd" class="col-sm-2 control-label">确认密码：</label>
			<div class="col-sm-10">
				<input type="password" name="rePassWd" class="form-control" id="rePassWd" placeholder="确认密码" style="width: 50%">
			</div>
		</div>
		<div class="form-group" >
			<label  class="col-sm-2 control-label">性别：</label>
			<div class="col-sm-10">
				<input type="radio" name="sex" value="男">男
				<input type="radio" name="sex" value="女">女
			</div>
		</div>
			<div class="form-group">
				<label for="classId" class="col-sm-2 control-label">班级：</label>
				<div class="col-sm-10">
					<select name="classId" id="classId">
						<c:forEach items="${requestScope.courseList}" var="item">
							<option value="${item.courseId}">${item.courseName}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="studentName" class="col-sm-2 control-label">姓名：</label>
				<div class="col-sm-10">
					<input type="text" name="studentName" value="${param.studentName}" class="form-control" id="studentName" placeholder="姓名" style="width: 50%">
				</div>
			</div>


		<div class="form-group" >
			<div class="col-sm-offset-2 col-sm-10" style="position: absolute;margin: 0 auto">
				<input style="margin-left: 100px;" class="btn btn-default" id="registerBtn" type="submit" value="注册" />
			</div>
		</div>
	</form>
</div>
</body>
</html>
