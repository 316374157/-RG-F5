<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>个人信息</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/MyInfo.css">
	<link rel="stylesheet" href="static/css/bootstrap.css"/>
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj">个人信息</div>
			<div class="more">
				<a href="pages/student/changeinfo.jsp">修改信息</a>
			</div>
		</div>
		<div class="main_part_nav">
			<ul>
				<li>
					<a>姓名：${sessionScope.student.studentName}</a>
				</li>
				<li>
					<a>学号：${sessionScope.student.username}</a>
				</li>
				<li>
					<a>性别：${sessionScope.student.sex}</a>
				</li>
				<li>
					<a>班级：${requestScope.map.get(sessionScope.student.classId)}</a>
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
