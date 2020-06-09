
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/ChangeInfo.css">
</head>
<body>
<jsp:include page="../../public/user-hader.jsp"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj">课程信息</div>
		</div>
		<div class="main_part_nav">
			<ul>
				<form action="CourseServlet" method="post">
					<input name="method" value="update" type="hidden" readonly >
					<input name="id" value="${param.id}" type="hidden" readonly >
					<li>
						<label>课程编号：</label><input type="text" name="courseId" value="${param.courseId}">
					</li>
					<li>
						<label>课程名称：</label><input type="text" name="courseName" value="${param.courseName}">
					</li>
					<input style="margin-left: 100px;" type="submit" value="提交"/>
				</form>
			</ul>
		</div>
	</div>
</div>
<div class="footer">
	<p style="padding-top: 30px;">软件工程</p>
	<p>Copyright ©</p>
	<p>http://</p>
</div>
<span id="Only" style="display: none;">ChangeInfo</span>
</body>
</html>

