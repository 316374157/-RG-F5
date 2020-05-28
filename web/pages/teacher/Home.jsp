<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/Home.css">
</head>
<body>
	<jsp:include page="../../public/TeacherHeader.jsp"/>
	<div class="main">
		<div class="main_part">
			<div class="main_part_top">
				<div class="kj">个人信息</div>
			</div>
			<div class="main_part_nav">
				<ul>
					<li>
						<a>姓名：${sessionScope.teacher.teacherName}</a>
					</li>
					<li>
						<a>性别：${sessionScope.teacher.sex}</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="main_part" style="float: right;">
			<div class="main_part_top">
				<div class="kj">教学资源</div>
				<div class="more">
					<a href="./#">MORE+</a>
				</div>
			</div>
			<div class="main_part_nav">
				<ul>
					<li>
						<a href="./#">第一讲：XXX</a>
					</li>
					<li>
						<a href="./#">第二讲：XXX</a>
					</li>
					<li>
						<a href="./#">第三讲：XXX</a>
					</li>
					<li>
						<a href="./#">第四讲：XXX</a>
					</li>
					<li>
						<a href="./#">第五讲：XXX</a>
					</li>
					<li>
						<a href="./#">第六讲：XXX</a>
					</li>
					<li>
						<a href="./#">第七讲：XXX</a>
					</li>
					<li>
						<a href="./#">第八讲：XXX</a>
					</li>
				</ul>
			</div>
			<div class="main_part_nav" style="float: right;margin: 5px 19px 0 0;letter-spacing: -0.5px;">
				<ul>
					<li>2020-01-01</li>
					<li>2020-01-01</li>
					<li>2020-01-01</li>
					<li>2020-01-01</li>
					<li>2020-01-01</li>
					<li>2020-01-01</li>
					<li>2020-01-01</li>
					<li>2020-01-01</li>
				</ul>
			</div>
		</div>
		<div class="main_part">
			<div class="main_part_top">
				<div class="kj">课程</div>
				<div class="more">
					<a href="./#">MORE+</a>
				</div>
			</div>
			<div class="course">
				<a href="./#">
					<div class="courses" style="margin-top: 0;">
						<span></span>
						<div class="tz">课程1</div>
					</div>
				</a>
				<a href="./#">
					<div class="courses">
						<span></span>
						<div class="tz">课程2</div>
					</div>
				</a>
			</div>
		</div>
		<div class="main_part" style="float: right;border: none;">
			<div class="sign">
				<a href="./#">
					<div class="courses">
						<p class="tz">签到</p>
					</div>
				</a>
			</div>
			<div class="signInfo">
				<a href="./#">
					<div class="courses">
						<p class="tz">签到详情</p>
					</div>
				</a>
			</div>
		</div>
	</div>
	<div class="footer">
		<p style="padding-top: 30px;">软件工程</p>
		<p>Copyright ©</p>
		<p>http://</p>
	</div>
	<span id="Only" style="display: none;">Home</span>
</body>
</html>