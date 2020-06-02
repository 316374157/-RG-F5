
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
	<div class="messages">
		<div class="main_part_top">
			<div class="checkbox">您管理的信息</div>
		</div>
		<div class="nav nav-pills">
			<ul>
				<li>
					<a href="teachermanager.jsp">教师信息</a>
				</li>
				<li>
					<a href="classdetail.jsp">班级信息</a>
				</li>
				<li>
					<a href="coursemanager.jsp">课程详情</a>
				</li>
				<li>
					<a href="signdetail.jsp">签到详情</a>
				</li>
				<li>
					<a href="studentdetail.jsp">学生详情</a>
				</li>
			</ul>
		</div>
	</div>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
					<li><a href="#">Link</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="添加" role="button" aria-haspopup="true" aria-expanded="false">更改信息 <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="addclass.jsp">添加班级</a></li>
							<li><a href="addcourse.jsp">添加课程</a></li>
							<li><a href="addteacher.jsp">添加教师</a></li>
							<li role="separator" class="divider"><a>编辑信息</a></li>
							<li><a href="updateclass.jsp">编辑班级信息</a></li>
							<li><a href="updatecourse.jsp">编辑课程内容</a></li>
							<li><a href="updateteacher.jsp">管理教师信息</a></li>
							<li><a href="updatestudent.jsp">管理在校学生</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<h1>成功</h1>
	${admin.id}
</body>
</html>
