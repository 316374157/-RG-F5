<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
	<link rel="stylesheet" href="./CSS/Clean.css">
	<link rel="stylesheet" href="./CSS/MyInfo.css">
	<link rel="stylesheet" href="../../static/css/bootstrap.css"/>
	<script src="./JS/HeaderChose.js"></script>
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj">个人信息</div>
			<div class="more">
				<a href="./ChangeInfo.jsp">修改信息</a>
			</div>
		</div>
		<div class="main_part_nav">
			<ul>
				<li>
					<a>姓名：${sessionScope.teacher.teacherName}</a>
				</li>
				<li>
					<a>性别：${sessionScope.teacher.sex}</a>
				</li>
				<li>
					<a>课程：${sessionScope.teacher.courseId1}</a>
				</li>
				<li>
					<a>课程：${sessionScope.teacher.courseId2}</a>
				</li>
				<li>
					<a>课程：${sessionScope.teacher.courseId3}</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<div class="footer">
	<p style="padding-top: 30px;">软件工程</p>
	<p>Copyright ©</p>
	<p>http://</p>
</div>
<span id="Only" style="display: none;">MyInfo</span>
</body>
</html>


