
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
			<div class="kj">班级信息</div>
		</div>
		<div class="main_part_nav">
			<ul>
				<form action="AdminServlet" method="post">
					<li>
						<label>班级号：</label><input type="text" placeholder="id" name="studentid">
					</li>
					<li>
						<label>班级名称：</label><input type="text" placeholder="name" name="studentname">
					</li>
					<li>
						<label>课程号：</label><input type="text" placeholder="courseid" name="courseid">
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

