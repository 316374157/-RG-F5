<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>我的课程</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/Course.css">
</head>
<body>
<jsp:include   page="../../public/student-header.jsp" flush="true"/>
<div class="main">
	<div class="main_part">
		<div class="main_part_top">
			<div class="kj">课程名</div>
		</div>
		<c:if test="${!empty requestScope.beanByClassId.courseId1}">
			<div class="course">
				<img src="static/image/Course.png" alt=""/>
				<div class="courseuse">
					<a href="StudentServlet?method=getCourseInfo&courseId=${requestScope.beanByClassId.courseId1}" class="enter">进入课程</a>
				</div>
			</div>
		</c:if>
		<c:if test="${!empty requestScope.beanByClassId.courseId2}">
			<div class="course">
				<img src="static/image/Course.png" alt=""/>
				<div class="courseuse">
					<a href="TeacherServlet?method=getCourseInfo&courseId=${requestScope.beanByClassId.courseId2}" class="enter">进入课程</a>
				</div>
			</div>
		</c:if>
		<c:if test="${!empty requestScope.beanByClassId.courseId3}">
			<div class="course">
				<img src="static/image/Course.png" alt=""/>
				<div class="courseuse">
					<a href="TeacherServlet?method=getCourseInfo&courseId=${requestScope.beanByClassId.courseId3}" class="enter">进入课程</a>
				</div>
			</div>
		</c:if>
		<c:if test="${!empty requestScope.beanByClassId.courseId4}">
			<div class="course">
				<img src="static/image/Course.png" alt=""/>
				<div class="courseuse">
					<a href="TeacherServlet?method=getCourseInfo&courseId=${requestScope.beanByClassId.courseId4}" class="enter">进入课程</a>
				</div>
			</div>
		</c:if>
		<c:if test="${!empty requestScope.beanByClassId.courseId5}">
			<div class="course">
				<img src="static/image/Course.png" alt=""/>
				<div class="courseuse">
					<a href="TeacherServlet?method=getCourseInfo&courseId=${requestScope.beanByClassId.courseId5}" class="enter">进入课程</a>
				</div>
			</div>
		</c:if>
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
