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
				<div class="kj">班级信息</div>
			</div>
			<div class="main_part_nav">
				<ul style="width: 50%;">
					<form action="ClassesServlet" method="post">
						<input type="hidden" name="method" value="addClass">
						<li>
							<a style="display: block;float: left;width: 70px;">班级编号：</a><input type="text" name="classId"/>
						</li>
						<li>
							<a style="display: block;float: left;width: 70px;">班级名：</a><input type="text" name="className" />
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
							<a style="display: block;float: left;width: 70px;">课程二：</a>
							<select name="courseId2">
								<option value="" selected>请选择课程</option>
								<c:forEach items="${requestScope.courseList}" var="item">
									<option value="${item.courseId}">${item.courseName}</option>
								</c:forEach>
							</select>
						</li>
						<li>
							<a style="display: block;float: left;width: 70px;">课程三：</a>
							<select name="courseId3">
								<option value="" selected>请选择课程</option>
								<c:forEach items="${requestScope.courseList}" var="item">
									<option value="${item.courseId}">${item.courseName}</option>
								</c:forEach>
							</select>
						</li>
						<li>
							<a style="display: block;float: left;width: 70px;">课程四：</a>
							<select name="courseId4">
								<option value="" selected>请选择课程</option>
								<c:forEach items="${requestScope.courseList}" var="item">
									<option value="${item.courseId}">${item.courseName}</option>
								</c:forEach>
							</select>
						</li>
						<li>
							<a style="display: block;float: left;width: 70px;">课程五：</a>
							<select name="courseId5">
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
