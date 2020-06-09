<%--
  Created by IntelliJ IDEA.
  User: 11322
  Date: 2020/5/20
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="static/js/HeaderChose.js"></script>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul id="headnav" class="nav navbar-nav" style="margin: 0 auto;width: 40%;float: none;">
				<li id="home" class=""><a href="pages/admin/home.jsp">主页</a></li>
				<li id="myallclass" class=""><a href="ClassesServlet?method=getAllClasses">班级详情</a></li>
				<li id="course" class=""><a href="CourseServlet?method=getAllCourse">管理课程</a></li>
				<li id="teacher" class=""><a href="TeacherServlet?method=getAllTeacher">管理教师</a></li>
				<li id="allsigninfo" class=""><a href="SignServlet?method=getAllSignAdmin">签到详情</a></li>
				<li id="student" class=""><a href="StudentServlet?method=getAllStudent">学生详情</a></li>
				<li><a href="AdminServlet?method=adminOut">登出</a></li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>
