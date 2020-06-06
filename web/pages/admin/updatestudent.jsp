
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
			<div class="kj">学生信息</div>
		</div>
		<div class="main_part_nav">
			<ul>
				<form action="AdminServlet" method="post">
					<li>
						<label>学号：</label><input type="text" placeholder="id" name="studentid">
					</li>
					<li>
						<label>姓名：</label><input type="text" placeholder="name" name="studentname">
					</li>
					<li>
						<label>性别：</label><input type="text" placeholder="gender" name="gender">
					</li>
					<li>
						<label>密码：</label><input type="password" placeholder="password" name="password">
					</li>
					<input type="hidden" name="method" value="changeStudent">
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

