<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>我的主页</title>
	<jsp:include page="../../public/base.jsp"/>
	<link rel="stylesheet" href="static/css/stuhome.css">
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
						 <a>班级：${requestScope.classes.className}</a>
					 </li>
				 </ul>
			 </div>
		 </div>
		 <div class="main_part" style="float: right;">
			 <div class="main_part_top">
				 <div class="kj">我的课程</div>
				 <div class="more">
					 <a href="StudentServlet?method=getMyAllCourse">MORE+</a>
				 </div>
			 </div>
			 <div class="main_part_nav">
				 <div class="classes">
					 <c:forEach items="${requestScope.courseList}" var="item">
						 <c:if test="${!empty item}">
							 <a href="pages/student/CourseInfo.jsp">
								 <div class="classess" style="margin-top: 0;">
									 <span></span>
									 <div class="tz">${item.courseName}</div>
								 </div>
							 </a>
						 </c:if>
					 </c:forEach>
				 </div>
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
