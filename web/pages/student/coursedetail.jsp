
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>我的课程</title>
	<link rel="stylesheet" href="../../static/css/Clean.css">
	<link rel="stylesheet" href="../../static/css/Course.css">
	<link rel="stylesheet" href="../../static/css/bootstrap.css"/>
	<script src="../../static/js/HeaderChose.js"></script>
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj">课程名</div>
			<div class="more">
				<a href="./NewCourse.jsp">新建课程</a>
			</div>
		</div>
	</div>
</div>
<div class="footer">
	<p style="padding-top: 30px;">软件工程</p>
	<p>Copyright ©</p>
	<p>http://</p>
</div>
<span id="Only" style="display: none;">Course</span>
</body>
</html>
