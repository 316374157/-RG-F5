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
<div style="text-align: center;position: absolute;width: 50%;height: 40%;margin: 0 auto;top: 25%;left: 35%">
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
			<label for="passWd" class="col-sm-2 control-label" >密码：</label>
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
				<label for="man" class="col-sm-2 control-label">男</label>
				<input class="radio" id="man" type="radio" name="sex" value="男">
				<label for="woman" class="col-sm-2 control-label">女</label>
				<input class="radio" id="woman" type="radio" name="sex" value="女">
			</div>
		</div>
			<div class="form-group">
				<label for="classId" class="col-sm-2 control-label">班级：</label>
				<div class="col-sm-10">
					<select class="btn btn-default dropdown-toggle" name="classId" id="classId" style="float: left">
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
			<div class="col-sm-offset-2 col-sm-10" style="position: absolute;right: 30%">
				<input style="margin-left: 100px;" class="btn btn-default" id="registerBtn" type="submit" value="注册" />
				<a href="index.jsp" style="margin-left: 50px;">返回</a>
			</div>
		</div>
	</form>
</div>
</div>
</body>
</html>
