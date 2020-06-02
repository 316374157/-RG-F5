<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Title</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Clean.css">
	<link rel="stylesheet" href="static/css/MyInfo.css">
</head>
<body>
<jsp:include page="../../public/TeacherHeader.jsp"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj">个人信息</div>
			<div class="more">
				<a href="pages/teacher/ChangeInfo.jsp">修改信息</a>
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
					<a>课程：${requestScope.course1.courseName}</a>
				</li>
				<li>
					<c:if test="${!empty requestScope.course2}">
						<a>课程：${requestScope.course2.courseName}</a>
					</c:if>
				</li>
				<li>
					<c:if test="${!empty requestScope.course3}">
						<a>课程：${requestScope.course3.courseName}</a>
					</c:if>
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


