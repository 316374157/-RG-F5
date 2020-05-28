<%--
  Created by IntelliJ IDEA.
  User: 31637
  Date: 2020/5/18
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>我的主页</title>
	<link rel="stylesheet" href="../../static/css/Clean.css">
	<link rel="stylesheet" href="../../static/css/stuhome.css">
	<link rel="stylesheet" href="../../static/css/bootstrap.css"/>
	<script src="../../static/js/HeaderChose.js"></script>
</head>
<body>
     <jsp:include   page="../../public/student-header.jsp" flush="true"/>
	 <div class="main">
		 <div class="main_part">
			 <div class="main_part_top">
				 <div class="kj">个人信息</div>
			 </div>
			 <div class="main_part_nav">
				 <ul>
					 <li>
						 <a>姓名：${student.studentName}</a>
					 </li>
					 <li>
						 <a>性别：${student.sex}</a>
					 </li>
					 <li>
						 <a>班级：</a>
					 </li>
				 </ul>
			 </div>
		 </div>
		 <div class="main_part" style="float: right;">
			 <div class="main_part_top">
				 <div class="kj">我的课程</div>
				 <div class="more">
					 <a href="./#">MORE+</a>
				 </div>
			 </div>
			 <div class="main_part_nav">
				 <div class="classes">
					 <a href="./#">
						 <div class="classess" style="margin-top: 0;">
							 <span></span>
							 <div class="tz">课程1</div>
						 </div>
					 </a>
					 <a href="./#">
						 <div class="classess" style="margin-top: 0;">
							 <span></span>
							 <div class="tz">课程2</div>
						 </div>
					 </a>
					 <a href="./#">
						 <div class="classess" style="margin-top: 0;">
							 <span></span>
							 <div class="tz">课程3</div>
						 </div>
					 </a>
					 <a href="./#">
						 <div class="classess" style="margin-top: 0;">
							 <span></span>
							 <div class="tz">课程4</div>
						 </div>
					 </a>
					 <a href="./#">
						 <div class="classess" style="margin-top: 0;">
							 <span></span>
							 <div class="tz">课程5</div>
						 </div>
					 </a>
				 </div>
			 </div>
		 </div>
		 <div class="main_part">
			 <div class="main_part_top">
				 <div class="kj">我的班级</div>
				 <div class="more">
					 <a href="./#">MORE+</a>
				 </div>
			 </div>
			 <div class="course">
				 <a href="./#">
					 <div class="courses" style="margin-top: 0;">
						 <span></span>
						 <div class="tz">同学1</div>
					 </div>
				 </a>
				 <a href="./#">
					 <div class="courses">
						 <span></span>
						 <div class="tz">同学2</div>
					 </div>
				 </a>
				 <a href="./#">
					 <div class="courses">
						 <span></span>
						 <div class="tz">同学3</div>
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
