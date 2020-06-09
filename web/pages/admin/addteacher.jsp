<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<form action="TeacherServlet" method="post">
					<input type="hidden" name="method" value="addTeacher" readonly>
					<li>
						<a style="display: block;float: left;width: 70px;">教师编号：</a><input type="text" name="username"/>
					</li>
					<li>
						<a style="display: block;float: left;width: 70px;">教师密码：</a><input type="text" name="passWd"/>
					</li>
					<li>
						<a style="display: block;float: left;width: 70px;">教师姓名：</a><input type="text" name="teacherName" />
					</li>
					<li>
						<a style="display: block;float: left;width: 70px;">教师性别：</a>
						<input type="radio" name="sex" value="男" checked>男
						<input type="radio" name="sex" value="女">女
					</li>
					<li>
						<a style="display: block;float: left;width: 70px;">课程一：</a>
						<select name="courseId1">
							<option value="" selected>请选择课程</option>
							<c:forEach items="${requestScope.courseList}" var="item">
								<option value="${item.courseId}">${item.courseName}</option>
							</c:forEach>
						</select>
					</li>
					<li>
						<a style="display: block;float: left;width: 70px;">课程一：</a>
						<select name="courseId2">
							<option value="" selected>请选择课程</option>
							<c:forEach items="${requestScope.courseList}" var="item">
								<option value="${item.courseId}">${item.courseName}</option>
							</c:forEach>
						</select>
					</li>
					<li>
						<a style="display: block;float: left;width: 70px;">课程一：</a>
						<select name="courseId3">
							<option value="" selected>请选择课程</option>
							<c:forEach items="${requestScope.courseList}" var="item">
								<option value="${item.courseId}">${item.courseName}</option>
							</c:forEach>
						</select>
					</li>
					<input style="margin-left: 100px;" type="submit" value="提交" />
				</form>
			</ul>
		</div>
	</div>
</div>
</body>
</html>
