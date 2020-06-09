<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
				<form action="ClassesServlet" method="post">
					<input name="method" value="updateClass" type="hidden" readonly>
					<li>
						<label>班级号：</label><input type="text" value="${requestScope.classes.classId}" name="classId" readonly >
					</li>
					<li>
						<label>班级名称：</label><input type="text" value="${requestScope.classes.className}" name="className">
					</li>
					<li>
						<label>课程一：</label>
						<select name="courseId1">
							<c:if test="${requestScope.classes.courseId1==null || requestScope.classes.courseId1==''}">
								<option value="" selected>当前无课程</option>
							</c:if>
							<c:forEach items="${requestScope.courseList}" var="item">
								<c:if test="${item.courseId==requestScope.classes.courseId1}">
									<option value="${item.courseId}" selected>${item.courseName}</option>
								</c:if>
								<c:if test="${item.courseId!=requestScope.classes.courseId1}">
									<option value="${item.courseId}">${item.courseName}</option>
								</c:if>
							</c:forEach>
						</select>
					</li>
					<li>
						<label>课程二：</label>
						<select name="courseId2">
							<c:if test="${requestScope.classes.courseId2==null  || requestScope.classes.courseId2==''}">
								<option value="" selected>当前无课程</option>
							</c:if>
							<c:forEach items="${requestScope.courseList}" var="item">
								<c:if test="${item.courseId==requestScope.classes.courseId2}">
									<option value="${item.courseId}" selected>${item.courseName}</option>
								</c:if>
								<c:if test="${item.courseId!=requestScope.classes.courseId2}">
									<option value="${item.courseId}">${item.courseName}</option>
								</c:if>
							</c:forEach>
						</select>
					</li>
					<li>
						<label>课程三：</label>
						<select name="courseId3">
							<c:if test="${requestScope.classes.courseId3==null  || requestScope.classes.courseId3==''}">
								<option value="" selected>当前无课程</option>
							</c:if>
							<c:forEach items="${requestScope.courseList}" var="item">
								<c:if test="${item.courseId==requestScope.classes.courseId3}">
									<option value="${item.courseId}" selected>${item.courseName}</option>
								</c:if>
								<c:if test="${item.courseId!=requestScope.classes.courseId3}">
									<option value="${item.courseId}">${item.courseName}</option>
								</c:if>
							</c:forEach>
						</select>
					</li>
					<li>
						<label>课程四：</label>
						<select name="courseId4">
							<c:if test="${requestScope.classes.courseId4==null  || requestScope.classes.courseId4==''}">
								<option value="" selected>当前无课程</option>
							</c:if>
							<c:forEach items="${requestScope.courseList}" var="item">
								<c:if test="${item.courseId==requestScope.classes.courseId4}">
									<option value="${item.courseId}" selected>${item.courseName}</option>
								</c:if>
								<c:if test="${item.courseId!=requestScope.classes.courseId4}">
									<option value="${item.courseId}">${item.courseName}</option>
								</c:if>
							</c:forEach>
						</select>
					</li>
					<li>
						<label>课程五：</label>
						<select name="courseId5">
							<c:if test="${requestScope.classes.courseId5==null  || requestScope.classes.courseId5==''}">
								<option value="" selected>当前无课程</option>
							</c:if>
							<c:forEach items="${requestScope.courseList}" var="item">
								<c:if test="${item.courseId==requestScope.classes.courseId5}">
									<option value="${item.courseId}" selected>${item.courseName}</option>
								</c:if>
								<c:if test="${item.courseId!=requestScope.classes.courseId5}">
									<option value="${item.courseId}">${item.courseName}</option>
								</c:if>
							</c:forEach>
						</select>
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

