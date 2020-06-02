<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>个人信息</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/MyInfo.css">
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div class="main" style="height: 65%">
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj">个人信息</div>
			<div class="more">
				<a href="./changeinfo.jsp">修改信息</a>
			</div>
		</div>
		<div class="main_part_nav">
			<ul>
				<li>
					<a>姓名：XXX</a>
				</li>
				<li>
					<a>性别：XX</a>
				</li>
				<li>
					<a>班级：XX</a>
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
