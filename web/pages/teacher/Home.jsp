<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div class="main_part" style="float: right;border: none;margin-bottom: 0;">
            <div class="sign">
                <a href="SignServlet?method=getSign">
                    <div class="courses">
                        <p class="tz">签到</p>
                    </div>
                </a>
            </div>
            <div class="signInfo">
                <a href="SignServlet?method=getAllSignInfo">
                    <div class="courses">
                        <p class="tz">签到详情</p>
                    </div>
                </a>
            </div>
        </div>
        <div class="main_part">
            <div class="main_part_top">
                <div class="kj">班级</div>
                <div class="more">
                    <a href="TeacherServlet?method=getMyAllClass">MORE+</a>
                </div>
            </div>
            <div class="classes">
                <c:forEach items="${requestScope.myBeanList}" var="item">
                    <a href="TeacherServlet?method=getClass&classId=${item.classId}">
                        <div class="classess" style="margin-top: 0;">
                            <span></span>
                            <div class="tz">${item.className}</div>
                        </div>
                    </a>
                </c:forEach>
            </div>
        </div>
        <div class="main_part" style="float: right;">
            <div class="main_part_top">
                <div class="kj">课程</div>
                <div class="more">
                    <a href="TeacherServlet?method=CourseName">MORE+</a>
                </div>
            </div>
            <div class="course">
                <c:forEach items="${requestScope.courseList}" var="item">
                    <c:if test="${!empty item}">
                        <a href="TeacherServlet?method=CourseInfo&courseId=${item.courseId}">
                            <div class="courses">
                                <span></span>
                                <div class="tz">${item.courseName}</div>
                            </div>
                        </a>
                    </c:if>
                </c:forEach>
            </div>
        </div>
	</div>
	<div class="footer">
		<p style="padding-top: 30px;">软件工程</p>
		<p>Copyright  ©</p>
		<p>http://</p>
	</div>
	<span id="Only" style="display: none;">Home</span>
</body>
</html>