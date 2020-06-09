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
			<div class="kj">学生信息</div>
		</div>
		<div class="main_part_nav">
			<ul>
				<form action="StudentServlet" method="post">
					<input type="hidden" name="method" value="updateStu" readonly>
					<input type="hidden" name="id" value="${requestScope.student.id}" readonly>
					<input type="hidden" name="passWd" value="${requestScope.student.passWd}" readonly>
					<li>
						<label>学号：</label><input type="text" value="${requestScope.student.username}" name="username">
					</li>
					<li>
						<label>姓名：</label><input type="text" value="${requestScope.student.studentName}" name="studentName">
					</li>
					<li>
						<label>性别：</label>
						<input type="radio" name="sex" value="男" checked>男
						<input type="radio" name="sex" value="女">女
					</li>
					<li>
						<label>班级：</label>
						<select name="classId">
							<c:if test="${requestScope.student.classId==null || requestScope.student.classId==''}">
								<option value="" selected>当前无课程</option>
							</c:if>
							<c:forEach items="${requestScope.classesList}" var="item">
								<c:if test="${item.classId==requestScope.student.classId}">
									<option value="${item.classId}" selected>${item.className}</option>
								</c:if>
								<c:if test="${item.classId!=requestScope.student.classId}">
									<option value="${item.classId}">${item.className}</option>
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

