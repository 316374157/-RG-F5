<%--
  Created by IntelliJ IDEA.
  User: 31637
  Date: 2020/5/18
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>添加班级</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/Course.css">
	<link rel="stylesheet" href="static/css/ChangeInfo.css">
	<script type="text/javascript">
        $(function () {
        })
	</script>
</head>
<body>
<jsp:include page="../../public/user-hader.jsp"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj">教师信息</div>
		</div>
		<div class="main_part_nav">
			<ul>
				<form action="CourseServlet" method="post">
					<input type="hidden" name="method" value="addCourse">
					<li>
						<a style="display: block;float: left;width: 70px;">教师编号：</a><input type="text" name="teacherId"/>
					</li>
					<li>
						<a style="display: block;float: left;width: 70px;">教师姓名：</a><input type="text" name="teacherName" />
					</li>
					<li>
						<a style="display: block;float: left;width: 70px;">教师性别：</a><input type="text" name="teacherSex" />
					</li>
					<li>
						<a style="display: block;float: left;width: 70px;">课程编号：</a><input type="text" name="courseId" />
					</li>
					<input style="margin-left: 100px;" type="submit" value="提交" />
					<input style="margin-left: 100px;" type="submit" value="重置" />
					<input style="margin-left: 100px;" type="submit" value="返回" />
				</form>
			</ul>
		</div>
	</div>
</div>
</body>
</html>
