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
			<ul id="headnav" class="nav navbar-nav" style="margin: 0 auto;width: 45%;float: none;">
				<li id="myinfo" class=""><a href="TeacherServlet?method=searchCourse">${sessionScope.teacher.teacherName}</a></li>
				<li id="home" class=""><a href="TeacherServlet?method=home">主页</a></li>
				<li id="myallclass" class=""><a href="TeacherServlet?method=getMyAllClass">班级详情</a></li>
				<li id="data" class=""><a href="TeacherServlet?method=getMyClass">教学资源</a></li>
				<li id="course" class=""><a href="TeacherServlet?method=CourseName">课程</a></li>
				<li id="sign" class=""><a href="SignServlet?method=getSign">签到</a></li>
				<li id="allsigninfo" class=""><a href="SignServlet?method=getAllSignInfo">签到详情</a></li>
				<li id="live" class=""><a href="pages/teacher/Live.jsp">直播</a></li>
				<li><a href="TeacherServlet?method=teacherOut">登出</a></li>
			</ul>
		</div><!-- /.navbar-collapse -->
	</div><!-- /.container-fluid -->
</nav>
